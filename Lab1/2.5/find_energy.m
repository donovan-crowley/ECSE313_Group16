function result = find_energy(t)
    dt = t(2) - t(1);
    result = sum(abs(sinc(t)).^2)*dt;
end