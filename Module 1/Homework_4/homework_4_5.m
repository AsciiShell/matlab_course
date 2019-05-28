x = linspace(-3,3);
y = x.^3+2*abs(x-1);
plot(x,y);
grid;
syms x;
x = solve('x^3 + 2*abs(x-1)');
disp(vpa(x,5));