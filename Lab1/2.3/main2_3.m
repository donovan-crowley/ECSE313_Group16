clc; clear; close all;

% Exercise 1
% Show discrete-time signal of sin(n/6)

n = 0:2:60;
y = sin(n/6);
subplot(3, 1, 1)
stem(n,y)

% Exercise 2
% Two continuous-time plots of sin(t/6)
n1 = 0:2:60;
z = sin(n1/6);
subplot(3, 1, 2)
plot(n1, z)
n2 = 0:10:60;
w = sin(n2/6);
subplot(3, 1, 3)
plot(n2, w)
%}

n = 1:100;
output1 = zeros(size(n));
output2 = zeros(size(n));

for i = 1:length(n)
    output1(i) = integ1(n(i));
end

for i = 1:length(n)
    output2(i) = integ2(n(i));
end

subplot(2, 1, 1);
plot(n, output1, 'b-', 'LineWidth', 1.5);
subplot(2, 1, 2);
plot(n, output2, 'b-', 'LineWidth', 1.5);

% INLAB: Hand in your calculations of these two integrals. Show all work. 
% INLAB: Submit a hard copy of the plots of the discrete-time function and two continuous-time functions. Label them with the title command, and include your names. Comment on the accuracy of each of the continuous time plots.
% INLAB:  Submit plots of I (N) and J (N) versus N . Use the subplot command to put both plots on a single sheet of paper. Also submit your Matlab code for each function. Compare your results to the analytical solutions from the "Analytical Calculation" (Section 2.3.1: Analytical Calculation) section. Explain why I(5) = I(10) = 0.