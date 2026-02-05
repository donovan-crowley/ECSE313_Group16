clc; clear; close all;

n = 1:1000;
figure(1);
subplot(2, 1, 1);
sig1 = randn(1, 1000);
plot(n, sig1);

subplot(2, 1, 2);
sig2 = randn(1, 1000) + 0.2;
plot(n, sig2);

figure(2);
ave1 = cumsum(sig1) ./ n;
ave2 = cumsum(sig2) ./ n;


plot(n, ave1);
hold on;
plot(n, ave2);
hold off;

% INLAB: Submit your plot of the two signals "sig1" and "sig2". Also submit your plot of the two signals "ave1" and "ave2". Comment on how the average values changes with n. Also comment on how the average values can be used to distinguish between random noise with different means