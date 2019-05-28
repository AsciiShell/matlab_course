function [n,xmin, xmax, xrange, xmean, xvariance,xvariance2, xstd,  xV, xAssim, xExc, xmed, xmod] = getMetrics(x)
%Расчитывает метрики для выборки
%Число элементов, минимум, максимум, размах, среднее, выборочная дисперсия,
%стандартное отклонение, коэффициент вариации, ассиметрия, эксцесс,
%медиана, мода
n = length(x); 
xmin = x(1); 
xmax = x(n); 
xrange = range(x);
xmean = mean(x);
d_sum = 0;
for i = 1:n
   d_sum  = d_sum + x(i)^2;
end
xvariance = d_sum/n - xmean^2;
xvariance2 = var(x);
xstd = std(x);

xV = getCovariance(x);

xAssim = skewness(x,0);
xExc = kurtosis(x,0)-3; 

xmed = median(x);
xmod = mode(x);


function [xV] = getCovariance(x) 
   xV = std(x)/mean(x);
end
end

