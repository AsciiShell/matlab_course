function [x] = loadSort(fin,fout)
%������� ��������� ������ �� ����� � ���������� � ������ ���������������
%������������������. ���������� ��������������� ������������������.
x= load(fin);
x=sort(x);
fid=fopen(fout,'w');
for k=1:length(x)
    fprintf(fid, '%f ', x(k));
end 
fclose(fid);
end

