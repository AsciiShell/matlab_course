close all;
[D,map] = imread('Blaise.bmp');
[Dl,newmap] = imapprox(D,map,5);
figure,subplot(1,2,1) ,imshow(D,map)
subplot(1,2,2) ,imshow(Dl ,newmap)
I= ind2gray(D,map);
I1 = ind2gray(Dl,newmap);
figure,subplot(1,2,1) ,imshow(I)
subplot(1,2,2) ,imshow(I1)