clc; clear; close all;

[Y, FS] = audioread('speech.au');
l = size(Y, 1); % Check
t = (0:l-1)/FS;
plot(t, Y);
sound(Y, FS);

% INLAB: Submit your plot of the speech signal.