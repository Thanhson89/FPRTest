# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 14:03:23 2019

@author: thanh
"""
import random
import numpy as np

file = open("nn1l151015.txt","w")
file.write("Variables\n")


arr=[1, 5, 10, 15]
test=len(arr)
node=np.max(arr)
lb=-1
hb=1
lbw=-10
hbw=10

ran=10

for x in range(node):
    file.write("float32 x" + str(x) + " in ["+str(lb)+ ","+str(hb)+"]")
    if x<node-1:
        file.write(",\n")
    else:
        file.write(";\n\n")
    
file.write("Constants\n")

for x in range(ran):
    for y in range(node):
        w=random.uniform(lbw,hbw)
        file.write("w"+str(x)+str(y)+" = "+ str(w))
        if (x<ran-1) or (y<node-1):
            file.write(",\n")
        else:
            file.write(";\n\n")

file.write("Expressions\n")

for z in range(test):
    for x in range(ran):
        s="exp"+str(z)+str(x)+" rnd32 = max(0,"    
        for y in range(arr[z]):
            s=s+"w"+str(x)+str(y)+"*x"+str(y)
            if (y<arr[z]-1) :
                s=s+"+"
            else:
                s=s+"),\n"
        file.write(s)
            
file.close()