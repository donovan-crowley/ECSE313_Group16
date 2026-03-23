b0 = 0.3; b1 = 0.24;
a0 = 1;   a1 = -0.9;

w = -pi : pi/10 : pi; 

z_inv = exp(-1j * w); 
H = (b0 + b1 .* z_inv) ./ (a0 + a1 .* z_inv);

mag = abs(H);
pha = angle(H); 

figure;
subplot(2,1,1);
stem(w, mag, 'filled', 'LineWidth', 1); 
grid on;
title('|H(e^{j\omega})| Magnitude Response');
xlabel('\omega'); 
ylabel('Magnitude');

subplot(2,1,2);
stem(w, pha, 'filled', 'LineWidth', 1, 'Color', 'r'); grid on;
title('\angle H(e^{j\omega}) Phase Response');
xlabel('\omega'); 
ylabel('Phase (rad)');