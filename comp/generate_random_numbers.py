
import numpy as np
import random

from params import n, low_bound, up_bound, n_sets, seed

np.random.seed(seed)
random.seed(seed)

# reproducible generated label with random seed
def label():
    return ("%32x" % random.getrandbits(128))[:8]


for k in range(n_sets):
    data = np.random.uniform(low=low_bound, high=up_bound, size=n)
    np.save('comp/data/'+ label(), data)
