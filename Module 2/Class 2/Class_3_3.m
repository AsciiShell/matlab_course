I3 = imread('bf3.jpg');
im_r = imrotate(I3, 45, 'bilinear');
subplot(1,2,1);
imshow(I3);
subplot(1,2,2);
imshow(im_r);