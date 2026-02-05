% sin2(5t) function
function I = integ1(N)
    start = 0;
    finish = 2*pi;

    rect_width = (finish - start) / N;
    t = linspace(start, rect_width, N);

    func = sin(5*t).^2;
    I = sum(func) * rect_width;
end