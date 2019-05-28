[x1,x2,x3]=dsolve('Dx1=-x1+10','Dx2=2*x1-x3','Dx3=2.5*x1-3*x2-2*x3','x1(0)=0','x2(0)=0','x3(0)=0');
disp(x1);
disp(x2);
disp(x3);
