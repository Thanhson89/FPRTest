# -*- coding: utf-8 -*-

import matplotlib.pyplot as plt
import random
import numpy as np
x = np.zeros(4)


y=  np.zeros(10)

for i in range(4):
    x[i]=i+1

x=[1,5,10,15]

plt.plot(x,compare)
plt.title("Absolute error (exact)")
plt.xlabel("Number of variables")
plt.ylabel("Average error ver 10 random weight");
#plt.savefig('151015sin.png')
