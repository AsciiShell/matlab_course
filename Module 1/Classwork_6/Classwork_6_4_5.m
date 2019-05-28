x=dsolve('1.5*D3x+4*D2x+3*Dx+5*x=12','D2x(0)=0','Dx(0)=0', 'x(0)=0');
ezplot(x,[-0.2 21]);
grid;
