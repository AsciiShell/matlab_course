clear all;
close all;
x = [10.5 2
    11 18,
    11.5 40,
    12 25,
    12.5 6,
    13 5,
    13.5 4];

xlin = zeros(1, sum(x(:,2)));
xlini = 1;
for i=1:length(x)
    for j = 1:x(i,2)
        xlin(xlini) = x(i,1);
        xlini = xlini + 1;
    end
end
xlin = sort(xlin);
xmean = sum(x(:,1).*x(:,2)) / sum(x(:,2));
fprintf('Среднее:\t%f\n', xmean);
xdisp = sum(((x(:,1) - xmean).^2).*x(:,2)) / sum(x(:,2));
fprintf('Выборочная дисперсия:\t%f\n', xdisp);
xS = xdisp * sum(x(:,2)) / (sum(x(:,2)) -1 );
fprintf('Исправленная дисперсия:\t%f\n', xS);
xSigma = sqrt(xdisp);
fprintf('Выборочное среднеквадратическое отклонение:\t%f\n', xSigma);
xSS = sqrt(xS);
fprintf('Исправленное выборочное среднеквадратическое отклонение:\t%f\n', xSS);
xV = xSigma / xmean;
fprintf('Коэффициент вариации:\t%f%%\n', xV * 100);
xmed = median(x(:,1));
xmod = mode(xlin);
fprintf('Мода:\t%f\n',xmod);
fprintf('Медиана:\t%f\n', xmed);