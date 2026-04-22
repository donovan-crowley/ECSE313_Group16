clc; clear; close all;

A = imread('dark.tif');

figure;
image(A);
colormap(gray(256));
axis('image');
title('Original Image');

figure;
gamma = 2.2;
B = gammCorr(A, gamma);
image(B);
colormap(gray(256));
axis('image');
title(sprintf('Gamma Corrected Image (\\gamma = %.1f) Without Inverse', gamma));

