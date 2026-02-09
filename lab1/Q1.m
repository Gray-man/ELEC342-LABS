%Q1a

clear;

n = [0:9];

x = n;
y = x .^2;
z = sin(((2*pi)/10) * x);

x_sum = 0;
y_sum = 0;
z_sum = 0;

for index = x
    x_sum += index .^2;
end;

disp("Energy of x[n] is: ");
disp(x_sum);

for index = y
    y_sum += index .^2;
end;

disp("Energy of y[n] is: ");
disp(y_sum);

subplot(3, 1, 1); stem(n, x); xlabel('n'); ylabel('x[n]'); title('x[n] = n');
subplot(3, 1, 2); stem(n, y); xlabel('n'); ylabel('y[n]'); title('y[n] = x[n]^2');

%Q1b

for index = z
    z_sum += index .^2;
end;

disp("Energy of sin((2pi/10)*n) is: ");
disp(z_sum);

subplot(3, 1, 3); stem(n, z); xlabel('n'); ylabel('z[n]'); title('z[n] = sin((2pi/10)*n)');

waitfor(gcf);
