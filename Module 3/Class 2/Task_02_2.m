clear all;
x = [20.3 15.4 17.2; 19.2 23.1 18.1; 21.9 15.3 16.8; 13.2 20.4 16.5; 19. 20.5 14.3];
variables = {'First', 'Second', 'Third'};
points = num2str([1:size(x,1)]');
xlswrite('MyBook.xls', x, 'b2:d6');
xlswrite('MyBook.xls', variables, 'b1:d1');
xlswrite('MyBook.xls', points, 'a2:a6');