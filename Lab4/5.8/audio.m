clc; clear; close all;

% Read in the music.au file
[y, fs] = audioread('music.au');

% Play the original audio
sound(y, fs);

% Downsample the audio
sig1 = y(1:2:end);

% Play the downsampled audio
sound(sig1, fs);

M = 20;
W = pi/2;
h = fir1(M, W/pi);

% Play signal with low-pass and discrete-time filter
filtered = conv(y, h);
sig2 = filtered(1:2:end);
sound(sig2, fs);
