clc; clear; close all;

stockrates = load("stockrates.mat"); 
rate = stockrates.rate; % load in rate


N = length(rate);

y1 = zeros(1, N);
y2 = zeros(1, N);

% 3.4 Equation
for n = 1:N
    if n == 1
        y1(n) = 0.2 * rate(n);
    else
        y1(n) = 0.8 * y1(n-1) + 0.2 * rate(n);
    end
end


% 3.5 Equation
for n = 1:N
    % Handle out-of-bounds values for rates
    if n - 3 < 1
        three_days = 0;
    else
        three_days = rate(n-3);
    end

    if n == 1
        y2(n) = (1/3) * rate(n);
    else
        y2(n) = y2(n-1) + (1/3)*(rate(n) - three_days);
    end
end

figure;
subplot(3, 1, 1);
plot(rate);
title("Original Stock Rates");
ylabel("Rates");
xlabel("Time");
grid on;

subplot(3, 1, 2);
plot(y1);
title("Filtered with Equation 3.4");
ylabel("Rates");
xlabel("Time");
grid on;

subplot(3, 1, 3);
plot(y2);
title("Filtered with Equation 3.5");
ylabel("Rates");
xlabel("Time");
grid on;
