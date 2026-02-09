%Lucas Graham
%40249532
%P1Q1

%clc; close all; clear;

step = 0.5;
n = [-10:10];
w = [0:step:2*pi];

x = rectangular_pulse(-2, 2, n);

subplot(1,2,1);
stem(n, x); 
xlabel('n'); ylabel('x[n]'); title('Rectangular pulse');

transform = dtft(x,n,w);
subplot(1,2,2);
plot(w, transform);
xlabel('w'); ylabel('DTFT'); title('DTFT of x[n]');
