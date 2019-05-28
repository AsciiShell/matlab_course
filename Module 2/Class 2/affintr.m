function affintr(I,T, type)
    tform = affine2d(T);
    I1 = imwarp(I, tform);
    figure, imshow(I1);
    title(type);
end

