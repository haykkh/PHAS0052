# generates LAMMPS data coordinates

from math import *
import random
L = 40
N=20
for i in range(0,N):
    print(str(i+1)+' 2 '+
         str(round(2+(L * random.random()),5))+' '+str(round(2+(L * random.random()),5)) + ' ' + str(round(2+(L * random.random()),5)))

