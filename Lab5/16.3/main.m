clc; clear; close all;

A = imread('house.tif');


image(A);
colormap(gray(256));
axis('image');
title('Original Image');

Hist(A);