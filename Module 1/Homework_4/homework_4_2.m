A=[7 2;
   1 4];
B=[2;1];
X=A^-1*B;
fprintf("������� ��������� �������� (�4)\n");
disp(X);
A1=[2 2;
   1 4];
A2=[7 2;
   1 1];
X=[det(A1)/det(A);det(A2)/det(A)];
fprintf("������� ������� ������� (�4)\n");
disp(X);
clear;
X=linspace(0,0.4);
Y1=1-3.5*X;
Y2=0.25-0.25*X;
plot(X,Y1,X,Y2);
grid;
clear;
syms x y;
[x, y] = solve('7*x+2*y=2', 'x+4*y=1');
fprintf("������� � ������� ������� solve (�4)\n");
disp(vpa(x,5));
disp(vpa(y,5));