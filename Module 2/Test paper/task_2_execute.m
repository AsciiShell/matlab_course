close all;
subplot(1,4,1);
showAndWrite(task_2('vk_cat.png', 'noise'), 'noise_cat.png');
subplot(1,4,2);
showAndWrite(task_2('vk_cat.png', 'adjust'), 'adjust_cat.png');
subplot(1,4,3);
showAndWrite(task_2('vk_cat.png', 'gauss'), 'gauss_cat.png');
subplot(1,4,4);
task_2('vk_cat.png', 'compare');
task_2('vk_cat.png', 'hist');
function im = showAndWrite(I, name)
    imshow(I);
    imwrite(I,name);
    im = I;
end
