[X,Y]=meshgrid(-4:0.2:4);
Z=(X.^2)/20+(Y.^2)/10;
surf(X,Y,Z);
zlabel("Z");
xlabel("X");
ylabel("Y");