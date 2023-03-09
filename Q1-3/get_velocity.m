function [root] = get_velocity(a, lm, lt)

% Input Parameters
% a: activation (between 0 and 1)
% lm: normalized length of muscle (contractile element)
%  lt: normalized length of tendon (series elastic element)

% Output
% root: normalized lengthening velocity of muscle (contractile element)

% WRITE CODE HERE TO CALCULATE VELOCITY
param_fun = @(a,lm,lt,beta,vm,fl) (force_length_tendon(lt)-force_length_parallel(lm)-beta*vm)/(a*fl());
fl_regression = get_muscle_force_length_regression();
fl = feval(fl_regression,lm);

% damping coefficient (see damped model in Millard et al.)
beta = 0.1;

fun = @(vm) param_fun(a,lm,lt,beta,vm,fl);
%fun = @(vm)(force_length_tendon(1.01)-force_length_parallel(1)-0.1*vm)/(1*get_muscle_force_length_regression())

x0 = 0;
root = fzero(fun,x0);  % tries to find a point x where fun(x) = 0. This solution is where fun(x) changes sign—fzero cannot find a root of a function such as x^2.

end






