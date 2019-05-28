
close all;
[D,map] = imread('Athena.bmp');
figure,imshow(D,map)
[D1,nm] = imapprox(D, map, 0.5);
figure,imshow(D1,nm)
[D11 ,nml] = imapprox(D, map, 0.5,'nodither');
figure,imshow(D11,nml)
