% Purpose: Compute integral of function e^t using Riemann Sum
% Input (N): Number of rectangles used
% Ouput (J): Integral of e^t from 0 to 1
function J = integ2(N)
    start = 0;
    finish = 1;

    % Find rectangle width
    rect_width = (finish - start) / N;

    % Create function values and multiply by rectangle width for full rectangle
    t = start: rect_width: finish - rect_width;
    func = exp(t);
    J = sum(func) * rect_width;
end