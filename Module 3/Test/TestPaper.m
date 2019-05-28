clear all
x = loadSort('data.txt', 'sorted.txt');

[n,xmin, xmax, xrange, xmean, xvariance, xstd,  xV, xAssim, xExc, xmed, xmod] = getMetrics(x);

fprintf('����� �������:\t\t\t\t%d\n',n)
fprintf('�������:\t\t\t\t\t%f\n',xmin)
fprintf('��������:\t\t\t\t\t%f\n',xmax)
fprintf('������:\t\t\t\t\t\t%f\n',xrange)
fprintf('�������:\t\t\t\t\t%f\n',xmean)
fprintf('���������� ���������:\t\t%f\n',xvariance)
fprintf('����������� ����������:\t\t%f\n',xstd)
fprintf('����������� ��������:\t\t%f\n',xV)
fprintf('����������� ����������:\t\t%f\n',xAssim)
fprintf('�������:\t\t\t\t\t%f\n',xExc)
fprintf('�������:\t\t\t\t\t%f\n',xmed)
fprintf('����:\t\t\t\t\t\t%f\n',xmod)



subplot(1,2,1);
freq = getFreq(x);
bar(freq(:,5))
hold on
plot(freq(:,5))
title('����������� � ������� ������');

subplot(1,2,2);
stairs(freq(:,7))
title('������������ ������� �������������');

fprintf('�������� ������������� �� ������������\n');

[a, b,c] = normChecker(x);
fprintf('mean �  std:\t%d%% (68%% norm)\n', a);
fprintf('mean � 2std:\t%d%% (95%% norm)\n', b);
fprintf('mean � 3std:\t%d%% (100%% norm)\n', c);

fprintf('����������� ��������:\t %f%% (less then 33%% is ok)\n', xV*100);
fprintf('����������� �������:\t %f (about zero is ok)\n', xExc);
fprintf('����������� ����������:\t %f (about zero is ok)\n', xAssim);
fprintf('������� � �������:\t %f\t%f (about equal is ok)\n', xmean, xmed);
