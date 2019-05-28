X=linspace(-1,1);
Y1=5-3*X.^3-2*X.^2;
Y2=4-2*X.^2+3*X;
plot(X,Y1,X,Y2);
grid;
syms x y;
[x, y]=solve('3*x^3+2*x^2+y=5', '2*x^2-3*x+y=4');
disp(vpa(x,4));
disp(vpa(y,4));