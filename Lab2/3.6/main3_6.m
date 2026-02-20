%% nathaniel and donovan 
%% ecse 313
%%




function y = S3(x)
    a3 = 1;
    b3 = [1, -0.5];
    y = filter(b3, a3, x);
end

N  = 20;
n  = 0:N-1;
delta = [1, zeros(1, N-1)];

a2 = [1, -0.5];
b2 = 1;


h_S3 = S3(delta);

h_S2 = filter(b2, a2, delta);   

h_S3_S2 = S3(h_S2);

%disp('Impulse response of S3');
%disp(h_S3)
%disp('Impulse response of S3[S2[delta]]');
%disp(h_S3_S2)


figure;

subplot(3,1,1);
stem(n, h_S2, 'filled');
title('Impulse Response of S2');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
stem(n, h_S3, 'filled');
title('Impulse Response of S3');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,3);
stem(n, h_S3_S2, 'filled');
title('Impulse Response of S3[S2[\delta]]');
xlabel('n'); ylabel('Amplitude');

sgtitle('S3 as Inverse Filter of S2');
