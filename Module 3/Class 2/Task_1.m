clear all;
disp('Read data from excel');
x = xlsread('ExBook1')
disp('Read data and header from excel');
[x,points] = xlsread('ExBook1', 'Лист1', 'a2:d6')
disp('Read data and columns from excel');
[x,points] = xlsread('ExBook1', 'Лист1', 'b1:d6')