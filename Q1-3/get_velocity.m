function [root] = get_velocity(a, lm, lt)

% Input Parameters
% a: activation (between 0 and 1)
% lm: normalized length of muscle (contractile element)
%  lt: normalized length of tendon (series elastic element)

% Output
% root: normalized lengthening velocity of muscle (contractile element)

root = fzero(fun,x0)   % tries to find a point x where fun(x) = 0. This solution is where fun(x) changes sign—fzero cannot find a root of a function such as x^2.


% damping coefficient (see damped model in Millard et al.)
beta = 0.1;

% WRITE CODE HERE TO CALCULATE VELOCITY


end






