clear all;
%������ 1 ������ ��������� 40 ���. 
%������ ����������� ����, ��� ���� ������� ����� 18 ���?
n=40; 
p=0.5; 
k=18; 
P=binopdf(k,n,p); 
fprintf("%f\n", P);
%������ 2 ���������� 100 ������ �� ����� �������� � ��������- ���� ������ 0,4. 
%����� ����������� ����, ��� ���������� ������� ����� � �������� �� 35 �� 50.

n=100; 
p=0.4;
k=35:50; 
P=sum(binopdf(k,n,p));
fprintf("%f\n", P);
%������ 3 ��������� �������������� �������� � ��������� ������������� 
%������������� � 15 ����������� � ������������ ������ � ��������� 0.2

[m,v]=binostat(15,0.3);
fprintf("MX = %f, DX = %f\n", m ,v);
%������ 4 ������������ ��������� �������� � ������������ �������������� �
%100 ����������� � ������������ ������� 0.6 ������� ����������� ������ ����
%������ �������� �������
r = binornd(100,0.6);
[phat,pci]=binofit(r,100);
fprintf("%f %f\n", phat,pci);