%Lucas Graham
%40249532
%P1Q3


n = [-10:10];
x = rectangular_pulse(-2, 2, n);

x_fft = fft(x);
x_recovered = ifft(x_fft);

figure(1);
subplot(1,2,1);
stem(n, x);
xlabel('n'); ylabel('x[n]'); title('Original signal x[n]');

subplot(1,2,2);
stem(n, x_recovered);
xlabel('n'); ylabel('x[n]'); title('Input signal recovered from ifft function');
waitfor(gcf);

