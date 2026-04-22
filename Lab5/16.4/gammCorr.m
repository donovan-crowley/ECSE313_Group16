% Purpose: Correct an image that is too dark/light
% Input (x, gamma): Original pixel value, gamma value 
% Output (y): Pixel Intensity
function y = gammCorr(x, gamma)
    % Inverse of function given in the problem description
    y = 255 * ((double(x) / 255.0) .^ (gamma));
end