syms x h;
y=sin(x)/x;
disp(limit(y));

f=(2*x^3+3*x^2+1)/(x^2-2*x+3);
disp(vpa(limit(f,2),3));

y=(1+1/x)^x;
disp(limit(y,inf));

y=1/x;
disp(limit(y,x,0,'left'));
disp(limit(y,x,0,'right'));

y=(sin(x+h)-sin(x))/h;
disp(limit(y,h,0));
