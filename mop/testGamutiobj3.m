clc;
close all
FitnessFunction = @simple_multiobjective;

lb = -1.5;
ub = 0;
options = gaoptimset('PlotFcns',{@gaplotpareto,@gaplotscorediversity});
gamultiobj(FitnessFunction,numberOfVariables,[],[],[],[],lb,ub,options);