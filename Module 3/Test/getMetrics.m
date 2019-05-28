function [n,xmin, xmax, xrange, xmean, xvariance, xstd,  xV, xAssim, xExc, xmed, xmod] = getMetrics(x)
%����������� ������� ��� �������
%����� ���������, �������, ��������, ������, �������, ���������� ���������,
%����������� ����������, ����������� ��������, ����������, �������,
%�������, ����
n = length(x); 
xmin = x(1); 
xmax = x(n); 
xrange = range(x);
xmean = mean(x);
xvariance = var(x);
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

