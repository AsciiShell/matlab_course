clear;
hold off;
[X,Z]=meshgrid(linspace(-5, 5,20));
Y=sqrt(5 - (X.^2)/10 - (Z.^2)/10);
mesh(X,-Y,Z);
hold on;
mesh(X,Y,Z);

xlim([-5;5]);
ylim([-5;5]);
zlim([-10;10]);
hidden off;
grid;