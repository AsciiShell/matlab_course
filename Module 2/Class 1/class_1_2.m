function [avg, med, minx, maxx] = class_1_2(u)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = length(u);
avg = avgf(u, n);
med = medf(u, n);
minx = minxf(u);
maxx = maxxf(u);
end

function a = avgf(u, n)
a = sum(u)/n;
end

function m = medf(u, n)
v = sort(u);
if rem(n ,2) == 1
    m = v((n + 1)/2);
else
    m = (v(n/2) + v(n/2 + 1)) / 2;
end
end

function mi = minxf(u)
mi = min(u);
end

function ma = maxxf(u)
ma = max(u);
end