clc;
close all

A = []; b = [];
Aeq = []; beq = [];
lb = -1.5;
ub = 0;
FitnessFunction = @simple_multiobjective;
options = gaoptimset('PlotFcns',{@gaplotpareto,@gaplotscorediversity});
[x,fval] = gamultiobj(FitnessFunction,numberOfVariables,A,b,Aeq,beq,lb,ub, options);

x
fval
c = fval(1:end,1) .* fval(1:end,2)

m = max(c) % maximo producto

[fila,col]=find(c==max(fval(1:end,1) .* fval(1:end,2)))

