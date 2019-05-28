% x = linspace(0.1, 60, 1000);
% y = 2.^(-0.2*x+10);
% subplot(2,2,1); plot(x,y);
% subplot(2,2,2); semilogy(x,y);
% subplot(2,2,3); semilogx(x,y);
% subplot(2,2,4); loglog(x,y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yr = 1988:1994;
sle = [8 12 20 22 18 24 27];

subplot(2,3,1);
bar(yr, sle, 'r');
xlabel('Year');
ylabel('Sales (millions)');

subplot(2,3,2);
barh(yr, sle);
xlabel('Sales (millions)');
ylabel('Year');

subplot(2,3,3);
stairs(yr, sle);
xlabel('Year');
ylabel('Sales (millions)');

grd = [11 18 26 9 5];
subplot(2,3,4);
pie(grd);
title('Class grades');

y = [40 207 146 -42 75 133 155 49 -10 68 239 82 68 131 30 70 65 106 19 -30 -111 105 149 192 141 156 102 66 226 -2 126 206 255 91 11 275 177 165 184 61 -26 -14 109 50 99 297 97 0 174 48 108 57 36 -29 -27 111 190 86 155 -10 38 -179 206 104 246 135 281 28 119 17 128 196 189 215 240 93 303 243 299 139 130 203 166 -133 -13 114 71 356 93 6 98 64 242 82 87 19 107 17 49 95 ];
subplot(2,3,5);
hist(y,15);

a = -1.3;
b = -2;
par = @(x) x.^2 .*a + x .* b + 3;
clear a b;
x = linspace(-100, 100, 10000);
y = par(x);
subplot(2,3,6);
plot(x,y);

