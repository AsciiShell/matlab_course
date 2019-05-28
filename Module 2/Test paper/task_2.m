function img = task_2(source,action)
    function im = uImadjust(I)
       im = imadjust(I, [0, 1], [1, 0], 0.1);
    end
    function [h, cx] = uHist(I)
        [h, cx] = imhist(I);
        imhist(I);
    end
    function im = uNoise(I)
       im = imnoise(I, 'gaussian', 0.1, 0.1); 
    end
    function im = uGauss(I)
        h = fspecial('gaussian',20,0.9);
        im = imfilter(I,h,'replicate');
    end
    function [a,b,c] = uCompare(I1,I2)
       a = mean2(I1) - mean2(I2);
       b = std2(I1) - std2(I2);
       c = corr2(I1, I2);
    end
I = uRead(source);
if strcmp(action,'adjust')
    img = uImadjust(I);
elseif strcmp(action,'hist')
    [h, cx] = uHist(I);
    img = h;
elseif strcmp(action,'noise')
    img = uNoise(I);
elseif strcmp(action,'gauss')
    img = uGauss(I);
elseif strcmp(action,'compare') 
    img = I;
    [a,b,c] = uCompare(I, uGauss(I));
    disp(strcat('Diff a ', num2str(a)));
    disp(strcat('Diff b ',num2str(b)));
    disp(strcat('Equal c ', num2str(c)));   
else
    print("Unknown action\n");
end
end