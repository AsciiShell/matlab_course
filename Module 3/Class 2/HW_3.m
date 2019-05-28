clear all
sf='xrayl.txt';
x=load(sf); 
x=sort(x(:)); 
n=length(x); 
xmin=x(1); 
xmax=x(n); 
fprintf('Обрабатываем файл %s\n',sf)
fprintf('Объем выборки n=%d\n',n)
fprintf('xmin=%14.7f\n',xmin)
fprintf('xmax=%14.7f\n',xmax)

Mx=mean(x); 
fprintf('Выборочное математическое ожидание Mx=%14.7f\n',Mx)

f=n-1; 
Dx=var(x); 
Sx=std(x); 
fprintf('Число степеней свободы выборки f=%d\n',f)
fprintf('Дисперсия Dx=%14.7f\n',Dx)
fprintf('Среднеквадратичное отклонение Sx=%14.7f\n',Sx)

Ax=skewness(x,0); 
Ex=kurtosis(x,0)-3; 
Medx=median(x); 
Rx=range(x); 
fprintf('Асимметрия Ax=%14.7f\n',Ax)
fprintf('Эксцесс Ex=%14.7f\n',Ex)
fprintf('Медиана Medx=%14.7f\n',Medx)
fprintf('Размах Rx=%14.7f\n',Rx)

