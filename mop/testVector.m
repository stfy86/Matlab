clc;
close all

FitnessFunction = @(x) vectorized_multiobjective(x);
options = gaoptimset('Vectorized','on','PlotFcns',{@gaplotpareto,@gaplotscorediversity});
gamultiobj(FitnessFunction,numberOfVariables,[],[],[],[],lb,ub,options)

[x,Fval,exitFlag,Output] = ga(FitnessFunction,numberOfVariables);

fprintf('The number of generations was : %d\n', Output.generations);
fprintf('The number of function evaluations was : %d\n', Output.funccount);
fprintf('The best function value found was : %g\n', Fval);