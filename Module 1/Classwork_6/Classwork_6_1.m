syms x y;
f=x^3;
disp(int(f,x));
disp(int(f,x,1,3));

f = 2*x^3*y;
disp(int(int(f,x),y));
disp(int(int(f,x,1,3),y,-1,2));