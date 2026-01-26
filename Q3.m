%Q3
%(a)
n = [0:10];
x_pos = exp(-2 * abs(n)) .* sin((pi/18)*n);
x_neg = exp(-2 * abs(-n)) .* sin((pi/18)* -n);

x_even = 1/2 * (x_pos + x_neg);
x_odd = 1/2 * (x_pos - x_neg);

figure(1);
subplot(2,2,1); stem(n, x_pos);
subplot(2,2,2); stem(-n, x_neg);
subplot(2,2,3); stem(n, x_even);
subplot(2,2,4); stem(n, x_odd);


%(b)
m = [-5:5];

y_pos = (-1) .^(m - 1);
y_neg = (-1) .^(-m - 1);


y_even = 1/2 * (y_pos + y_neg);
y_odd = 1/2 * (y_pos - y_neg);

figure(2);
subplot(2,2,1); stem(m, y_pos);
subplot(2,2,2); stem(-m, y_neg);
subplot(2,2,3); stem(m, y_even);
subplot(2,2,4); stem(m, y_odd);

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