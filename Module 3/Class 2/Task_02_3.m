clear all;
x = [20.3 15.4 17.2; 19.2 23.1 18.1; 21.9 15.3 16.8; 13.2 20.4 16.5; 19. 20.5 14.3];
variables = {'First', 'Second', 'Third'};
points = num2str([1:size(x,1)]');
s = [' ' sprintf(' %s', variables{:}) sprintf('\n')];
s = [s sprintf('%2.0f %4.2f %4.2f %4.2f\n', [str2num(points) x]')];
fid = fopen('MyData.txt', 'w');
fprintf(fid, '%s', s);
fclose(fid);
