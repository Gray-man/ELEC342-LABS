clc; clear; close all;

% Read audio file
[y, fs] = audioread('lab_5_Audio_1.wav');

% (a) Original
sound(y, fs);
pause(5);

% (b) Amplitude scaling
sound(0.25*y, fs);   % quieter
pause(5);
sound(4*y, fs);      % louder (clipping likely)
pause(5);

% (c) Sampling frequency change
sound(y, fs/2);      % lower pitch, slower
pause(5);
sound(y, fs*2);      % higher pitch, faster