clear all
x=[133.5 142 145.5 144.5 134.5 138.5 144 141 141.5 139.5 140 145 141.5 141.5 139 140.5 139 143.5 139.5 140.5 140 138.5 135 139.5 139 138 144 142.5 139 137 136 137 138.5 139 139.5 140.5 139.5 140 140.5 137.5 141.5 141 142.5 143.5 141 147 139.5 136.5 142 140];
x=sort(x); 
n=length(x); 
xmin=x(1); 
xmax=x(n); 
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
plot(x)
hold on
bar(x)