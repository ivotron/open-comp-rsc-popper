
import sys, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as pl

import random
import numpy as np

random.seed(20180305184211)

# reproducible generated label with random seed
def label():
    return ("%32x" % random.getrandbits(128))[:8]

fpath = sys.argv[1]
data = np.load(fpath)

pl.plot(data)
pl.savefig('comp/data/' + label() + '.png')
