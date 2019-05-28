close all;
[S,map]=imread('Athena.bmp');
I=ind2gray(S,map);
S=imnoise(I,'gaussian', 0.1, 0.015);
subplot(1,4,1);imshow(I);
subplot(1,4,2);imshow(S);
D=medfilt2(S);
subplot(1,4,3);imshow(D);
subplot(1,4,4);imshow(medfilt3(S));