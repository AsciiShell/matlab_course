x=dsolve('2.5*D2x+3*Dx+5*x=12','Dx(0)=0', 'x(0)=0');
ezplot(x,[-0.2 9]);
grid;
