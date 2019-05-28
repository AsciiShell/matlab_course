close all;
subplot(2,3,1);
ezplot('sin(t)*t', 'cos(t)*t', [1,10*pi]);
subplot(2,3,2);
ezplot3('t*sin(t)', 't*cos(t)', 't', [0, 6*pi]);
subplot(2,3,3);
f = 'sin(x^2 + y^2) + exp(-x^2)';
d = [-2, 2, -2, 2];
ezmesh(f, d);
subplot(2,3,4);
ezsurf(f, d);
subplot(2,3,5);
ezcontour(f,d);

subplot(2,3,6);
fx = @(t) cos(t);
fy = @(t) sin(t);
fz = @(t) t;
ezplot3 (fx, fy, fz, [0, 10*pi], 100);

subplot(2,3,1);
ezpolar('exp(cos(phi)) - 2*cos(3*phi) + sin(phi/12)^5', [0, 6*pi]);