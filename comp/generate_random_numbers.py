
import numpy as np
import sys, yaml, random

prm = yaml.load(open(sys.argv[1]))

np.random.seed(prm['seed'])
random.seed(prm['seed'])


for k in range(prm['n_sets']):
    data = np.random.uniform(low=prm['low_bound'],
                             high=prm['up_bound'],
                             size=prm['n_sets'])
    np.save('comp/data/original-set-' + str(k), data)
