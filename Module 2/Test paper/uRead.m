function result = uRead(filename)
info = imfinfo(filename);
if strcmp(info.ColorType, 'indexed')
    [D,map] = imread(filename);
    result = ind2gray(D,map);
elseif strcmp(info.ColorType, 'truecolor')
    I = imread(filename);
    result = rgb2gray(I);
else
    result = imread(filename);
end
% speed up calculations
result = im2double(result);
end