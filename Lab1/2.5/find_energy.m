% Purpose: Find the energy of a sinc function
% Input (t): time 
% Output (result): energy of a sinc function in given t range
function result = find_energy(t)
    dt = t(2) - t(1);
    result = sum(abs(sinc(t)).^2)*dt;
end