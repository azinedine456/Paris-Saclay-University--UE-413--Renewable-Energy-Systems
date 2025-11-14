clear all;
clc;

r=0.75;
rho=1.20;
b=15;%*pi/180;
J=0.0015;
f=0.001;
s=pi*r.^2;


% parameters battery + MAS
UDC=620;
Ls=0.256;
Lr=0.2395;
Msr=0.236;
Rs=3.36;
Rr=1.09;
kr=1;
vf=230/(2*pi*50);
Ktm=1.5692;
P=2;
B=1;
Vvent=11.2;


vit_syn=50/P*2*pi;
%vitesse a glissement nul (synchrone) de la MAS 
temp=(1:vit_syn/40:vit_syn);
%vecteur des vitesses de rotation de l'éolie,nne
tempv=0:1:14;
%vecteur des vitesses du vent
figure;
hold on;
indl=1;
for j=1:length(tempv)
    vit=tempv(j);

    for i=1:length(temp)
        om=temp(i);
     
        lamb=r*om/vit;   
        lamb1=1/(1/(lamb+0.089*b) - 0.035/((b.^3)+1));
        Cp=0.5*(116/lamb1 - 0.4*(b-5))*exp(-16.5/lamb1);
        Ct=Cp/lamb;
        celc(i)=(0.5*rho*Ct*r*s*vit.^2);

        %on stocke les valeurs de Ct et lambda
%         Cpsv(indl)=Cp;
%         lambsv(indl)=lamb;
%         indl=indl+1;
        
    end
    [cmax(j),indom(j)]=max(celc);
    title("Couple généré sur l'arbre de l'éolienne en fonction de la vitesse du vent")
    xlabel('vitesse de rotation (rad/s)')
    ylabel('Couple (N.M)')

  plot(temp,celc);



end

% ommax=[17.41 37.36 54.62 76.18 94.78]
% cmax=[0.54 2.19 4.93 8.79 13.74]
% 
cmaxfit=7.05028284124124*(10.^-7)*temp.^4	-0.000156712666215844*temp.^3+	0.0133175888044036*temp.^2	-0.344131249021594*temp+	3.25687216572077;

plot(temp(indom),cmax);
cmaxfit=-4.70546620480099*(10.^-8)*temp.^4+	3.49662102291610*(10.^-6)*temp.^3 +	0.00209286380926111*temp.^2	-0.0176104377910828*temp+	0.0300191236909972;

% "Polynome obtenu de basic fitting"
plot(temp,cmaxfit)
hold off;


% figure;
%On trace la courbe de Cp en fonction de TSR (lookup table)

% On utilise sort afin de bien arranger nos lambdas 
% [tmp,indn] = sort(lambsv);
% lambsv2=lambsv(indn);
% Cpsv2=Cpsv(indn);
%on utilise la fonction unique afin d'éviter la répition de plisieurs
%valeurs sur le tracé (donc on elimine les droites vers l'origine)
% [lambsv3,ia,ic] = unique(lambsv2);
% Cpsv3=Cpsv2(ia);

% On trace pour les valeurs positives de Cp
% indp=find(Cpsv3>0);
% lambsv4=lambsv3(indp);
% Cpsv4=Cpsv3(indp);
% plot(lambsv4, Cpsv4);


