syms x h;
y=2*x^3-3*x^2+3;
disp(diff(y));

y=sin(x+h);
disp(diff(y,h));

y=sin(x+h)/x;
disp(diff(y,h));

disp(diff(5/x,2));

y=3*x^3*h-2*h^2*x^2+3;
disp(diff(y,x,2));

disp(diff(3*h^2*log(x)+3*exp(h),h,3));