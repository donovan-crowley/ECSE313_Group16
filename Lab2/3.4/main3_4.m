%% nathaniel and donovan 
%% ecse 313
%%



% using matlab filters
% s1
a1 = 1;
b1 = [1, -1];

%s2
a2 = [1, -0.5];
b2 = 1;

% systems

N = 33;
x = zeros(1, N);
x(1) = 1;

y1 = filter(b1, a1, x);

y2 = filter(b2, a2, x);
 
% s1(s2)
h_s1_s2 = filter(b1, a1, filter(b2, a2, x));

% s2(s1)
h_s2_s1 = filter(b2, a2, filter(b1, a1, x));

%s1 + s2 
h_sum = filter(b1, a1, x) + filter(b2, a2, x);


% plots
n = 0:N-1;

figure

subplot(5,1,1);
stem(n, y1, 'filled');
title('Impulse Response of S1');
xlabel('n'); ylabel('h[n]');

subplot(5,1,2);
stem(n, y2, 'filled');
title('Impulse Response of S2');
xlabel('n'); ylabel('h[n]');

subplot(5,1,3);
stem(n, h_s1_s2, 'filled');
title('Impulse Response of S1(S2)');
xlabel('n'); ylabel('h[n]');

subplot(5,1,4);
stem(n, h_s2_s1, 'filled');
title('Impulse Response of S2(S1)');
xlabel('n'); ylabel('h[n]');

subplot(5,1,5);
stem(n, h_sum, 'filled');
title('Impulse Response of S1 + S2 ');
xlabel('n'); ylabel('h[n]');
