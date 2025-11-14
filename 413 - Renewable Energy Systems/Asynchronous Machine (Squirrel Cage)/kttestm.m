clear all;
clc;


P=2;
J=4.5E-2;
f=6.32E-4;
Ls=0.256;
Lr=0.2395;
Msr=0.236;
Rs=3.36;
Rr=1.09;


Vmax=220*sqrt(2);
fs=50;

tempwmec=[138:1:157];
% 1350 RPM



for i=1:length(tempwmec)
    wmec=tempwmec(i);
     sim('KTtest.slx');
     couple_sauve(i)=ans.Couple(length(ans.Couple));
     wr(i)=2*pi*fs-P*tempwmec(i);
     Kt(i)=couple_sauve(i)/wr(i);
end
Ktm=mean(Kt)
