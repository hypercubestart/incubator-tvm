from __future__ import absolute_import

import json
from json import JSONEncoder
from .topology import Topology

HAGO_LOG_VERSION = 0.1

class Strategy(object):
    def __init__(self, model_hash, topology, bits, thresholds):
        self.model_hash = model_hash
        self.topology = topology
        self.bits = bits
        self.thresholds = thresholds

# TODO(ziheng): consider multiple measure metric in the future: latency, energy, etc 
class MeasureResult(object):
    def __init__(self, sim_acc=None, quant_acc=None, kl_divergence=None):
        self.sim_acc = sim_acc
        self.quant_acc = quant_acc
        self.kl_divergence = kl_divergence

    def __str__(self):
        return 'MeasureResult(sim_acc=' + str(self.sim_acc) + \
                ', quant_acc=' + str(self.quant_acc) + \
                ', kl_divergence=' + str(self.kl_divergence) + ')'

class Measure(object):
    def __init__(self, strategy, result):
        self.version = HAGO_LOG_VERSION
        self.strategy = strategy
        self.result = result


def serialize(obj):
    class Encoder(JSONEncoder):
        def default(self, obj):
            print('serialize: {}'.format(obj))
            if hasattr(obj, '__dict__'):
                return obj.__dict__
            return json.JSONEncoder.default(self, obj)
    return json.dumps(obj, cls=Encoder)


def deserialize(json_str):
    def decode_topology(obj):
        node_conds = obj['node_conds']
        edge_conds = obj['edge_conds']
        return Topology(node_conds, edge_conds)

    def decode_strategy(obj):
        model_hash = obj['model_hash']
        topology = decode_topology(obj['topology'])
        bits = obj['bits']
        thresholds = obj['thresholds']
        return Strategy(model_hash, topology, bits, thresholds)
    
    def decode_result(obj):
        sim_acc = obj['sim_acc']
        quant_acc = obj['quant_acc']
        kl_divergence = obj['kl_divergence']
        return MeasureResult(sim_acc, quant_acc, kl_divergence)
    
    json_data = json.loads(json_str)
    measure = {}
    measure['strategy'] = decode_strategy(json_data['strategy'])
    measure['result'] = decode_result(json_data['result'])
    return measure


def load_from_file(fname):
    records = []
    with open(fname) as fin:
        for json_str in fin:
            record = deserialize(json_str)
            records.append(record)
    return records


def pick_best(fname, key):
    records = load_from_file(fname)
    records.sort(key=lambda rec: getattr(rec['result'], key))
    if key in ['sim_acc', 'quant_acc']:
        return records[-1]
    elif key in ['kl_divergence']:
        return records[0]
    else:
        raise ValueError
