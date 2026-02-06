clc; clear; close all;

figure(1);
% Show discrete-time signal of sin(n/6)
n = 0:2:60;
y = sin(n/6);
subplot(3, 1, 1);
stem(n, y);
ylabel("sin(n/6)");
xlabel("n");
title("Discrete-Time Signal of sin(n/6)");

% Two continuous-time plots of sin(n/6)
% First plot with a step size of 2
n1 = 0:2:60;
z = sin(n1/6);
subplot(3, 1, 2);
plot(n1, z);
ylabel("sin(n/6)");
xlabel("n");
title("Continuous-Time Signal of sin(n/6) Using a Step Size of 2");

% Second plot with a step size of 10
n2 = 0:10:60;
w = sin(n2/6);
subplot(3, 1, 3);
plot(n2, w);
ylabel("sin(n/6)");
xlabel("n");
title("Continuous-Time Signal of sin(n/6) Using a Step Size of 10");

% Second exercise on figure 2
figure(2);
n = 1:100;
output1 = zeros(size(n));
output2 = zeros(size(n));

% Call on function integ1 for sin2(5t) function from 0 to 2pi
for i = 1:length(n)
    output1(i) = integ1(n(i));
end

% Call on function integ2 for sin2(5t) function from 0 to 1
for i = 1:length(n)
    output2(i) = integ2(n(i));
end

% First plot using integ1
subplot(2, 1, 1);
plot(n, output1);
ylabel("(sin(5t))^2");
xlabel("Time (s)");
title("Function I From 0 To 2π")


% Second plot using integ2
subplot(2, 1, 2);
plot(n, output2);
ylabel("e^t");
xlabel("Time (s)");
title("Function J From 0 To 1");