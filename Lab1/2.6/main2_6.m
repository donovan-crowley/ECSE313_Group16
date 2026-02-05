clc; clear; close all;

figure(1);
subplot(2, 1, 1);
t1 = linspace(-10*pi, 10*pi, 1000);
y1 = sinc(t1);
plot(t1, y1);

subplot(2, 1, 2);
t2 = linspace(-2, 2, 100);
y2 = (abs(t2) <= 0.5);
plot(t2, y2);

% delay
figure(2);
a1 = 0.8;
a2 = 1.0;
a3 = 1.5;
n = -20:20;
u_n = (n >= 0);
u_n_delay = (n >= 10);

subplot(3, 1, 1);
y = (a1.^n) .* (u_n - u_n_delay);
plot(n, y);

subplot(3, 1, 2);
y = (a2.^n) .* (u_n - u_n_delay);
plot(n, y);

subplot(3, 1, 3);
y = (a3.^n) .* (u_n - u_n_delay);
plot(n, y);

% cos
figure(3);
n = -1:10;
u_n = (n >= 0);

subplot(3, 1, 1);
y = cos((pi / 4) .* n) .* (a1.^n) .* u_n;
plot(n, y);

subplot(3, 1, 2);
y = cos((pi / 4) .* n) .* (a2.^n) .* u_n;
plot(n, y);

subplot(3, 1, 3);
y = cos((pi / 4) .* n) .* (a3.^n) .* u_n;
plot(n, y);

orient('tall');

% INLAB: Submit all three figures, for a total of 8 plots. Also submit the printouts of your Matlab .m-files