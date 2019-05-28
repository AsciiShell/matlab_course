close all;
I=checkerboard(40);
figure, imshow(I);
T=[3 0 0;0 2 0; 0 0 1];
type='resize';
affintr(I,T,type);
T=[1 0 0;0 .2 0;0 0 1];
type='Sdvig';
affintr(I,T,type);
T=[cos(pi/4) sin(pi/4) 0; -sin(pi/4) cos(pi/4) 0; 0 0 1];
affintr(I,T,type);

Tscale = [1.5 0 0;0 2 0;0 0 1];
Trot = [cos(pi) sin(pi) 0;-sin(pi) cos(pi) 0;0 0 1];
Tshear = [1 0 0;.2 1 0; 0 0 1];
T1 = Tscale * Trot * Tshear;

affintr(I,T1,type);

T=[1 0 0; 0 1 0; 50 50 1];
tform=maketform('affine', T);
I1=imtransform(I, tform, 'XData', [1 320], 'YData', [1 320], 'FillValue', 0.5);
figure, imshow(I1);
