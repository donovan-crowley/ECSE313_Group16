clc; clear; close all;

t = linspace(-100*pi, 100*pi, 1000);
y = sinc(t/pi);
plot(t, y);


minimum = find_min(t);
fprintf("This is the minimum of sinc(t) signal: %0.5f\n", minimum);
maximum = find_max(t);
fprintf("This is the maximum of sinc(t) signal: %0.5f\n", maximum);
energy = find_energy(t);
fprintf("This is the energy of the sinc(t) signal: %0.5f\n", energy);

% INLAB: Submit a plot of the function, and the computed values of the min, max, and energy. Explain your choice of the sampling period, and the starting and ending times. Also, submit the code for your energy function.