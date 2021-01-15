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
    super(RandomMPTuner, self).__init__(space, objective, max_trials)

    self.bits = bits
  def has_next(self):
    return True

  def next_trials(self):
    if self.best_measure is None:
      bits = self.bits
    else:
      bits = self.best_measure.strategy.bits
    trials = []
    for _ in range(10):
      i = np.random.randint(0, len(self.bits))
      trials.append(self.bits[0:i] + [4] + self.bits[i + 1:])

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
    super(RandomMPTuner, self).__init__(space, objective, max_trials)

    self.bits = bits
  def has_next(self):
    return True

  def next_trials(self):
    
    return 

  def update(self, measures):
    self._update_best_measure(measures)

  def _update_best_measure(self, measures):
    from .common_utils import best_measure
    self.best_measure = best_measure(measures, self.measure_kind)

    # print('measures')
    # for m in measures:
    #     print(m)
    # print('best_measure')
    print(self.best_measure)
    return self.best_measure

