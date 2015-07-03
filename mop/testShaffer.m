clc;
close all

% First, plot the two objectives:
x = -1:0.1:8;
y = schaffer2(x);
%plot(x,y(:,1),'.r'); hold on ;plot(x,y(:,2),'.b');


options = gaoptimset('PopulationSize',60,'PlotFcns',@gaplotpareto);

lb = -5;
ub = 10;
exitflag = 1; %  criterio de parada
[x,f,exitflag] = gamultiobj(@schaffer2,1,[],[],[],[],lb,ub,options)

