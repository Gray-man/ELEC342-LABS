n = [0:9];

x = rectangular_pulse(1, 3, n);

a = [1, -1/4];
b = 1;

y = filter(b, a, x);
z = conv(y, x);

figure(1);
subplot(3,1,1); stem(n, x);
subplot(3,1,2); stem(n, y);
subplot(3,1,3); stem(z);

waitfor(gcf);