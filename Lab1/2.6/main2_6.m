clc; clear; close all;

% First figure of sinc and rect
figure(1);

% First plot of sinc(t) from -10pi to 10pi
subplot(2, 1, 1);
t1 = linspace(-10*pi, 10*pi, 1000);
y1 = sinc(t1);
plot(t1, y1);
xlabel("Time (s)");
ylabel("sinc(t)");
title("Sinc Function Graph");

% Second plot of rect(t) from -2 to 2
subplot(2, 1, 2);
t2 = linspace(-2, 2, 100);
y2 = (abs(t2) <= 0.5);
plot(t2, y2);
xlabel("Time (s)");
ylabel("rect(t)");
title("Rect Function Graph");

% Second figure with unit step
figure(2);
a1 = 0.8;
a2 = 1.0;
a3 = 1.5;
n = -20:20;
u_n = (n >= 0);
u_n_delay = (n >= 10);

% a^n (u(n) - u(n-10))
subplot(3, 1, 1);
y = (a1.^n) .* (u_n - u_n_delay);
plot(n, y);
xlabel("n");
ylabel("a^n * (u(n) - u(n-10))");
title("Graph using a = 0.8");

subplot(3, 1, 2);
y = (a2.^n) .* (u_n - u_n_delay);
plot(n, y);
xlabel("n");
ylabel("a^n * (u(n) - u(n-10))");
title("Graph using a = 1.0");

subplot(3, 1, 3);
y = (a3.^n) .* (u_n - u_n_delay);
plot(n, y);
xlabel("n");
ylabel("a^n * (u(n) - u(n-10))");
title("Graph using a = 1.5");

% Third figure with cos
figure(3);
n = -1:10;
u_n = (n >= 0);

% cos((pi/4)n) * a^n * u(n)
subplot(3, 1, 1);
y = cos((pi / 4) .* n) .* (a1.^n) .* u_n;
plot(n, y);
xlabel("n");
ylabel("cos((π*n)/4) * a^n * u(n)");
title("Graph using a = 0.8");

subplot(3, 1, 2);
y = cos((pi / 4) .* n) .* (a2.^n) .* u_n;
plot(n, y);
xlabel("n");
ylabel("cos((π*n)/4) * a^n * u(n)");
title("Graph using a = 1.0");

subplot(3, 1, 3);
y = cos((pi / 4) .* n) .* (a3.^n) .* u_n;
plot(n, y);
xlabel("n");
ylabel("cos((π*n)/4) * a^n * u(n)");
title("Graph using a = 1.5");

orient('tall');

% INLAB: Submit all three figures, for a total of 8 plots. Also submit the printouts of your Matlab .m-files