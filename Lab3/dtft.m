%nh for 313


function X = DTFT(x, n0, dw)
    w = -pi:dw:pi;         
    N = length(x);
    n = n0:(n0 + N - 1);    
    X = x * exp(-1j * n' * w);   
end


dw = 0.01;  % frequency resolution

%% x(n) = delta(n)
x1 = [1];   n0_1 = 0;
X1 = DTFT(x1, n0_1, dw);
w = -pi:dw:pi;

figure(1);
subplot(2,1,1); plot(w, abs(X1));
title('|X(e^j^\omega)| for \delta(n)'); xlabel('\omega'); ylabel('Magnitude');
subplot(2,1,2); plot(w, angle(X1));
title('\angle X(e^j^\omega) for \delta(n)'); xlabel('\omega'); ylabel('Phase (rad)');

%% x(n) = delta(n-5)
x2 = [0 0 0 0 0 1];   n0_2 = 0;   % or x2=[1], n0_2=5
X2 = DTFT(x2, n0_2, dw);

figure(2);
subplot(2,1,1); plot(w, abs(X2));
title('|X(e^j^\omega)| for \delta(n-5)'); xlabel('\omega'); ylabel('Magnitude');
subplot(2,1,2); plot(w, angle(X2));
title('\angle X(e^j^\omega) for \delta(n-5)'); xlabel('\omega'); ylabel('Phase (rad)');

%% x(n) = (0.5)^n * u(n), for n = 0 to 50
n3 = 0:50;
x3 = (0.5).^n3;   n0_3 = 0;
X3 = DTFT(x3, n0_3, dw);

figure(3);
subplot(2,1,1); plot(w, abs(X3));
title('|X(e^j^\omega)| for (0.5)^n u(n)'); xlabel('\omega'); ylabel('Magnitude');
subplot(2,1,2); plot(w, angle(X3));
title('\angle X(e^j^\omega) for (0.5)^n u(n)'); xlabel('\omega'); ylabel('Phase (rad)');



%% Use IR from 4.2.2
n_h = 0:50;
h = zeros(1, length(n_h));
x_imp = [1 zeros(1, 50)];

for n = 1:length(n_h)
    x_curr = x_imp(n);
    x_prev = (n > 1) * x_imp(max(n-1,1));
    y_prev = (n > 1) * h(max(n-1,1));
    h(n) = 0.9*y_prev + 0.3*x_curr + 0.24*x_prev;
end

%% Take DTFT of the impulse response
dw = 0.01;
w = -pi:dw:pi;
H = DTFT(h, 0, dw);   

figure;

subplot(3,1,1);
stem(n_h, h);
title('Impulse Response');
xlabel('n'); ylabel('h(n)');
grid on;

subplot(3,1,2);
plot(w, abs(H));
title('Magnitude Response');
xlabel('\omega'); ylabel('|H|');
grid on;

subplot(3,1,3);
plot(w, angle(H));
title('Phase Response');
xlabel('\omega'); ylabel('Phase (rad)');
grid on;