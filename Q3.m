%Q3
%(a)
n = [0:10];
x_pos = exp(-2 * abs(n)) .* sin((pi/18)*n);
x_neg = exp(-2 * abs(-n)) .* sin((pi/18)* -n);

x_even = 1/2 * (x_pos + x_neg);
x_odd = 1/2 * (x_pos - x_neg);

figure(1);
subplot(2,2,1); stem(n, x_pos); xlabel('n'); ylabel('x[n]'); title('x[n] = exp(-2 * abs(n)) .* sin((pi/18)*n)'); 
subplot(2,2,2); stem(-n, x_neg); xlabel('n'); ylabel('x[-n]'); title('x[-n] = exp(-2 * abs(-n)) .* sin((pi/18)* -n)'); 
subplot(2,2,3); stem(n, x_even); xlabel('n'); ylabel('x[n] even'); title('Even component of x[n]: x even = 1/2 * (x[n] + x[-n])'); 
subplot(2,2,4); stem(n, x_odd); xlabel('n'); ylabel('x[n] odd'); title('Odd component of x[n]: x odd = 1/2 * (x[n] - x[-n])');


%(b)
m = [-5:5];

y_pos = (-1) .^(m - 1);
y_neg = (-1) .^(-m - 1);


y_even = 1/2 * (y_pos + y_neg);
y_odd = 1/2 * (y_pos - y_neg);

figure(2);
subplot(2,2,1); stem(m, y_pos); xlabel('n'); ylabel('y[n]'); title('y[n] = (-1)^{m - 1}'); 
subplot(2,2,2); stem(-m, y_neg); xlabel('n'); ylabel('y[-n]'); title('y[-n] = (-1)^{-m - 1}');
subplot(2,2,3); stem(m, y_even); xlabel('n'); ylabel('y[n] even'); title('Even component of y[n]: y even = 1/2 * (y[n] +y[-n])');
subplot(2,2,4); stem(m, y_odd); xlabel('n'); ylabel('y[n] odd'); title('Odd component of y[n]: y odd = 1/2 * (y[n] - y[-n])');

%(c)
% Array method comparison

clear;
n = [1:20];

x1 = sin((pi/20) * n) .* cos((pi/20) * n);

for index = 1:20
    x2(index) = sin((pi/20) * index) * cos((pi/20) * index);
end;

figure(3);
subplot(2, 1, 1); stem(n, x1);
title("Elegant method making full use of MATLAB array capabilities");
xlabel("n"); ylabel("x1[n]");

subplot(2, 1, 2); stem(n, x2);
title("Gets the job done, but it is a lot of work and we are not in the MATLAB mindset");
xlabel("n"); ylabel("x2[n]");
waitfor(gcf);