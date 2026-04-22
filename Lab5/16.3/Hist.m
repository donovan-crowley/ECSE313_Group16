function Hist(A)
    [M, N] = size(A);

    A = double(A);
    x = reshape(A, 1, M*N);

    figure;
    hist(x, 0:255);

    title('Histogram of A');
    xlabel('Pixel Intensity');
    ylabel('Number of Pixels');
    xlim([0, 255])
end