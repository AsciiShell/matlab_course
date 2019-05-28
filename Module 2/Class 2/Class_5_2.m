close all;
[S,map]=imread('Athena.bmp');
I=ind2gray(S,map);
S1=imnoise(I,'gaussian',0.1,0.1);
S2=imnoise(I,'salt & pepper', 0.1);
k=corr2(S1,S2)
S3=imnoise(I,'speckle', 0.1);
k=corr2(S2,S3)
subplot(1,4,1);imshow(I);
subplot(1,4,2);imshow(S1);
subplot(1,4,3);imshow(S2);
subplot(1,4,4);imshow(S3);