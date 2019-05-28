close all;
f1 = input('Enter first file name\n', 's'); % vk_cat.png
f2 = input('Enter second file name\n', 's'); % vk_dog.png
f_out = input('Enter output file name\n', 's'); % vk_out.png
I1 = uRead(f1);
I2 = uRead(f2);
I = cat(2,I1,I2);
[I,rect] = imcrop(I);
I = imrotate(I, 45, 'bicubic');
I = imresize(I, 1.5, 'bicubic');
imshow(I);
imwrite(I,f_out);