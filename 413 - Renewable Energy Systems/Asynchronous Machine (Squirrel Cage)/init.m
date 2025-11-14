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

vit_syn=fs/P*2*pi
temp=(0:vit_syn/40:vit_syn)

for ind=1: length(temp)

    vit_rad_s=temp(ind);
    sim('Copy_of_MAS_seule_etudiant')
    vit_sauve(ind)=vit_rad_s;
    couple_sauve(ind)=Couple(length(Couple));
    %nous avons seulement besoin du couple (et du courant) au régime permanent
    ic=find(Ia.Time==0.5);
    Ia_sauve(ind)=max(Ia.Data(ic:end));
    ind

end

subplot(2,1,1);
hold on;
title('Caractéristique couple-vitesse')
xlabel('Vitesse de rotation rd/s')
ylabel('Couple N.m')
plot(vit_sauve,couple_sauve)
hold off;

subplot(2,1,2);
hold on;
title('Caractéristique Courant-vitesse')
xlabel('Vitesse de rotation rd/s')
ylabel('Courant(max) A')
 plot(vit_sauve,Ia_sauve)
 hold off;