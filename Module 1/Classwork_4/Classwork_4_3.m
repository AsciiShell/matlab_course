R = 5;
r = 2;
n = 40;
m = 20;
[U, V ] = meshgrid(linspace(0, 2*pi, 2*n), linspace(0, 2*pi, 2*m));
X = (R + r.*cos(V )).*cos(U );
Y = (R + r.*cos(V )).*sin(U );
Z = r.*sin(V );
surfl(X, Y, Z )
axis([-10 10 -10 10 -10 10])
axis on
colormap pink