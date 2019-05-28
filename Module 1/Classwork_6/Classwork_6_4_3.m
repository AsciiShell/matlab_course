[x1,x2]=dsolve('Dx1=-3*x1+12','Dx2=2.5*x1-1.25*x2','x1(0)=0', 'x2(0)=0');
ezplot(x1,[0,5]);
grid;
hold on;
ezplot(x2,[0,9]);
