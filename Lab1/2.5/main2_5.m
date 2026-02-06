%clc; clear; close all;

% Sinc function
t = -10000:0.01:10000;
y = sinc(t/pi);
plot(t, y);
xlabel("Time (s)");
ylabel("sinc(t/π)")
title("Sinc Function Graph")

% Call find_min function and print value
minimum = find_min(t);
fprintf("Minimum of sinc(t) signal: %0.5f\n", minimum);

% Call find_max function and print value
maximum = find_max(t);
fprintf("Maximum of sinc(t) signal: %0.5f\n", maximum);

% Call find_energy function and print value
energy = find_energy(t);
fprintf("Energy of the sinc(t) signal: %0.5f\n", energy);