# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 14:03:23 2019

@author: thanh
"""
import random
import numpy as np

file = open("nn4l3vsin.txt","w")
file.write("Variables\n")


lno=[3, 3, 3]
lay=len(lno)
test=lay
node=lno[0]
lb=-1
hb=1
lbw=-10
hbw=10

ran=10

def layerstring(l,r,n):
    if l==0:
        s="sin("
        for x in range(n[0]):
            s=s+"w"+str(l)+str(x)+str(r)+"*x"+str(x)
            if x<n[0]-1:
                s=s+"+"
            else:
                s=s+")"
    else:
        s="max(0,"
        for x in range(n[l]):
            s=s+"w"+str(l)+str(x)+str(r)+"*"+layerstring(l-1,r,n)
            if x<n[l]-1:
                s=s+"+"
            else:
                s=s+")"
    return s

for x in range(node):
    file.write("float32 x" + str(x) + " in ["+str(lb)+ ","+str(hb)+"]")
    if x<node-1:
        file.write(",\n")
    else:
        file.write(";\n\n")
    
file.write("Constants\n")

for z in range(lay):
    for x in range(lno[z]):
        for y in range(ran):
            w=random.uniform(lbw,hbw)
            file.write("w"+str(z)+str(x)+str(y)+" = "+ str(w))
            if (y==ran-1) and (x==lno[z]-1) and (z==lay-1):
                file.write(";\n\n")
            else:
                file.write(",\n")

file.write("Expressions\n")


for z in range(test):
    for x in range(ran):
        s="exp"+str(z)+str(x)+" rnd32 = " + layerstring(z,x,lno)  
        if (z==test-1) and (x==ran-1):
            s=s+";\n"
        else:
            s=s+",\n"
        file.write(s)
            
file.close()