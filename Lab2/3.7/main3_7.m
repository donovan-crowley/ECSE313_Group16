%% nathaniel and donovan
%% ecse 313 
%%


% plan
% test linearity and time invariance 

N = 256;   % length
n = 0:N-1;
M = 10;    % shift

% test signals


delta = [zeros(1, M), 1, zeros(1, N-M-1)];

x1 = [zeros(1, M), sin(2*pi*0.1*(0:N-M-1))];
x2 = [zeros(1, M), sin(2*pi*0.5*(0:N-M-1))];

rng(33);
xr = [zeros(1, M), randn(1, N-M)];

% linearity test

a = 3.0;
b = -2.0;

for sysN = 1:3 
    fprintf('\n testing linearity for system%d \n', sysN);
    switch sysN
        case 1
            lhs = system1(a*x1 + b*x2);          % S[a*x1 + b*x2]
            rhs = a*system1(x1) + b*system1(x2);   % a*S[x1] + b*S[x2]
            lhs_r = system1(a*xr + b*x1);
            rhs_r = a*system1(xr) + b*system1(x1);
        case 2
            lhs = system2(a*x1 + b*x2);
            rhs = a*system2(x1) + b*system2(x2);
            lhs_r = system2(a*xr + b*x1);
            rhs_r = a*system2(xr) + b*system2(x1);
        case 3
            lhs = system3(a*x1 + b*x2);
            rhs = a*system3(x1) + b*system3(x2);
            lhs_r = system3(a*xr + b*x1);
            rhs_r = a*system3(xr) + b*system3(x1);
    end

    err_sine   = max(abs(lhs - rhs));
    err_random = max(abs(lhs_r - rhs_r));

    fprintf(' error when passing in sinusoid:   %.6f\n', err_sine);
    fprintf(' error when pasing in rand: %.6f\n', err_random);

    if err_sine > 1e-6 || err_random > 1e-6
        fprintf(' likely non linear \n');
    else
        fprintf('linear\n');
    end
end


x_orig    = xr;                                        % original signal
x_shifted = [zeros(1,M), xr(1:end-M)];                % delayed by M samples

for sysN = 1:3
    fprintf('\n time invariance test for system%d \n', sysN);

    switch sysN
        case 1
            y_orig    = system1(x_orig);
            y_shifted = system1(x_shifted);              % S[x(n-M)]
        case 2
            y_orig    = system2(x_orig);
            y_shifted = system2(x_shifted);
        case 3
            y_orig    = system3(x_orig);
            y_shifted = system3(x_shifted);
    end

    y_orig_delayed = [zeros(1,M), y_orig(1:end-M)];   % y(n-M)

    err_ti = max(abs(y_shifted - y_orig_delayed));

    fprintf('  max error: %.6f\n', err_ti);

    if err_ti > 1e-6
        fprintf('  likely time varying\n');
    else
        fprintf('  time-invariant\n');
    end
end 


figure;
sysNames = {'system1', 'system2', 'system3'};

for sysN = 1:3
    switch sysN
        case 1
            y_orig    = system1(x_orig);
            y_shifted = system1(x_shifted);
        case 2
            y_orig    = system2(x_orig);
            y_shifted = system2(x_shifted);
        case 3
            y_orig    = system3(x_orig);
            y_shifted = system3(x_shifted);
    end

    y_orig_delayed = [zeros(1,M), y_orig(1:end-M)];

    subplot(3,2, 2*sysN-1);
    plot(n, y_shifted, 'b', n, y_orig_delayed, 'r--');
    title(sprintf('%s: TI Test (blue=S[x delayed], red=S[x] delayed)', sysNames{sysN}));
    xlabel('n'); ylabel('Amplitude'); legend('S[x(n-M)]','y(n-M)');

    subplot(3,2, 2*sysN);
    lhs_r = [];  rhs_r = [];
    switch sysN
        case 1; lhs_r = system1(a*xr + b*x1); rhs_r = a*system1(xr) + b*system1(x1);
        case 2; lhs_r = system2(a*xr + b*x1); rhs_r = a*system2(xr) + b*system2(x1);
        case 3; lhs_r = system3(a*xr + b*x1); rhs_r = a*system3(xr) + b*system3(x1);
    end
    plot(n, lhs_r, 'b', n, rhs_r, 'r--');
    title(sprintf('%s: Linearity Test (blue=S[ax1+bx2], red=aS[x1]+bS[x2])', sysNames{sysN}));
    xlabel('n'); ylabel('Amplitude'); legend('S[ax+bx2]','aS[x]+bS[x2]');
end

sgtitle('Black Box System Tests');
