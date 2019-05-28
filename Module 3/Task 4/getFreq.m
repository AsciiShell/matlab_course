function [freq] = getFreq(x)
%Расчитывает данные для эмпириеской функции распределения
%Номер, левая граница, правая, число эл. в интервале, относительная частота, середина
%интервала, сумма частот
xmin = min(x);
xmax = max(x);
R = xmax - xmin;
n = length(x);
K = round(sqrt(n));
d = R/K;
freq = zeros(K, 7);
index = 1;
arr_i = 1;


while index <= K && arr_i <= n
    freq(index,1) = index;
    freq(index,2) = x(arr_i);
    freq(index,4) = 0;
    while arr_i <= n && x(arr_i) < freq(index,2) + d
        arr_i = arr_i + 1 ;
        freq(index,4) = freq(index,4) + 1;
    end 
    freq(index,3) = x(arr_i - 1);
    freq(index,5) = freq(index,4)/n;
    freq(index,6) = (freq(index,2) + freq(index,3)) / 2;
    if index == 1
        freq(index,7) = freq(index,5);
    else
        freq(index,7) = freq(index - 1 ,7) + freq(index,5);
    end
    index = index + 1;
end
end

 