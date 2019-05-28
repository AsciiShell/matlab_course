function [a,b,c] = normChecker(x)
%ѕровер€ет распределение на нормальность
xmeam = mean(x);
xstd = std(x);
for k = 1:3
    count=0;
    for i = 1:length(x)
        if (x(i) > xmeam - k*xstd) && (x(i) < xmeam + k*xstd)
            count = count + 1;
        end
    end
    if k == 1
        a = round(count/length(x)*100);
    elseif k == 2
        b = round(count/length(x)*100);
    elseif k == 3
        c = round(count/length(x)*100);        
    end
end
end

