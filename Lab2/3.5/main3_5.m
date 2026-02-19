%% nathaniel and donovan 
%% ecse 313
%%



[x, fs] = audioread("music.au");



x = x';

b1 = [1, -1];    
a1 = [1];        

b2 = [1];       
a2 = [1, -0.5];  


y_S1 = filter(b1, a1, x);
y_S2 = filter(b2, a2, x);


disp('Playing original');
sound(x, fs);
pause(length(x)/fs + 1);

disp('Playing S1 output');
sound(y_S1, fs);
pause(length(y_S1)/fs + 1);

disp('Playing S2 output');
sound(y_S2, fs);
pause(length(y_S2)/fs + 1);



% S1 is higher pitch 
% S2 is lower pitch
