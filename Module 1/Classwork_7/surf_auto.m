function result = surf_auto(x_lin,y_lin)
[X,Y]=meshgrid(x_lin, y_lin);
Z = (X.^2/10 + Y.^2/5)/2;
result = surf(X,Y,Z);
end

