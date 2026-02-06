clc; clear; close all;

% Function 1 with random values averaging to 0
n = 1:1000;
figure(1);
subplot(2, 1, 1);
sig1 = randn(1, 1000);
plot(n, sig1);
xlabel("n");
ylabel("Random Function 1");
title("Function Averaging to 0");

% Function 2 with random values averaging to 0.2
subplot(2, 1, 2);
sig2 = randn(1, 1000) + 0.2;
plot(n, sig2);
xlabel("n");
ylabel("Random Function 2");
title("Function Averaging to 0.2");

% Find the averages of each function 
figure(2);
ave1 = cumsum(sig1) ./ n;
ave2 = cumsum(sig2) ./ n;


% Put on same plot
plot(n, ave1, 'b-');
hold on;
plot(n, ave2, 'r-');
hold off;
xlabel("n");
ylabel("Random Function Averages");
title("Averages of the Two Random Functions");
subtitle("Blue = Random Function 1      Red = Random Function 2");