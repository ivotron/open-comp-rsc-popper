import sys, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as pl
import numpy as np

fpath = sys.argv[1]
data = np.load(fpath)

pl.plot(data)
pl.savefig('comp/data/original.png')
