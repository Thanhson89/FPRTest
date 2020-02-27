# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 14:58:38 2019

@author: thanh
"""
from pathlib import Path
import numpy as np

node=3
lb=-1
hb=1
lbw=-10
hbw=10
ran=10


file=open("4l3v.txt","r")

i=0
x=0
y=0
result=np.zeros((node,ran))
while (i<ran*node):
    s=file.readline()
    l=s.split(" ")
    if (l[0]=="Absolute"):
        result[int(i/ran),i % ran]=float(l[3])
        i=i+1
        print(i)

compare = np.mean(result, axis=1)
