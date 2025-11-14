clear all;
%********************************************************************
%                             Batterie                              %
%********************************************************************
soc_0=100; % State Of Charge (etat de charge) de la batterie
eff=0.99;  % Rendement de la batterie
c_bat=9.3; % Capacite de la batterie
Imax=30;
Vmax=3.65;
Vmin=2.3;
%ri en fonction du soc
load('ri.mat');
load('soc_ri.mat');

%rl en fonction du soc
load('rl.mat');
load('soc_rl.mat');

%rs en fonction du soc
load('rs.mat');
load('soc_rs.mat');
      
%cs en fonction du soc
load('cs.mat');
load('soc_cs.mat');

%cl en fonction du soc
load('cl.mat');
load('soc_cl.mat');

%voc en fonction du soc
load('voc.mat');
load('soc_voc.mat');




