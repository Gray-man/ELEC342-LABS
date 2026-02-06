x1 = [-10:10];
x2 = [20:40];


% Linearity test
y1 = Sys1(x1 + x2);
y2 = Sys1(x1) + Sys1(x2);

if (y1 == y2)
    disp("Sys1 is linear");
else
    disp("Sys1 is not linear");
end;

% Time invariance test
y3 = Sys1(x1);
y4 = Sys1(x2);

figure(1);
subplot(1,2,1); stem(x1,y3);
subplot(1,2,2); stem(x2,y4);

% if (y3 == y4)
%     disp("Sys1 is time invariant");
% else
%     disp("Sys1 is not time invariant");
% end;