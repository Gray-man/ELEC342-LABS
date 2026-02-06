x1 = [-10:0];
x2 = [0:10];

y1 = Sys1(x1 + x2);
y2 = Sys1(x1) + Sys1(x2);

if y1 == y2
    disp("Sys1 is linear\n");
else
    disp("Sys1 is not linear\n");
end;
