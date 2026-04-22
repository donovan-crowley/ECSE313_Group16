clc; clear; close all;

figure(1);
h_gauss = gaussFilter(7, 1);
H = fftshift(fft2(h_gauss, 32, 32));
omega = linspace(-pi, pi, 32);

mesh(omega, omega, abs(H));
title('Magnitude of Gaussian Filter Frequency Response');
xlabel('\omega_1 (radians)');
ylabel('\omega_2 (radians)');
zlabel('|H_{Gauss}(\omega_1, \omega_2)|');
axis tight;

figure(2);
img_race = double(imread('race.tif'));
img_race_gauss = filter2(h_gauss, img_race);

subplot(1, 2, 1);
image(img_race); colormap(gray(256)); axis image;
title('Original Image');

subplot(1, 2, 2);
image(img_race_gauss); colormap(gray(256)); axis image;
title('Gaussian Filter');


figure(3);
img_noise1 = double(imread('noise1.tif'));
img_noise2 = double(imread('noise2.tif'));

gauss_n1 = filter2(h_gauss, img_noise1);
gauss_n2 = filter2(h_gauss, img_noise2);

median_n1 = medianFilter(img_noise1);
median_n2 = medianFilter(img_noise2);

subplot(1, 3, 1);
image(img_noise1); colormap(gray(256)); axis image;
title('Original Image');

subplot(1, 3, 2);
image(gauss_n1); colormap(gray(256)); axis image;
title('Gaussian Filter');

subplot(1, 3, 3);
image(median_n1); colormap(gray(256)); axis image;
title('Median Filter');



figure(4);
subplot(1, 3, 1);
image(img_noise2); colormap(gray(256)); axis image;
title('Original Image');

subplot(1, 3, 2);
image(gauss_n2); colormap(gray(256)); axis image;
title('Gaussian Filter');

subplot(1, 3, 3);
image(median_n2); colormap(gray(256)); axis image;
title('Median Filter');