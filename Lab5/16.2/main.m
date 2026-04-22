clc; clear; close all;

A = imread('yacht.tif');

B = double(A);

figure(1);
image(B);
colormap(gray(256));
axis('image');
title('Original Image');

figure(2);
B_Hflip = B(:, end:-1:1);
image(B_Hflip);
colormap(gray(256));
axis('image');
title('Horizontally Flipped Image');

figure(3);
B_Vflip = B(end:-1:1, :);
image(B_Vflip);
colormap(gray(256));
axis('image');
title('Vertically Flipped Image');

figure(4);
B_neg = 255 - B;
image(B_neg);
colormap(gray(256));
axis('image')
title('Negative Image')

figure(5);
B_mult = B * 1.5;
image(B_mult);
colormap(gray(256));
axis('image');
title('Image Pixels Multiplied by 1.5')



