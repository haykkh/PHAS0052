#!/usr/bin/python
# coding: utf8

import csv


l = log("log.run")

t,te,ke,pe,e,temp,p,v,rho = l.get("Time", "TotEng", "KinEng", "PotEng","Enthalpy","Temp","Press","Volume","Density")

ti = [x / 1000000 for x in t]

with open("output.csv", 'wb') as csvfile:
    write = csv.writer(csvfile)
    write.writerow(["Time / ns", "TotEng / Kcal mole⁻¹", "KinEng / Kcal mole⁻¹", "PotEng / Kcal mole⁻¹", "Enthalpy / Kcal mole⁻¹", "Temp / K", "Press / atm", "Volume / Å³", "Density / g cm⁻¹"])
    for a,b,c,d,e,f,g,h,i in zip(ti,te,ke,pe,e,temp,p,v,rho):
        write.writerow([a,b,c,d,e,f,g,h,i])

csvfile.close()

exit()