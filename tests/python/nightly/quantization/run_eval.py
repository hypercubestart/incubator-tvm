import tvm
from tvm import relay

import numpy as np
import argparse
import os

import mxnet as mx
from tvm import hago
from mxnet import gluon

from common_utils import *

# run entire evaluation for every model strategy in log file
parser = argparse.ArgumentParser()
parser.add_argument("--soundness_check", default=False, action='store_true')
parser.add_argument("--log_file", default="logfile", help="log file with all strategy to eval")
args = parser.parse_args()

batch_size = 32
# target = 'llvm -mcpu=core-avx2'
# ctx = tvm.context(target)
target = 'cuda'
ctx = tvm.gpu()
# best configuration for resnet18_v1
resnet18_bits = [6, 7, 16, 14, 4, 16, 7, 7, 16, 14, 4, 8, 8, 16, 13, 15, 16, 4, 7, 8, 16, 12, 4, 8, 8, 16, 14, 16, 16, 4, 8, 8, 15, 14, 8, 8, 16, 14, 4, 6, 8, 15, 13, 16, 16, 4, 8, 8, 16, 15, 4, 8, 8, 16, 14, 16, 16, 4, 8, 8, 16, 15, 8, 8, 16, 14, 4, 8, 7, 13, 11, 15, 16, 4, 7, 8, 14, 12, 4, 8, 8, 11, 9, 16, 14, 4, 7, 8, 15, 14, 8, 8, 16, 11, 4, 7, 8, 14, 11, 12, 11, 4, 8, 8, 12, 9, 4, 7, 8, 12, 9, 6, 7, 5]

#####################
# Dataset prepartions
#####################

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

def create_hardware():
    from tvm.hago.hardware import OpDesc
    hardware = hago.Hardware()
    # act_dtype = "int32"
    act_dtype = "int16"
    hardware.add_op_desc("add", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("add", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int8", out_dtypes="int8"))
    hardware.add_op_desc("concatenate", OpDesc(in_dtypes="int32", out_dtypes="int32"))
    hardware.add_op_desc("nn.conv2d", OpDesc(in_dtypes="int8", out_dtypes=act_dtype))
    hardware.add_op_desc("nn.relu", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("clip", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("nn.max_pool2d", OpDesc(in_dtypes=act_dtype, out_dtypes=act_dtype))
    hardware.add_op_desc("nn.dropout", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("nn.avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    hardware.add_op_desc("nn.global_avg_pool2d", OpDesc(in_dtypes="float32", out_dtypes="float32"))
    return hardware

###############################################################################
# Load the model
# ----------------
def get_model(model_name):
    gluon_model = gluon.model_zoo.vision.get_model(model_name, pretrained=True)
    img_size = 299 if model_name == 'inceptionv3' else 224
    data_shape = (batch_size, 3, img_size, img_size)
    mod, params = relay.frontend.from_mxnet(gluon_model, {"data": data_shape})
    return mod, params

def main():
    is_per_channel = False
    # val_path = '/home/ubuntu/tensorflow_datasets/downloads/manual/imagenet2012/val.rec'
    val_path = '/home/andy99/.mxnet/datasets/imagenet/rec/val.rec'
    model_name = 'resnet18_v1'
    img_size = 224
    val_data, batch_fn = get_val_data(img_size, val_path, batch_size)

    records = hago.load_from_file(args.log_file)

    with open(f'/home/andy99/logs/mixed_precision/eval/strategy_resnet18_v1_greedy_1-29edges_1000calib_evaluation.log', 'a') as f:
        for r in records:
            mod, params = get_model(model_name)
            graph = hago.prerequisite_optimize(mod['main'], params=params)
            strategy = r.strategy
            # print(fp32_mod)

            hardware = create_hardware()
            quantizer = hago.create_quantizer(graph, hardware, strategy)
            simulated_graph = quantizer.simulate()
            quantized_graph = quantizer.quantize()
            lowered_quantized_graph = relay.qnn.transform.CanonicalizeOps()(tvm.IRModule.from_expr(quantized_graph))
            # hago.inspect_graph_statistic(graph, hardware, strategy, dataset, ctx, target='llvm')
            quantized_func = tvm.IRModule.from_expr(quantized_graph)
            acc = eval_acc(quantized_func, val_data, batch_fn, args, var_name='data', target=target, ctx=ctx)
            channel_or_tensor = "per_channel" if is_per_channel else "per_tensor"
            print("quantized_accuracy", model_name, channel_or_tensor, acc, sep=',')
            f.write(str(acc))
            f.write('\n')
            f.flush()

if __name__ == '__main__':
    main()
