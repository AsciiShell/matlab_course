clear all;
close all;
x_row = [25 75 12,
    75 125 15,
    125 175 9, 
    175 225 7,
    225 275 4,
    275 325 3];

x(:,1) = (x_row(:,1) + x_row(:,2))/2;
x(:,2) = x_row(:,3);

xmean = sum(x(:,1).*x(:,2)) / sum(x(:,2));
fprintf('Среднее:\t%f\n', xmean);
xdisp = sum(((x(:,1) - xmean).^2).*x(:,2)) / sum(x(:,2));
fprintf('Выборочная дисперсия:\t%f\n', xdisp);
xS = sqrt(xdisp);
fprintf('Выборочное среднеквадратичное отклонение:\t%f\n', xS);
xV = xS / xmean;
fprintf('Коэффициент вариации:\t%f%%\n', xV * 100);
stairs(x_row(:,1), x(:,2) )
hold on
plot(x(:,1), x(:,2) )