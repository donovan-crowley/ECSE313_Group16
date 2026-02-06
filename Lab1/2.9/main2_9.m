clc; clear; close all;



[m, n] = meshgrid(-50:50, -50:50); % generate 2d arrays -> mat 101x101

f = 255 * sinc(0.2*m) .* sin(0.2*n); % element wise mult

figure;
mesh(m, n ,f);
xlabel('m'); 
ylabel('n');
zlabel('f(m,n)');
title('Surface Plot of Signal');


figure;
image(f);
colormap(gray(256));
axis image;
title('Grayscale Image');
colorbar;