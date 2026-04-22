% Purpose: Filter an image using a guassian filter
% Input (N, var): Size of the filter, variance
% Output (h): NxN filter
function h = gaussFilter(N, var)
    % To be centered around origin and be symmetric, N must be odd
    if mod(N, 2) == 0
        error('N must be an odd number');
    end

    % Find distance from origin
    distance = floor(N / 2);
    
    % Create a meshgrid around center
    [i, j] = meshgrid(-distance:distance, -distance:distance);

    % Calculate Gaussian values with equation given in problem statement
    h = exp(-(i.^2 + j.^2) / (2 * var));

    % Normalize the filter
    h = h / sum(h(:));
end