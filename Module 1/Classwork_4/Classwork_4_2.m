t = linspace(1,30);
x = t.*cos(t);
y = t.*sin(t);
z = t;
plot3(x,y,z);
grid;
axis([-50 50 -50 50 0 30]);