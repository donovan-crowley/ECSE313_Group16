% Purpose: Stretch the image from pixels T1 to T2
% Input (input, T1, T2): Input image, Range Values [T1, T2]
% Output (output): Stretched image
function output = pointTrans(input, T1, T2)
    % Find the rows and columns of the input image
    image = double(input);
    [rows, cols] = size(image);

    output = zeros(rows, cols);

    for r = 1:rows
        for c = 1:cols
            pixVal = image(r, c);

            if pixVal < T1
                % Black pixels less than range
                output(r, c) = 0;
            elseif pixVal > T2
                % White pixels more than range
                output(r, c) = 255;
            else
                % Stretch the rest of the values to full range [0, 255]
                output(r, c) = 255 * (pixVal - T1) / (T2 - T1);
            end
        end
    end
end