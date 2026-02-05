% Purpose: Compute integral of function (sin(5t))^2 using Riemann Sum
% Input (N): Number of rectangles used
% Ouput (J): Integral of (sin(5t))^2 from 0 to 1
function J = integ2(N)
    start = 0;
    finish = 1;

    % Find rectangle width
    rect_width = (finish - start) / N;

    % Create function values and multiply by rectangle width for full rectangle
    t = start: rect_width: finish - rect_width;
    func = sin(5*t).^2;
    J = sum(func) * rect_width;
end