% Purpose: Find the minimum value of a sinc function
% Input (t): Time
% Output (result): Minimum value of a sinc function in given t range
function result = find_min(t)
    result = min(sinc(t));
end