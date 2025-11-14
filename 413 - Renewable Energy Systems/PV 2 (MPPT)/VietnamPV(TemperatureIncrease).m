close('all')
clear all;
clc;

Tpv=273.15+25;
Irr=520;
Ns=2;

Vpvtmp=[1.48966;
3.64251;
12.297;
26.5703;
28.5725;
29.5842;
30.4668;
31.1772;
31.5647;
32.4686;
33.3296;
34.1044;
34.5347;
35.1586;
35.847;
36.3416;
36.7932;
37.0941;
37.3737]';

% Vpvtmp=(0:0.5:21.84)*2

    for i=1:length(Vpvtmp)
    
            Vpv=Vpvtmp(i);   
            sim('partie1.slx');
            Ipv_sauve(i)=ans.Ipv.Data(length(ans.Ipv.Data));
%             P_sauve(i)=Ipv_sauve(i)*Vpvtmp(i);
    
    
    end 


    hold on;

    figure(1);
    title("Caractéristique I-V")
    xlabel("Tension (V)")
    ylabel("courant (A)")
    plot(Vpvtmp,Ipv_sauve);
Ipv_sauve=Ipv_sauve'
   
    

 
    

hold off;