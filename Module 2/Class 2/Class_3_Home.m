close all;
imfinfo('bike.bmp')
[I,map]=imread('bike.bmp');
I_s = imresize(I,4,'nearest');
I_3 = imcrop(imcrop(I_s, map), map);
I_4 = imresize(I_3, 4,'bilinear');
I_5 = imrotate(I_4, 90, 'nearest');
subplot(1,2,1);
imshow(I, map);
subplot(1,2,2);
imshow(I_5, map);
