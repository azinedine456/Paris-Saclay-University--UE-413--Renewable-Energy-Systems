clear all;
clc;
J=4.50*10.^-2;
f=6.32*10.^-4;
P=2;
Ls=0.256;
Lr=0.2395;
Msr=0.236;
Rs=3.36;
Rr=1.09;
vf=230*sqrt(2)/50;
Ktm=1.5692;


VDC=1000;
fd=1*10^3;
Td=1/fd;
VP=VDC;


t5m=0.2;
wnm=5/t5m;
ceff=1;


Kpm=2*wnm*J*ceff-f
Kim=J*((wnm).^2)/Kpm