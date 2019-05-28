[X, Y] = meshgrid(-3:0.15:3);
Z=X.^2+Y.^2;
plot3(X,Y,Z);
grid;

[X, Y] = meshgrid(-3:0.15:3);
G=5*X.*sin(Y)-3.5*Y.^2;
plot3(X,Y,G);
mesh(X,Y,G);
surf(X,Y,G);
surfc(X,Y,G);