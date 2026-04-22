% Purpose: Filter an image using a median filter
% Input (X): Input Image
% Output (Y): Output Filtered image
function Y = medianFilter(X)
    % Find rows and columns of input image
    [rows, cols] = size(X);
    Y = double(X); 
    padding = double(X);

    % Skip borders of image
    for r = 2:(rows - 1)
        for c = 2:(cols - 1)
            % Find 3x3 window around the pixel
            window = padding(r-1:r+1, c-1:c+1);

            % Find the median of the pixels in the window
            Y(r, c) = median(window(:));
        end
    end
end