close('all')
clear all;
clc;

alpharange=0.01: 0.01 : 1;
Vpvtmp=0:0.5:21.84
temptmp=[-25 0 25 50]+273.15;



Irr=1000;

for j=1:length(temptmp)
j
    for i=1:length(Vpvtmp)
    
            Vpv=Vpvtmp(i);   
            Tpv=temptmp(j);
            sim('pv_seul_etudiant.slx');
            Ipv_sauve(i)=ans.Ipv.Data(length(ans.Ipv.Data));
            P_sauve(i)=Ipv_sauve(i)*Vpvtmp(i);
    
    
    end 

    indi=find(P_sauve>=0);
    indp=find(Ipv_sauve>=0);

    hold on;
    figure(1);
    title("Caractéristique I-V")
    xlabel("Tension (V)")
    ylabel("courant (A)")
    plot(Vpvtmp(indi),Ipv_sauve(indi));

    hold on;
    figure(2);
    title("Courbe de puissance en fonction de tension")
    xlabel("Tension (V)")
    ylabel("Puissance (W)")
    plot(Vpvtmp(indp),P_sauve(indp));
    

 
    
end
hold off;