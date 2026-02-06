clc; clear; close all;

% 2.7.1 - Ts = 1/10, n = (0, 100)
subplot(2, 2, 1);
n = 0:100;
T = 1/10;
y = sin(2*pi*T*n);
stem(n, y);
xlabel("n");
ylabel("f(Tsn)");
title("Discrete-Time Signal of Sine with Ts = 1/10");

% 2.7.2 - Ts = 1/3, n = (0, 30)
subplot(2, 2, 2);
n = 0:30;
T = 1/3;
y = sin(2*pi*T*n);
stem(n, y);
xlabel("n");
ylabel("f(Tsn)");
title("Discrete-Time Signal of Sine with Ts = 1/3");

% 2.7.3 - Ts = 1/2, n = (0, 20)
subplot(2, 2, 3);
n = 0:20;
T = 1/2;
y = sin(2*pi*T*n);
stem(n, y);
xlabel("n");
ylabel("f(Tsn)");
title("Discrete-Time Signal of Sine with Ts = 1/2");

% 2.7.4 - Ts = 10/9, n = (0, 9)
subplot(2, 2, 4);
n = 0:9;
T = 10/9;
y = sin(2*pi*T*n);
stem(n, y);
xlabel("n");
ylabel("f(Tsn)");
title("Discrete-Time Signal of Sine with Ts = 10/9");