%Q2a
clear;

n = [2:10];

x1 = sin((pi/5)*n);
x2 = cos((pi/5)*n);

y1 = 2 * x1;
y2 = 2 * x2;

x3 = x1 + x2;

y3 = 2 * x3;
y4 = y1 + y2;

if(y4 == y3)
    disp("System outputs consistent with linear system");
else
    disp("System is not linear");
end;

figure(1);
subplot(4, 2, 1); stem(n, x1);
subplot(4, 2, 2); stem(n, y1);
subplot(4, 2, 3); stem(n, x2);
subplot(4, 2, 4); stem(n, y2);
subplot(4, 2, 5); stem(n, x3);
subplot(4, 2, 6); stem(n, y3);
subplot(4, 2, 8); stem(n, y4);

%Q2b
%i

%n = [0:1];

y1 = x1 .^2;
y2 = x2 .^2;

x3 = x1 + x2;

y3 = x3 .^2;
y4 = y1 + y2;

if(y4 == y3)
    disp("y = x^2 is a linear system");
else
    disp("y = x^2 is not a linear system");
end;  

%ii
impulse = (n == 0);

y1 = 2*x1 + 5*impulse;
y2 = 2*x2 + 5*impulse;

x3 = x1 + x2;

y3 = 2*x3 + 5*impulse;
y4 = y1 + y2;

if(y3 == y4)
    disp("y = 2*x + 5*impulse is a linear system");
else
    disp("y = 2*x + 5*impulse is not a linear system");
end;

figure(2);
%subplot(1,1,1); stem(n, impulse);
waitfor(gcf);
