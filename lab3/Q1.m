%Lucas Graham
%40249532
%Q1

period = input("Number of periods: ");
step = input("Step size of frequency interval: ");

w = [-period*pi:step:period*pi];
for i = 1:5
    sampling_rate = input("Input the sampling rate: ");
    N = floor(2*sampling_rate);
    n = 0 : (2*N - 1);
    x = sin((2*pi/N)*n);
    
    figure;
    subplot(2,1,1);
    stem(n, x);
    xlabel('n'); ylabel('x[n]'); title(['Sampling rate =', num2str(sampling_rate), 'x Nyquist']);
    ft = dtft(x, w);
    subplot(2,1,2);
    plot(w, abs(ft));
    xlabel('\omega'); ylabel('|X(j\omega)|'); title('Magnitude of DTFT ');
end

