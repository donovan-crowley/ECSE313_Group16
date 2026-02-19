% Calculate the differentiator of a discrete-time function
% @param{x} function to differentiate
% @return: the differentiated function
function y = differentiator(x)
    y = zeros(size(x));

    % Assume x[-1] = 0
    y(1) = x(1);

    coder.unroll();
    for n = 2:length(x)
        y(n) = x(n) - x(n-1);
    end
end