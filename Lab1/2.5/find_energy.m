% Purpose: Find the energy of a sinc function
% Input (t): time 
% Output (result): energy of a sinc function in given t range
function result = find_energy(t)
    dt = t(2) - t(1);
    func = sinc(t);
    func(isnan(func)) = 1; % Ensure no division by zero errors
    result = sum(abs(func).^2)*dt;
end