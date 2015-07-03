clc;
close all
%d = 10; %DIMENSIONMAXIMA
%a = 1;  %alfa maxima
%r = 2;  %maximo rango 
%lb= [1 1 0 1];
%ub= [5 d a r];
%numberOfVariables=4;

A = []; b = [];
Aeq = []; beq = [];
lb = 1;
ub = 5;



FitnessFunction = @simple;
options = gaoptimset('PlotFcns',{@gaplotpareto,@gaplotscorediversity});
[x,fval] = gamultiobj(FitnessFunction,numberOfVariables,A,b,Aeq,beq,lb,ub, options);

x
fval
%c = fval(1:end,1) .* fval(1:end,2)

%m = max(c) % maximo producto

%[fila,col]=find(c==max(fval(1:end,1) .* fval(1:end,2)))