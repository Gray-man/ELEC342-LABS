%Q2a
clear;

n = [0:10];

x1 = sin((pi/5)*n);
x2 = cos((pi/5)*n);

y1 = 2 * x1;
y2 = 2 * x2;

x3 = x1 + x2;

y3 = 2 * x3;
y4 = y1 + y2;

if(y4 == y3)
    disp("System outputs consistent with linear system");
else
    disp("System is not linear");
end;

figure(1);
subplot(4, 2, 1); stem(n, x1); xlabel('n'); ylabel('x1[n]'); title("x1[n] = sin((pi/5)*n)");
subplot(4, 2, 2); stem(n, y1); xlabel('n'); ylabel('y1[n]'); title("y1[n] = 2*x1[n]");
subplot(4, 2, 3); stem(n, x2); xlabel('n'); ylabel('x2[n]'); title("x2[n] = cos((pi/5)*n)");
subplot(4, 2, 4); stem(n, y2); xlabel('n'); ylabel('y2[n]'); title("y2[n] = 2*x2[n]");
subplot(4, 2, 5); stem(n, x3); xlabel('n'); ylabel('x3[n]'); title("x3[n] = x1[n] + x2[n]");
subplot(4, 2, 6); stem(n, y3); xlabel('n'); ylabel('y3[n]'); title("y3[n] = 2*x3[n]");
subplot(4, 2, 8); stem(n, y4); xlabel('n'); ylabel('y4[n]'); title("y4[n] = y1[n] + y2[n]");

%Q2b
%i

x1_n = [0,1];
k = 1;
x1_n_shifted = [0 x1_n(1:end - k)];
x2_n = [0,1];

y1 = x1_n .^2;
y1_shifted = [0 y1(1:end - k)];

y2 = x2_n .^2;

x3 = x1_n + x2_n;

y3 = x3 .^2;
y4 = y1 + y2;

y5 = x1_n_shifted .^2;

if(y4 == y3)
    disp("y = x^2 is a linear system");
else
    disp("y = x^2 is not a linear system");
end;

if(y1_shifted == y5)
    disp("y = x^2 is a time-invariant system");
else
    disp("y = x^2 is not a time-invariant system");
end;


%ii
impulse = (x1_n == 0);

y1 = 2*x1_n + 5*impulse;
y1_shifted = [0 y1(1:end - k)];
y2 = 2*x2_n + 5*impulse;

x3 = x1_n + x2_n;

y3 = 2*x3 + 5*impulse;
y4 = y1 + y2;

y5 = 2*x1_n_shifted + 5*impulse; 

if(y3 == y4)
    disp("y[n] = 2*x[n] + 5*impulse[n] is a linear system");
else
    disp("y[n] = 2*x[n] + 5*impulse[n] is not a linear system");
end;

if(y1_shifted == y5)
    disp("y[n] = 2*x[n] + 5*impulse[n] is a time-invariant system");
else
    disp("y[n] = 2*x[n] + 5*impulse[n] is not a time-invariant system");
end;

figure(2);
subplot(1,1,1); stem(x1_n, impulse);
waitfor(gcf);
