from .search import Tuner
from .record import MeasureKind

import numpy as np

def best_measure_mp(measures, kind):
  def compare_key(m):
    key = MeasureKind.enum_to_str(kind)
    attr = getattr(m.result, key)
    nbit = sum(m.strategy.bits)
    # percentage of accuracy retained from int16-activation quantization - percentage of (sum of bits) from int16 activation
    # TODO: better weighted sum
    return (attr - nbit / 1165 / 30)
  return max(measures, key=compare_key)

class RandomMPTuner(Tuner):
  """
  Randomly select subset of bits to drop to 4 bits with Binomial Distribution.

  Should be initialized with best bit configuration for int16 activation
  """
  def __init__(self, space, objective, bits, max_trials, p=0.05):
    super(RandomMPTuner, self).__init__(space, objective, max_trials)

    self.bits = bits
    self.p = p
  def has_next(self):
    return True

  def next_trials(self):
    # generate array of 0s and 1s of len(self.bits), with probability
    # each index is 1 = self.p
    drop_indices = np.random.binomial(1, self.p, (len(self.bits, )))
    mask_array = np.ma.array(self.bits, mask=drop_indices)
    return [mask_array.filled(fill_value = 4).tolist()]

  def update(self, measures):
    self._update_best_measure(measures)

  def _update_best_measure(self, measures):
    old_measure = self.best_measure
    if self.best_measure is None:
        self.best_measure = best_measure_mp(measures, self.measure_kind)
    else:
        temp = [m for m in measures]
        temp.append(self.best_measure)
        self.best_measure = best_measure_mp(temp, self.measure_kind)

    print('measures')
    for m in measures:
        print(m)
    print('best_measure')
    print(self.best_measure)
    return self.best_measure

class RandomSingleMPTuner(Tuner):
  """
  Randomly select single bit to drop to 4 bits from previous best_measure.

  Should be initialized with best bit configuration for int16 activation
  """
  def __init__(self, space, objective, bits, max_trials):
    super(RandomSingleMPTuner, self).__init__(space, objective, max_trials)

    self.bits = bits
  def has_next(self):
    return True

  def next_trials(self):
    if self.best_measure is None:
      bits = self.bits
    else:
      bits = self.best_measure.strategy.bits
    trials = []
    for _ in range(20):
      i = np.random.randint(0, len(self.bits))
      trials.append(self.bits[0:i] + [4] + self.bits[i + 1:])
    return trials

  def update(self, measures):
    self._update_best_measure(measures)

  def _update_best_measure(self, measures):
    old_measure = self.best_measure
    if self.best_measure is None:
        self.best_measure = best_measure_mp(measures, self.measure_kind)
    else:
        temp = [m for m in measures]
        temp.append(self.best_measure)
        self.best_measure = best_measure_mp(temp, self.measure_kind)

    # print('measures')
    # for m in measures:
    #     print(m)
    print('best_measure')
    print(self.best_measure)
    return self.best_measure

class GreedyMPTuner(Tuner):
  """
  In each iteration, set the edge with the least impact on accuracy to 4

  Should be initialized with best bit configuration for int16 activation
  """
  def __init__(self, space, objective, bits, max_trials):
    super(GreedyMPTuner, self).__init__(space, objective, max_trials)

    self.bits = bits
  def has_next(self):
    return True

  def next_trials(self):
    trials = []
    prev_best = self.bits if self.best_measure is None else self.best_measure.strategy.bits
    for i in range(len(prev_best)):
      if prev_best[i] != 4:
        trials.append(prev_best[:i] + [4] + prev_best[i+1:])
    return trials

  def update(self, measures):
    # only output top 10 measures
    self._update_best_measure(measures)

  def _update_best_measure(self, measures):
    from .record import best_measure
    self.best_measure = best_measure(measures, self.measure_kind)

    # print('measures')
    # for m in measures:
    #     print(m)
    print('best_measure')
    print(self.best_measure)
    return self.best_measure

  def _measure(self, bits_list):
    from . import quantize as qtz
    from .. import relay
    from .threshold import threshold_estimate
    from .record import Strategy, Measure
    result = []
    for bits in bits_list:
      thresholds = threshold_estimate(self.graph, self.topology, self.stats, bits)
      quantizer = qtz.Quantizer(self.graph, self.hardware, self.topology, bits, thresholds)
      sgraph = quantizer.simulate()
      qgraph = quantizer.quantize()
      # print('original graph')
      # print(self.graph)
      # print('simulated graph')
      # print(sgraph)
      # print('quantized graph')
      # print(qgraph)
      # lowered_qgraph = relay.qnn.transform.CanonicalizeOps()(tvm.IRModule.from_expr(qgraph))
      # print('lowered quantized graph')
      # print(lowered_qgraph)
      # raise ValueError

      runtime = relay.create_executor("graph", ctx=self.ctx, target=self.target).evaluate(qgraph)
      input_keys = [str(param.name_hint) for param in qgraph.params]
      outputs = []
      for batch_id, batch in enumerate(self.dataset):
          inputs = {}
          for key in input_keys:
              assert key in batch
              inputs[key] = batch[key]
          out = runtime(**inputs)
          outputs.append(out)
      measure_result = self.measure_func(self.graph, self.dataset, outputs, self.ctx, self.target)
      strategy = Strategy(self.model_hash, bits, thresholds)
      result.append(Measure(strategy, measure_result))
    return result

  # def _write_to_file(self, fout, measures):
  #   def compare_key(m):
  #     key = MeasureKind.enum_to_str('accuracy')
  #     attr = getattr(m.result, key)
  #     # percentage of accuracy retained from int16-activation quantization - percentage of (sum of bits) from int16 activation
  #     # TODO: better weighted sum
  #     return attr
  #   temp = sorted(measures, key=compare_key, reverse=True)
  #   # print top 10
  #   from .record import serialize
  #   for m in temp[:10]:
  #     fout.write(serialize(m))
  #     fout.write('\n')


