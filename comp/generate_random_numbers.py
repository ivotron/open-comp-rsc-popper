
import numpy as np
import random

from params import n, low_bound, up_bound, n_sets, seed

np.random.seed(seed)
random.seed(seed)


for k in range(n_sets):
    data = np.random.uniform(low=low_bound, high=up_bound, size=n)
    np.save('comp/data/original-set-' + str(k), data)
