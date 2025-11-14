close('all')
clear all;
clc;


Vpvtmp=0:0.5:21.84;
Irrtmp=0:200:1000;

Tpv=273.15+25;

Ns=1;
for j=1:length(Irrtmp)
j
    for i=1:length(Vpvtmp)
    
            Vpv=Vpvtmp(i);   
            Irr=Irrtmp(j);
            sim('partie1.slx');
            Ipv_sauve(i)=ans.Ipv.Data(length(ans.Ipv.Data));
            P_sauve(i)=Ipv_sauve(i)*Vpvtmp(i);
    
    
    end 


    hold on;
    figure(1);
    title("Caractéristique I-V")
    xlabel("Tension (V)")
    ylabel("courant (A)")
    plot(Vpvtmp,Ipv_sauve);

    hold on;
    figure(2);
    title("Courbe de puissance en fonction de tension")
    xlabel("Tension (V)")
    ylabel("Puissance (W)")
    plot(Vpvtmp,P_sauve);
    

 
    
end
hold off;