clear all;
sf = 'xrayl.txt';
x = load(sf);
x = sort(x(:));
n = length(x);
f = n - 1;
Dx = var(x);
Sx = std(x);

Ax = skewness(x,0);
Ex = kurtosis(x,0)-3;
Mdex = median(x);
Rx = range(x);

fprintf('����� �������� ������� f = %d\n', f);
fprintf('��������� Dx = %14.7f\n', Dx);
fprintf('������������������ ���������� Sx = %14.7f\n', Sx);
fprintf('\n');
fprintf('���������� Ax = %14.7f\n', Ax);
fprintf('��������� Ex = %14.7f\n', Ex);
fprintf('������� Mdex = %14.7f\n', Mdex);
fprintf('������ Rx = %14.7f\n', Rx);

hist(x,sqrt(n));
