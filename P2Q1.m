n = [0:9];

x = rectangular_pulse(1, 3, n);

figure(1);
subplot(1,1,1); stem(n, x);
waitfor(gcf);