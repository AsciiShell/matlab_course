clear all;
sf = 'xrayl.txt';
x = load(sf);
x = sort(x(:));
n = length(x);
xmin = x(1);
xmax = x(n);
fprintf('Processing file %s\n', sf);
fprintf('Size %d\n', n);
fprintf('xmin=%14.7f\n', xmin);
fprintf('xmax=%14.7f\n', xmax);
fprintf('range=%14.7f\n', range(x));
fprintf('avr=%14.7f\n', mean(x));