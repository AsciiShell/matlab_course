close all;
I=imread('cat.jpg');

I=histeq(I,256);
figure,imshow(I);
[counts,x] = imhist(I);
stem(x,counts);
