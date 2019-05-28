close all;
[X,map]=imread('Athena.bmp');
I=ind2gray(x,map);
%I=im2double(I);
h=[1 1 1;    1 -2 1;    -1 -1 -1];
subplot(1,4,1);imshow(filter2(rot90(h,0),I));
subplot(1,4,2);imshow(filter2(rot90(h,1),I));
subplot(1,4,3);imshow(filter2(rot90(h,2),I));
subplot(1,4,4);imshow(filter2(rot90(h,3),I));