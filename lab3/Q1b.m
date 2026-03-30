%Lucas Graham
%40249532
%Q1b

sampling_rate = input('Enter sampling rate: ');

N = floor(2*sampling_rate);

for k = 1:5

    window_size = input('Enter window size (number of periods): ');

    n = 0 : (window_size*N - 1);

    w = -window_size*pi : 0.05 : window_size*pi;

    x = sin((2*pi/N)*n);

    X = dtft(x, w);

    figure;

    subplot(2,1,1);
    stem(n,x,'filled');
    title(['Sampled Signal (Window Size = ', num2str(window_size),' periods)']);
    xlabel('n');
    ylabel('x[n]');

    subplot(2,1,2);
    plot(w,abs(X));
    title('Magnitude of DTFT');
    xlabel('\omega');
    ylabel('|X(j\omega)|');

end

waitfor(gcf);