close all;
[x, map] = imread('bigbird.bmp');
I=im2double(ind2gray(x, map));
figure, imshow(I);
Iy = I(:,end:-1:1);
figure,imshow(Iy);
Id=Iy(:,1:2:end);
figure,imshow(Id);