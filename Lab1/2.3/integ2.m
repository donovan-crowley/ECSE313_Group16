% sin2(5t) function
function J = integ2(N)
    start = 0;
    finish = 1;

    rect_width = (finish - start) / N;
    t = linspace(start, rect_width, N);

    func = sin(5*t).^2;
    J = sum(func) * rect_width;
end