clear all
sf='xrayl.txt';
x=load(sf); 
x=sort(x(:)); 
n=length(x); 
xmin=x(1); 
xmax=x(n); 
fprintf('������������ ���� %s\n',sf)
fprintf('����� ������� n=%d\n',n)
fprintf('xmin=%14.7f\n',xmin)
fprintf('xmax=%14.7f\n',xmax)

Mx=mean(x); 
fprintf('���������� �������������� �������� Mx=%14.7f\n',Mx)

f=n-1; 
Dx=var(x); 
Sx=std(x); 
fprintf('����� �������� ������� ������� f=%d\n',f)
fprintf('��������� Dx=%14.7f\n',Dx)
fprintf('������������������ ���������� Sx=%14.7f\n',Sx)

Ax=skewness(x,0); 
Ex=kurtosis(x,0)-3; 
Medx=median(x); 
Rx=range(x); 
fprintf('���������� Ax=%14.7f\n',Ax)
fprintf('������� Ex=%14.7f\n',Ex)
fprintf('������� Medx=%14.7f\n',Medx)
fprintf('������ Rx=%14.7f\n',Rx)

