A=[4 0.24 -0.08;
    0.09 3 -0.15;
    0.04 -0.08 4];
B=[8;9;20];
X=A^-1*B;
fprintf("������� ��������� �������� (�4)\n");
disp(X);
A1=[8 0.24 -0.08;
    9 3 -0.15;
    20 -0.08 4];
A2=[4 8 -0.08;
    0.09 9 -0.15;
    0.04 20 4];
A3=[4 0.24 8;
    0.09 3 9;
    0.04 -0.08 20];
X=[det(A1)/det(A);det(A2)/det(A);det(A3)/det(A)];
fprintf("������� ������� ������� (�4)\n");
disp(X);
clear;
fprintf("������� � ������� ������� solve (�4)\n");
syms x1 x2 x3;
[x1,x2,x3]=solve('4*x1+0.24*x2-0.08*x3=8','0.09*x1+3*x2-0.15*x3=9', '0.04*x1-0.08*x2+4*x3=20');
disp(vpa(x1,5));
disp(vpa(x2,5));
disp(vpa(x3,5));