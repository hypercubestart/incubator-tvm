import os
import argparse

import numpy as np
import mxnet as mx
from mxnet import gluon
import tvm
from tvm import hago
from tvm import relay
from tvm import te
from tvm import autotvm
from tvm import relay
import tvm.relay.testing
from tvm.autotvm.tuner import XGBTuner, GATuner, RandomTuner, GridSearchTuner
from tvm.contrib.utils import tempdir
import tvm.contrib.graph_runtime as runtime
from common_utils import *

import logging
logging.getLogger('autotvm').setLevel(logging.INFO)

parser = argparse.ArgumentParser()
parser.add_argument("--model", default="resnet18_v1", help="model to quantize")
parser.add_argument("--skip_fp32", default=False, action='store_true')
parser.add_argument("--run_all", default=False, action='store_true')
args = parser.parse_args()

device_key = 'nvidia'
target = 'cuda'
ctx = tvm.context(target)

log_dir = "andrew_logs2/"
batch_size = 32

greedy_int16 = [6, 7, 16, 14, 4, 16, 7, 7, 16, 14, 4, 8, 8, 16, 13, 15, 16, 4, 7, 8, 16, 12, 4, 8, 8, 16, 14, 16, 16, 4, 8, 8, 15, 14, 8, 8, 16, 14, 4, 6, 8, 15, 13, 16, 16, 4, 8, 8, 16, 15, 4, 8, 8, 16, 14, 16, 16, 4, 8, 8, 16, 15, 8, 8, 16, 14, 4, 8, 7, 13, 11, 15, 16, 4, 7, 8, 14, 12, 4, 8, 8, 11, 9, 16, 14, 4, 7, 8, 15, 14, 8, 8, 16, 11, 4, 7, 8, 14, 11, 12, 11, 4, 8, 8, 12, 9, 4, 7, 8, 12, 9, 6, 7, 5]
grouped_uniform8 = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
grouped_5convs = [8,8,8,8,8,8,8,8,4,4,8,8,8,8,8,8,8,8,8,8,4,4,8,8,8,8,8,8,4,4,4,4,8,8,8,8,4,4,8,8]

def get_val_data(img_size,
                 rec_val,
                 batch_size,
                 num_workers=4):
    rec_val = os.path.expanduser(rec_val)
    mean_rgb = [123.68, 116.779, 103.939]
    std_rgb = [58.393, 57.12, 57.375]
    def batch_fn(batch, ctx):
        data = gluon.utils.split_and_load(batch.data[0], ctx_list=ctx, batch_axis=0)
        label = gluon.utils.split_and_load(batch.label[0], ctx_list=ctx, batch_axis=0)
        return data, label

    val_data = mx.io.ImageRecordIter(
        path_imgrec         = rec_val,
        preprocess_threads  = num_workers,
        shuffle             = True,
        seed                = 0,
        batch_size          = batch_size,
        resize              = 256,
        data_shape          = (3, img_size, img_size),
        mean_r              = mean_rgb[0],
        mean_g              = mean_rgb[1],
        mean_b              = mean_rgb[2],
        std_r               = std_rgb[0],
        std_g               = std_rgb[1],
        std_b               = std_rgb[2],
    )
    return val_data, batch_fn


def get_model(model_name):
    gluon_model = gluon.model_zoo.vision.get_model(model_name, pretrained=True)
    img_size = 299 if model_name == 'inceptionv3' else 224
    data_shape = (batch_size, 3, img_size, img_size)
    mod, params = relay.frontend.from_mxnet(gluon_model, {"data": data_shape})
    return mod, params, data_shape


