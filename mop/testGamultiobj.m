clc;
close all


FitnessFunction = @simple_multiobjective;
numberOfVariables = 1;
[x,fval] = gamultiobj(FitnessFunction,numberOfVariables);
size(x)
size(fval)

x
fval


c = max(fval(1:end,1) .* fval(1:end,2)) % maximo producto