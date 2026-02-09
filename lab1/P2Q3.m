x1 = [-10:10];
x2 = [20:40];
k = 1;
x1_shifted = [0 x1(1:end-k)]; %time-shifted input signal for time invariance test

% Linearity test
y1 = Sys1(x1 + x2);
y2 = Sys1(x1) + Sys1(x2);

if (y1 == y2)
    disp("Sys1 is linear");
else
    disp("Sys1 is not linear");
end;

figure(1);
subplot(2,2,1); stem(y1); 
xlabel('n'); ylabel('y1[n]'); title("y1[n] = Sys1(x1[n] + x2[n]");
subplot(2,2,2); stem(y2); 
xlabel('n'); ylabel('y2[n]'); title("y2[n] = Sys1(x1[n]) + Sys(x2[n])");

% Time invariance test
y3 = Sys1(x1);
y3_shifted = [0 y3(1:end-k)];
y4 = Sys1(x1_shifted);

subplot(2,2,3); stem(y3_shifted); 
xlabel('n'); ylabel('y3[n - 1]'); title("Time-shifted output signal y3[n - 1]");
subplot(2,2,4); stem(y4); 
xlabel('n'); ylabel('y4[n] = Sys1(x1[n - 1])'); title("Time-shifted input signal y4[n] = Sys1(x1[n - 1])");

if (y3_shifted == y4)
    disp("Sys1 is time invariant");
else
    disp("Sys1 is not time invariant");
end;
