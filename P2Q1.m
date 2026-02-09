n = [0:9];

x = rectangular_pulse(1, 3, n);

a = [1, -1/4];
b = 1;

y = filter(b, a, x);
h = (1/4).^n;
z = conv(h, x);

figure(1);
subplot(3,1,1); stem(n, x); xlabel('n'); ylabel('x[n]'); title('Input signal: rectangular pulse');
subplot(3,1,2); stem(n, y); xlabel('n'); ylabel('y[n]'); title('Output signal: y[n] = x[n] +(1/4)*y[n- 1]');
subplot(3,1,3); stem(z); ylabel('z[n]'); title('z[n] = x[n] * y[n] (Convolution of x[n] & y[n])');

waitfor(gcf);