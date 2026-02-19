% Calculate the integrator of a discrete-time function
% @param{x} function to integrate
% @return: the integrated function
function y = integrator(x)
    y = zeros(size(x));

    % Assume x[-1] = 0
    y(1) = x(1);
    
    coder.unroll();
    for n = 2:length(x)
        y(n) = y(n-1) + x(n);
    end
end