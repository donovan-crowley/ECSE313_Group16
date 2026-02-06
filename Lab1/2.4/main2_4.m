clc; clear; close all;

% Read audio input
[Y, FS] = audioread('speech.au');
l = size(Y, 1);
t = (0:l-1)/FS;
plot(t, Y); % Plot audio signal
xlabel("Time (s)");
ylabel("Amplitude");
title("Speech Signal");
sound(Y, FS); % Play sound