# You can skip the implementation of this function for this tutorial.
def tune_tasks(
    tasks,
    measure_option,
    tuner="xgb",
    n_trial=1000,
    early_stopping=None,
    log_filename="tuning.log",
    use_transfer_learning=True,
):
    # create tmp log file
    tmp_log_file = os.path.join(log_dir, log_filename + ".tmp")
    if os.path.exists(tmp_log_file):
        os.remove(tmp_log_file)

    for i, tsk in enumerate(reversed(tasks)):
        prefix = "[Task %2d/%2d] " % (i + 1, len(tasks))

        # create tuner
        if tuner == "xgb" or tuner == "xgb-rank":
            tuner_obj = XGBTuner(tsk, loss_type="rank")
        elif tuner == "xgb_knob":
            tuner_obj = XGBTuner(tsk, loss_type="rank", feature_type="knob")
        elif tuner == "xgb-curve":
            tuner_obj = XGBTuner(tsk, loss_type="rank", feature_type="curve")
        elif tuner == "ga":
            tuner_obj = GATuner(tsk, pop_size=50)
        elif tuner == "random":
            tuner_obj = RandomTuner(tsk)
        elif tuner == "gridsearch":
            tuner_obj = GridSearchTuner(tsk)
        else:
            raise ValueError("Invalid tuner: " + tuner)

        if use_transfer_learning:
            if os.path.isfile(tmp_log_file):
                tuner_obj.load_history(autotvm.record.load_from_file(tmp_log_file))

        # do tuning
        tsk_trial = min(n_trial, len(tsk.config_space))
        tuner_obj.tune(
            n_trial=tsk_trial,
            early_stopping=early_stopping,
            measure_option=measure_option,
            callbacks=[
                autotvm.callback.progress_bar(tsk_trial, prefix=prefix),
                autotvm.callback.log_to_file(tmp_log_file),
            ],
        )

    # pick best records to a cache file
    log_file = os.path.join(log_dir, log_filename)
    autotvm.record.pick_best(tmp_log_file, log_file)
    os.remove(tmp_log_file)


def tune_and_evaluate(mod, params, input_shape, tuning_opt, eval_only=False):
    # extract workloads from relay program
    print("Extract tasks...")
    tasks = autotvm.task.extract_from_program(
        mod, target=target, params=params, ops=(relay.op.get("nn.conv2d"),)
    )

    if not eval_only:
        # run tuning tasks
        print("Tuning...")
        tune_tasks(tasks, **tuning_opt)

    # compile kernels with history best records
    log_file = os.path.join(log_dir, tuning_opt["log_filename"])
    with autotvm.apply_history_best(log_file):
        print("Compile...")
        with tvm.transform.PassContext(opt_level=3):
            lib = relay.build_module.build(mod, target=target, params=params)
        with open("tmp.cu", "w") as f:
            f.write(lib.lib.imported_modules[0].get_source())
        # load parameters
        module = runtime.GraphModule(lib["default"](ctx))
        dtype = "float32"
        data_tvm = tvm.nd.array((np.random.uniform(size=input_shape)).astype(dtype))
        module.set_input("data", data_tvm)

        # evaluate
        print("Evaluate inference time cost...")
        ftimer = module.module.time_evaluator("run", ctx, number=1, repeat=600)
        prof_res = np.array(ftimer().results) * 1000  # convert to millisecond
        print(
            "Mean inference time (std dev): %.2f ms (%.2f ms)"
            % (np.mean(prof_res), np.std(prof_res))
        )

def create_hardware():
    from tvm.hago.hardware import OpDesc
    hardware = hago.Hardware()
    # act_dtype = "int32"
    # act_dtype = "int16"
    act_dtype = "int8"
    #hardware.add_op_desc("add", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    #hardware.add_op_desc("add", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    #hardware.add_op_desc("concatenate", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    #hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int8", out_dtypes="int8"))
    #hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int32", out_dtypes="int32"))
    hardware.add_op_desc("nn.conv2d", OpDesc(in_dtypes="int4", out_dtypes="int32"))
    hardware.add_op_desc("nn.conv2d", OpDesc(in_dtypes="int8", out_dtypes="int32"))
    #hardware.add_op_desc("nn.relu", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    #hardware.add_op_desc("clip", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    #hardware.add_op_desc("nn.max_pool2d", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    #hardware.add_op_desc("nn.dropout", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    #hardware.add_op_desc("nn.avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    #hardware.add_op_desc("nn.global_avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    return hardware

