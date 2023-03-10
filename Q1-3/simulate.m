function simulate(T, f0M, resting_length_muscle, resting_length_tendon, RelTol, AbsTol)

% Input Parameters
% T: simulation time (seconds)
% f0M: maximum isometric force
% resting_length_muscle: actual length (m) of muscle (CE) that corresponds to normalized length of 1
% resting_length_tendon: actual length of tendon (m) that corresponds to normalized length of 1

%%% TASK 1
muscle_model = HillTypeMuscle;
muscle_model.resting_length_muscle = resting_length_muscle;
muscle_model.resting_length_tendon = resting_length_tendon;
muscle_model.f0M = f0M;
muscle_tendon_total_length = resting_length_muscle + resting_length_tendon;

%%% TASK 2

    function [vm] = nested_velocity(time, norm_lm)

        norm_lt = norm_tendon_length(muscle_model, muscle_tendon_total_length, norm_lm);
        
        if time < 0.5
                a = 0;
            else
                a = 1;
        end

        vm = get_velocity(a, norm_lm, norm_lt);

    end

%%% TASK 3 xdot = vm
% the outputs of ode45 must be named "time" and "norm_lm"
y0 = 1;
t0 = 0;
tf = T;
tspan = [t0 tf];

opts = odeset('RelTol', RelTol, 'AbsTol', AbsTol);
[time, norm_lm] = ode45(@nested_velocity, tspan, y0, opts);

%%

%%% TASK 4
% save the estimated forces in a vector called "forces"

forces = zeros(1,length(norm_lm));

for n = 1:1:length(norm_lm)
    forces(n) = get_force(muscle_model, muscle_tendon_total_length, norm_lm(n));
end

%%%% Do not alter the rest (it should not be needed) %%%%%%
norm_lm = norm_lm * resting_length_muscle;

% Plot results
figure()
LineWidth = 1.5;
FontSize = 12;

subplot(2,1,1)
plot(time, norm_lm, 'LineWidth', LineWidth)
xlabel('Time (s)')
ylabel('Normalized CE Length (m)')
set(gca,'FontSize', FontSize)

subplot(2,1,2)
plot(time, forces, 'LineWidth', LineWidth)
xlabel('Time (s)')
ylabel('CE Tension (N)')
set(gca,'FontSize', FontSize)
end