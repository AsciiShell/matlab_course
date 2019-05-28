[x1,x2]=dsolve('Dx1=-0.5*x2','Dx2=3*x1','x1(0)=0', 'x2(0)=1');
ezplot(x1,0,13);
grid;
hold on;
ezplot(x2,[0,13]);
