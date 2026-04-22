clc; clear; close all;

img_narrow = imread('narrow.tif');

figure;
image(img_narrow);
colormap(gray(256));
axis('image');
title('Original Image');

Hist(img_narrow);
title('Original Image Histogram');

T1 = 70;
T2 = 180;
img_stretched = pointTrans(img_narrow, T1, T2);

figure(3);
image(img_stretched);
colormap(gray(256));
axis('image');
title('Stretched Image from T1 = 70 to T2 = 180');

Hist(img_stretched);
title('Stretched Image Histogram');