% Purpose: Compute integral of function (sin(5t))^2 using Riemann Sum from 0 to 2pi
% Input (N): Number of rectangles used
% Ouput (I): Integral of (sin(5t))^2 from 0 to 2pi
function I = integ1(N)
    start = 0;
    finish = 2*pi;

    % Find rectangle width
    rect_width = (finish - start) / N;

    % Create function values and multiply by rectangle width for full rectangle
    t = start: rect_width: finish - rect_width;
    func = sin(5*t).^2;
    I = sum(func) * rect_width;
end