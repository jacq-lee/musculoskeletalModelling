function [root] = get_velocity(a, lm, lt)

% Input Parameters
% a: activation (between 0 and 1)
% lm: normalized length of muscle (contractile element)
% lt: normalized length of tendon (series elastic element)

% Output
% root: normalized lengthening velocity of muscle (contractile element)

% WRITE CODE HERE TO CALCULATE VELOCITY

% % damping coefficient (see damped model in Millard et al.)
beta = 0.1;

penn_angle = 0;

fl = force_length_muscle(lm);
fpe = force_length_parallel(lm);
ft = force_length_tendon(lt);

fun_velocity = @(vm) (a*fl*force_velocity_muscle(vm)+fpe+beta*vm)*cos(penn_angle)-ft;

x0 = 0;
root = fzero(fun_velocity,x0);  % tries to find a point x where fun(x) = 0. This solution is where fun(x) changes sign—fzero cannot find a root of a function such as x^2.

end






