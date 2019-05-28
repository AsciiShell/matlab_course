[X,Y]=meshgrid(-5:0.5:5);
Z=2*X.*sin(X)+3*Y.*cos(Y);
surf(X,Y,Z);