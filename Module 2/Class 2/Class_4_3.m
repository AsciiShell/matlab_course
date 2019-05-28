close all;
[D,map] = imread('Saturn.bmp');
mapl = brighten(map,0.5);
map2 = brighten(map, -0.8);
figure,subplot(1,3,1) ,imshow(D,map);
title('map')
subplot(1,3,2) ,imshow(D,mapl);
title('mapl ')
subplot(1,3,3) ,imshow(D,map2);
title('map2')