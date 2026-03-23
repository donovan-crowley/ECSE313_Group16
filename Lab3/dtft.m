% Purpose: Computes the Discrete-Time Fourier Transform (DTFT) of a Signal
% Input: (x) - vector representing the time-domain
%        (n0) - time index corresponding to 1st element in vector x
%        (dw) - spacing between samples
% Output: (X) - Values corresponding to DTFT of signal from -pi to pi

function X = dtft(x, n0, dw)
    w = -pi:dw:pi;         
    N = length(x);
    n = n0:(n0 + N - 1);    
    X = x * exp(-1j * n' * w);   
end