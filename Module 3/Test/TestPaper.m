clear all
x = loadSort('data.txt', 'sorted.txt');

[n,xmin, xmax, xrange, xmean, xvariance, xstd,  xV, xAssim, xExc, xmed, xmod] = getMetrics(x);

fprintf('Объем выборки:\t\t\t\t%d\n',n)
fprintf('Минимум:\t\t\t\t\t%f\n',xmin)
fprintf('Максимум:\t\t\t\t\t%f\n',xmax)
fprintf('Размах:\t\t\t\t\t\t%f\n',xrange)
fprintf('Среднее:\t\t\t\t\t%f\n',xmean)
fprintf('Выборочная дисперсия:\t\t%f\n',xvariance)
fprintf('Стандартное отклонение:\t\t%f\n',xstd)
fprintf('Коэффициент вариации:\t\t%f\n',xV)
fprintf('Коэффициент асимметрии:\t\t%f\n',xAssim)
fprintf('Эксцесс:\t\t\t\t\t%f\n',xExc)
fprintf('Медиана:\t\t\t\t\t%f\n',xmed)
fprintf('Мода:\t\t\t\t\t\t%f\n',xmod)



subplot(1,2,1);
freq = getFreq(x);
bar(freq(:,5))
hold on
plot(freq(:,5))
title('Гистограмма и полигон частот');

subplot(1,2,2);
stairs(freq(:,7))
title('Эмпирическая функция распределения');

fprintf('Проверка распределения на нормальность\n');

[a, b,c] = normChecker(x);
fprintf('mean ±  std:\t%d%% (68%% norm)\n', a);
fprintf('mean ± 2std:\t%d%% (95%% norm)\n', b);
fprintf('mean ± 3std:\t%d%% (100%% norm)\n', c);

fprintf('Коэффициент вариации:\t %f%% (less then 33%% is ok)\n', xV*100);
fprintf('Коэффициент экцесса:\t %f (about zero is ok)\n', xExc);
fprintf('Коэффициент асимметрии:\t %f (about zero is ok)\n', xAssim);
fprintf('Среднее и медиана:\t %f\t%f (about equal is ok)\n', xmean, xmed);
