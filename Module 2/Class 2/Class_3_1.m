[S, map] =imread('athena.bmp');
subplot(1,2,1);
subimage(S, map);
[A, rect] = imcrop(S, map);
subplot(1,2,2);
subimage(A, map);
rect