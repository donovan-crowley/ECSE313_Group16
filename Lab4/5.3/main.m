clc; clear; close all;

f = -1:.001:1;
T = 1;
fc = 0.45;
N = 20;
fs = 1/(T);

% Butterworth filter
H1 = (1)./(1+(f./fc).^N);

% WIth sample-and-hold pulse width
H2 = (H1).^2 .* abs((sin(f)/(f)));

figure(1);
hold on;
plot(f, H1, 'b-');
plot(f, H2, 'r-');
ylabel('Magnitude (dB)');
xlabel('Frequency (rad/sec)');

title('Butterworth Filter and Sample-and-Hold Response');
grid on;
legend('H1: Butterworth Filter', 'H2: Sample-and-Hold Response');