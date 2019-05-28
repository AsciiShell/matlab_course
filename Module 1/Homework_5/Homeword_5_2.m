[X,Y]=meshgrid(-2:0.2:2);
Z=X.^2+Y.^2;
waterfall(X,Y,Z);
title("z=x^2+y^2");
xlabel("X");
ylabel("Y");