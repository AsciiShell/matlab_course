close all;
subplot(2,2,1);
ezplot('x^2', [-5, 5]);
grid on;
subplot(2,2,2);
ezplot('exp(x)', [-2, 2]);
grid on;
subplot(2,2,3);
ezplot('log(x)', [0, 5]);
grid on;
subplot(2,2,4);
ezplot('sqrt(x)', [0,10]);
grid on;