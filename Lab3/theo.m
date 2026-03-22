% Theoretical frequency response
% these are equal to the fig blue peaks
%% from peak 2 onward
dw = 0.01;
w = -pi:dw:pi;

H = (0.3 + 0.24*exp(-1j*w)) ./ (1 - 0.9*exp(-1j*w));

w_test = [pi/16, pi/8, pi/4];
H_test = (0.3 + 0.24*exp(-1j*w_test)) ./ (1 - 0.9*exp(-1j*w_test));

fprintf('Frequency | Theoretical |H|\n');
fprintf('pi/16     | %.4f\n', abs(H_test(1)));
fprintf('pi/8      | %.4f\n', abs(H_test(2)));
fprintf('pi/4      | %.4f\n', abs(H_test(3)));