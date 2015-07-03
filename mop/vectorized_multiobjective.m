 function scores = vectorized_multiobjective(pop)
     popSize = size(pop,1); % Population size
     numObj = 2;  % Number of objectives
     % initialize scores
     scores = zeros(popSize, numObj);
     % Compute first objective
     scores(:,1) = (pop + 2).^2 - 10;
     % Compute second obective
     scores(:,2) = (pop - 2).^2 + 20;