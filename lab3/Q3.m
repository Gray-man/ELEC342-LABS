%Lucas Graham
%40249532
%Q3

%% (a)
[x_original, Fs]  = audioread('Original.wav');
[x_distorted, Fs] = audioread('Distorted.wav');

L = length(x_original);

t = (0:L-1)/Fs;

figure;

subplot(2,1,1);
plot(t, x_original);
title('Original Signal'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(2,1,2);
plot(t, x_distorted);
title('Distorted Signal'); xlabel('Time (s)'); ylabel('Amplitude');

%% (b)
mse_distorted = mean((x_original - x_distorted).^2);

disp('MSE between Original and Distorted:');
disp(mse_distorted);

%% (c) 

X = fft(x_distorted);

f = (0:L-1)*(Fs/L);

% Low-pass cutoff
cutoff = 4000;

H = ones(size(X));

for i = 1:length(f)
    if f(i) > cutoff && f(i) < (Fs-cutoff)
        H(i) = 0;
    end
end

Y = X .* H;

x_recovered = real(ifft(Y));

audiowrite('Recovered.wav', x_recovered, Fs);

%% (d)
mse_recovered = mean((x_original - x_recovered).^2);

disp('MSE between Original and Recovered:')
disp(mse_recovered)

%% (e)
disp("Playing Original Signal...")
sound(x_original, Fs)
pause(3)

disp('Playing Distorted Signal...')
sound(x_distorted, Fs)
pause(3)

disp('Playing Recovered Signal...')
sound(x_recovered, Fs)

waitfor(gcf);

