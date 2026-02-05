clc; clear; close all;

% 2.7.1
subplot(2, 2, 1);
n = 0:100;
T = 1/10;
y = sin(2*pi*T*n);
stem(n, y);

% 2.7.2
subplot(2, 2, 2);
n = 0:30;
T = 1/3;
y = sin(2*pi*T*n);
stem(n, y);

% 2.7.3
subplot(2, 2, 3);
n = 0:20;
T = 1/2;
y = sin(2*pi*T*n);
stem(n, y);

% 2.7.4
subplot(2, 2, 4);
n = 0:9;
T = 10/9;
y = sin(2*pi*T*n);
stem(n, y);

% INLAB: Submit a hardcopy of the figure containing all four subplots. Discuss your results. How does the sampled version of the signal with Ts = 1/10 compare to those with Ts = 1/3, Ts = 1/2 and Ts = 10/9?