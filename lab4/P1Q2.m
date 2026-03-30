clc; clear; close all;

Fs = 8000;

Wp = 1000/(Fs/2);   % normalized passband
Ws = 1400/(Fs/2);   % normalized stopband
Rp = 1;             % passband ripple (dB)
Rs = 80;            % stopband attenuation (dB)

% Butterworth
[Nb, Wnb] = buttord(Wp, Ws, Rp, Rs);
[b_butter, a_butter] = butter(Nb, Wnb);

freqz(b_butter, a_butter);
title('Butterworth Filter');

%Chebyshev Type 1
[Nc, Wnc] = cheb1ord(Wp, Ws, Rp, Rs);
[b_cheby, a_cheby] = cheby1(Nc, Rp, Wnc);

freqz(b_cheby, a_cheby);
title('Chebyshev Type I Filter');

%FIR (Blackman Window)

fc = 1000/(Fs/2);  % cutoff normalized

% trial order (increase until stopband near 1.4 kHz)
Nf = 100;

b_fir = fir1(Nf, fc, blackman(Nf+1));
a_fir = 1;

freqz(b_fir, a_fir);
title('FIR Blackman Filter');


%Pole-zero comparison
figure;
zplane(b_butter, a_butter);
title('Original Butterworth');

b_round = round(b_butter);
a_round = round(a_butter);

figure;
zplane(b_round, a_round);
title('Rounded Butterworth');

