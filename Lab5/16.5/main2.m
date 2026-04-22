clc; clear; close all;

alpha1 = 5; beta1 = 4;
alpha2 = 10; beta2 = 9;
sigma = 1;
N = 5;

img = double(imread('blur.tif'));

h = gaussFilter(N, sigma);

delta = zeros(N, N);
delta(3,3) = 1; 
h_unsharp = alpha1 * delta - beta1 * h;

H = fftshift(fft2(h_unsharp, 32, 32));
omega = linspace(-pi, pi, 32);

figure;
mesh(omega, omega, abs(H));
title(['Unsharp Mask Filter Frequency Response (\alpha=', num2str(alpha1), ', \beta=', num2str(beta1), ')']);
xlabel('\omega_1'); ylabel('\omega_2'); zlabel('|H(\omega_1, \omega_2)|');

figure;
img_filtered1 = filter2(h_unsharp, img);

h_unsharp2 = alpha2 * delta - beta2 * h;
img_filtered2 = filter2(h_unsharp2, img);

subplot(1,3,1); image(img); colormap(gray(256)); axis image; title('Original Image');
subplot(1,3,2); image(img_filtered1); colormap(gray(256)); axis image; title('\alpha=5 and \beta=4');
subplot(1,3,3); image(img_filtered2); colormap(gray(256)); axis image; title('\alpha=10 and \beta=9');