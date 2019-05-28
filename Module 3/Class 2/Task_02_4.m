clear all;
sf = 'xrayl.txt';
x = load(sf);
x = sort(x(:));
n = length(x);
f = n - 1;
Dx = var(x);
Sx = std(x);

Ax = skewness(x,0);
Ex = kurtosis(x,0)-3;
Mdex = median(x);
Rx = range(x);

fprintf('Число степеней свободы f = %d\n', f);
fprintf('Дисперсия Dx = %14.7f\n', Dx);
fprintf('Среднеквадратичное отклонение Sx = %14.7f\n', Sx);
fprintf('\n');
fprintf('Ассиметрия Ax = %14.7f\n', Ax);
fprintf('Эксцессия Ex = %14.7f\n', Ex);
fprintf('Медиана Mdex = %14.7f\n', Mdex);
fprintf('Размах Rx = %14.7f\n', Rx);

hist(x,sqrt(n));
