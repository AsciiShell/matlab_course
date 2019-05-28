clear all
x = [1 1 2 2 4 4 4 5 5 5];


[n,xmin, xmax, xrange, xmean, xvariance, xvariance2, xstd,  xV, xAssim, xExc, xmed, xmod] = getMetrics(x);
pol_freq = zeros(n, 2 );
for i=1:n
    
    pol_freq(x(i), 1) = x(i);
     pol_freq(x(i), 2) = pol_freq(x(i), 2) + 1;
end
i = 1;
ss = size(pol_freq);
while i <= ss(1)
    if (pol_freq(i, 1) == 0)
        pol_freq(i, :)= [];
    else
        i = i + 1;
    end
    ss = size(pol_freq);
end

pol_stairs = zeros(max(x) + 1, 2);
ss = 0;
pf_i = 1;
for i = 1:(max(x) + 1)
    pol_stairs(i,1) = i - 1;
    if pf_i <= length(pol_freq) && pol_freq(pf_i, 1) == i - 1
        ss = ss + pol_freq(pf_i, 2) / n;
        pf_i = pf_i + 1;
    end
    pol_stairs(i, 2) = ss;
end
subplot(1,2,1);
plot(pol_freq(:,1)', pol_freq(:,2)')
title('полигон частот');
xlim([0 (max(pol_freq(:,1)) + 1)])
ylim([0 (max(pol_freq(:,2)) + 1)])

subplot(1,2,2);

stairs(pol_stairs(:,1)', pol_stairs(:,2)')
title('Распределение');
xlim([0 (max(pol_stairs(:,1) + 1))])
ylim([0 1])


fprintf('Объем выборки:\t\t\t\t%d\n',n)

fprintf('Среднее:\t\t\t\t\t%f\n',xmean)
fprintf('Выборочная дисперсия:\t\t%f\n',xvariance)
fprintf('Несмещенная дисперсия:\t\t%f\n',xvariance2)
fprintf('Стандартное отклонение:\t\t%f\n',xstd)
fprintf('Эксцесс:\t\t\t\t\t%f\n',xExc)
fprintf('Медиана:\t\t\t\t\t%f\n',xmed)
fprintf('Мода:\t\t\t\t\t\t%f\n',xmod)


return 
subplot(1,2,1);
freq = getFreq(x);
bar(freq(:,5))
hold on
plot(freq(:,5))
title('Гистограмма и полигон частот');

subplot(1,2,2);
stairs(freq(:,7))
title('Эмпирическая функция распределения');
