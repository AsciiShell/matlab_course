% Решение с использованием функции solve

syms x1 x2;
[x1,x2] = solve('2*x1-x2=4', '5*x1+2*x2=3');
disp(vpa(x1,4));
disp(vpa(x2,4));