clear all;

%*******************Parametres liés à l'eolienne
r = 0.75;             % rayon pales
s = pi*r^2;          % Section pales eoiienne
rho = 1.2;           % densite de l'air
b = 15;       % inclinaison des pales
J = 0.0015;        % inertie eolienne seule
f = 0.001;        % frottement eolienne seule
 l=0;
for i=1:1:15
    Vvent=i-1;
    k=0;
  
    for j=1:1:150
        k=k+1;
        l=l+1;
        Omega=j;

        lambda=r*Omega/Vvent;
        lambda1=1/((1/(lambda+0.089*b))-(0.035/(b^3+1)));
        Cp=0.5*(116/lambda1-0.4*(b-5))*exp(-16.5/lambda1);
        Ct=Cp/lambda;
        couple(k,i)=0.5*rho*Ct*r*s*Vvent^2;
      
        vit_turbine(k)=j;
        Ct_graphe(l)=Cp;
        lambda_graphe(l)=lambda;
    end

    [Cmax(i),Omega_cmax(i)]=max(couple(:,i));


end

%%Pour avoir Ct positif et unique en fonction de Lambda 
% figure;
% [temp,indices]=sort(lambda_graphe);
% lambda_graphe2=lambda_graphe(indices);
% Ct_graphe2=Ct_graphe(indices);
% 
% [lambda_graphe3,ia,ic] = unique(lambda_graphe2);
% Ct_graphe3=Ct_graphe2(ia);
% 
% temp=find(Ct_graphe3>0);
% Ct_graphe4=Ct_graphe3(temp);
% lambda_graphe4=lambda_graphe3(temp);
% plot(lambda_graphe4,Ct_graphe4);

hold on;

for i=1:1:15
    plot(vit_turbine(:),couple(:,i))
end

cmax_model(:)=0.0015*Omega_cmax(:).^2-0.00056*Omega+0.0037;
plot(Omega_cmax(:),Cmax(:));
plot(Omega_cmax(:),cmax_model(:));

hold off;



