y = @(x) x.^3 .* sin(x) - 1./x;

fplot(y, [1,20]);