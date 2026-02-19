clc; clear; close all;

figure;
n = -10:20;
func1 = (n == 0) - (n == 5); % dirac delta functions
func2 = (n >= 0) - (n >= 11); % unit step functions

% Input \delta(n) - \delta(n-5)
subplot(2, 3, 1);
stem(n, func1);
title("Input of \delta(n) - \delta(n-5)");
xlabel("n");
ylabel("f[n]");
grid on;

% Integrator of \delta(n) - \delta(n-5)
subplot(2, 3, 2);
func1_integrate = integrator(func1);
stem(n, func1_integrate);
title("Integrator of \delta(n) - \delta(n-5)");
xlabel("n");
ylabel("f[n]");
grid on;


% Differentiator of \delta(n) - \delta(n-5)
subplot(2, 3, 3);
func1_diff = differentiator(func1);
stem(n, func1_diff);
title("Differentiator of \delta(n) - \delta(n-5)");
xlabel("n");
ylabel("f[n]");
grid on;

% Input u(n) - u(n-11)
subplot(2, 3, 4);
stem(n, func2);
title("Input of u(n) - u(n-11)");
xlabel("n");
ylabel("f[n]");
grid on;

% Integrator of u(n) - u(n-11)
subplot(2, 3, 5);
func2_integrate = integrator(func2);
stem(n, func2_integrate);
title("Integrator of u(n) - u(n-11)");
xlabel("n");
ylabel("f[n]");
grid on;

% Differentiator of u(n) - u(n-11)
subplot(2, 3, 6);
func2_diff = differentiator(func2);
stem(n, func2_diff);
title("Differentiator of u(n) - u(n-11)");
xlabel("n");
ylabel("f[n]");
grid on;