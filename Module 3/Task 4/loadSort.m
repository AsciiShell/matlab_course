function [x] = loadSort(fin,fout)
%‘ункци€ загружает данные из файла и записывает в другой отсортированную
%последовательность. ¬озвращает отсортированную последовательность.
x= load(fin);
x=sort(x);
fid=fopen(fout,'w');
for k=1:length(x)
    fprintf(fid, '%f ', x(k));
end 
fclose(fid);
end

