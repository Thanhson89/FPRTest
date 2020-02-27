# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 23:29:02 2019

@author: thanh
"""

# -*- coding: utf-8 -*-

import matplotlib.pyplot as plt
import random
import numpy as np

lay=3

x = np.zeros(lay)


y=  np.zeros(10)

for i in range(lay):
    x[i]=i+1

plt.plot(x,compare)
plt.title("Absolute error (exact) - 3 node each layer")
plt.xlabel("Number of layer")
plt.ylabel("Average error ver 10 random weight");
plt.savefig('3lay3var.png')
