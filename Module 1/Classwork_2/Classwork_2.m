%�������� Classwork_2
%�����������

hold off
x=-5:0.2:5;
y = sin(x);
z = cos(x);
plot(x,y,"-.+r",x,z,"--ok")
hold on
y = cos(x)*0.5;
plot(x,y)
grid on
xlabel('��� �������')
ylabel('��� �������')
title('������� ������������������ �������')
axis([-4,4,-1.5,1.5])
x = -5:0.01:5;
f = sin(8*x).*cos(x);
plot(x,f)
