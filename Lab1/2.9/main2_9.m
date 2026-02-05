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



% INLAB: Hand in hardcopies of your mesh plot and image. For which applications do you think the surface plot works better? When would you prefer the image?
% The surface plot allows for closer inspection of the 3d structure and
% characteristics like smoothness and bandwidth. Furthermore, it allows for
% easy comparison between seperate but closely related signals. The image
% plot allows for quick pattern detection and scale better than surface
% plots.