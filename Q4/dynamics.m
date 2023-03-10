function [x_dot] = dynamics(x, soleus, tibialis)

% Inputs
%  x: state vector (ankle angle, angular velocity, soleus normalized CE length, TA normalized CE length)
% soleus: soleus muscle (HillTypeModel)
% tibialis: tibialis anterior muscle (HillTypeModel)

% Output
% x_dot: derivative of state vector

soleus_activation = 0.05;
tibialis_activation = 0.4;
ankle_inertia = 90;

%WRITE CODE HERE TO IMPLEMENT THE MODEL

soleus_moment_arm = 0.05;
tibialis_moment_arm = 0.03;

% state variables
% x(1) = theta;
% x(2) = thetadot;
% x(3) = norm_lsm; % normalized soleus muscle length
% x(4) = norm_lta; % normalized_ta_muscle_length;

% state equation terms

l_smt = soleus_length(x(1)); % soleus muscle and tendon length
norm_lst = norm_tendon_length(soleus, l_smt, x(3)); % normalized soleus tendon length
torque_sol = soleus.f0M*force_length_tendon(norm_lst)*soleus_moment_arm;

l_tamt = tibialis_length(x(1)); % ta muscle and tendon length
norm_ltat = norm_tendon_length(tibialis, l_tamt, x(4)); % normalized soleus tendon length
torque_ta = tibialis.f0M*force_length_tendon(norm_ltat)*tibialis_moment_arm;


% state equations
x_dot = x;
x_dot(1) = x(2);
x_dot(2) = (torque_sol - torque_ta - gravity_moment(x(1)))/ankle_inertia;
x_dot(3) = get_velocity(soleus_activation, x(3), norm_lst);
x_dot(4) = get_velocity(tibialis_activation, x(4), norm_ltat);

end