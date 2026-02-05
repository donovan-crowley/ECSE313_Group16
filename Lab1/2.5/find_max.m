% Purpose: Find the maximum of a sinc function
% Input (t): Time
% Output: Maximum value of a sinc function in given t range
function result = find_max(t)
    result = max(sinc(t));
end