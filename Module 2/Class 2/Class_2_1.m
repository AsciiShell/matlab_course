function output = Class_2_1(filename, outname)
output = imfinfo(filename);
S = imread(filename);
subplot(1,3,1);
subimage(S);
for i = 1:size(S, 1)
   for j = 1:size(S,2)
       if(S(i,j) < 100)
           S(i, j) = 100;
       end
   end
end
I = rgb2gray(S);
[X, map] = rgb2ind(S, 128);
D_S = im2double(S);
D_I = im2double(I);
subplot(1,3,2);
subimage(D_S);
subplot(1,3,3);
subimage(D_I);
imwrite(D_I, outname);