def create_hardware2():
    from tvm.hago.hardware import OpDesc
    hardware = hago.Hardware()
    # act_dtype = "int32"
    act_dtype = "int16"
    # act_dtype = "int8"
    hardware.add_op_desc("add", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("add", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int8", out_dtypes="int8"))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int32", out_dtypes="int32"))
    hardware.add_op_desc("nn.conv2d", OpDesc(in_dtypes="int8", out_dtypes="int32"))
    hardware.add_op_desc("nn.relu", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("clip", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("nn.max_pool2d", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("nn.dropout", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("nn.avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("nn.global_avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    return hardware

def main():
    # val_path = '/home/ubuntu/tensorflow_datasets/downloads/manual/imagenet2012/val.rec'
    # val_path = '~/.mxnet/datasets/imagenet/rec/val.rec'
    val_path = '/home/andrew/.mxnet/datasets/imagenet/rec/val.rec'
    # val_path = '/home/ziheng/datasets1/imagenet/rec/val.rec'
    tuning_option = {
        "tuner": "xgb",
        "n_trial": 1500,
        "early_stopping": 500,
        "measure_option": autotvm.measure_option(
            builder=autotvm.LocalBuilder(timeout=10),
            runner=autotvm.LocalRunner(number=20, repeat=3, timeout=4, min_repeat_ms=150),
        ),
    }
    def use_tensorcore(mod):
        layout_config = relay.transform.LayoutConfig(skip_layers=[0])
        desired_layouts = {'nn.conv2d': ['HWNC', 'default']} 
        with layout_config:
            seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
            with tvm.transform.PassContext(opt_level=3):
                mod = seq(mod)
                # mod = relay.transform.recast(mod, 'int4', 'int32', skip_layers=[0])
                return mod

    if args.run_all:
        models = ['resnet18_v1', 'mobilenet1.0', 'mobilenetv2_1.0']
    else:
        models = [args.model]
    for model_name in models:
        img_size = 299 if model_name == 'inceptionv3' else 224
        val_data, batch_fn = get_val_data(img_size, val_path, batch_size)

        if not args.skip_fp32:
            fp32_mod, params, input_shape = get_model(model_name)
            func = hago.prerequisite_optimize(fp32_mod['main'], params=params)
            log_file = "%s.%s.f32.log" % (device_key, model_name)
            tuning_option['log_filename'] = log_file
            tune_and_evaluate(func, {}, input_shape, tuning_option)
            exit()

        # Quantize
        hardware = create_hardware()
        calib_dataset = get_calibration_dataset(val_data, batch_fn, var_name='data')
        fp32_mod, params, input_shape = get_model(model_name)
        qconfig = hago.qconfig(use_channel_quantize=False,
                               round_scale_to_pot=False,
                               log_file='temp.log')
        quantized_func = quantize_hago(fp32_mod, params, calib_dataset, qconfig, tuner = 'dummy', bits = grouped_uniform8, hardware = hardware, target=target,ctx=ctx)
        quantized_func = relay.qnn.transform.CanonicalizeOps()(quantized_func)
        quantized_func = use_tensorcore(quantized_func)
        with open("quantized_func.relay", "w") as f:
            f.write(quantized_func.astext())
        print(quantized_func)
        log_file = "%s.%s.i8.conv.uniform.log" % (device_key, model_name)
        # log_file = "%s.%s.i4.5.i8.grouped.log" % (device_key, model_name)
        tuning_option['log_filename'] = log_file
        # tuning_option['tuner'] = "xgb-curve"
        tune_and_evaluate(quantized_func, {}, input_shape, tuning_option)

if __name__ == '__main__':
    main()
