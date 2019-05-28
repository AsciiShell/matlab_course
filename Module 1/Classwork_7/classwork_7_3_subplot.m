close all

x=0:.1:8; 
subplot(2,2,1); 
[X,Y]=meshgrid(-5:0.5:5);
Z=2*X.*sin(X)+3*Y.*cos(Y);
surf(X,Y,Z);
subplot(2,2,2); 
[X,Y]=meshgrid(-2:0.2:2);
Z=X.^2+Y.^2;
waterfall(X,Y,Z);
title("z=x^2+y^2");
xlabel("X");
ylabel("Y");
subplot(2,2,3) 
[X,Y]=meshgrid(-4:0.2:4);
Z=(X.^2)/20+(Y.^2)/10;
surf(X,Y,Z);
zlabel("Z");
xlabel("X");
ylabel("Y");
subplot(2,2,4); 
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