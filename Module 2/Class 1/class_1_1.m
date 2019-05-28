x = logspace(-1, 2);
y = log(x);
subplot(1,3,1);
loglog(x, y);
grid   
subplot(1,3,2);
semilogx(x, y);
grid   
subplot(1,3,3);
semilogy(x, y);
grid   