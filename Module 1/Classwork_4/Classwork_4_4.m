[u, v] = meshgrid(linspace(0, 2*pi, 20), linspace(-.1, .1, 10));
mesh(cos(u) + v.*cos(u/2).*cos(u),sin(u) + v.*cos(u/2).*sin(u), v.*sin(u/2));
view(15, 56);
axis on ;
hidden on ;
