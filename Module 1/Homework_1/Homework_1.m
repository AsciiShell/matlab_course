a=3;
b=2.6;
cos(3*pi/7)
fprintf("2:\t");
disp(exp(-2)+sin(3*pi)^2);
fprintf("3:\t");
disp(sqrt(tan(7/9*pi)));
fprintf("4:\t");
disp(log(2*b/3) + exp(1));
fprintf("5:\t");
disp(log2(256)+2^a);
fprintf("6:\t");
disp(nthroot(12+a, 3)-log(7)/(b+3));
fprintf("7:\t");
disp(sin(3*pi/8)^2-sqrt(963-27^2));
fprintf("8:\t");
disp(log(3) + log(4));
fprintf("9:\t");
disp((sin(b)+cos(a+2*b))/2);
fprintf("10:\t");
disp(cos(3*pi)^3+sqrt(exp(1))+exp(-8));
fprintf("11:\t");
disp(sqrt(sin(5*pi))+sqrt(abs(cos(5*pi))));
fprintf("12:\t");
disp(asin(0.73));
fprintf("13:\t");
disp((abs(a-3)-5*sqrt(abs(b-2)))/(a+2*b));

fprintf("Task 2\n");
x=-2:2;
h=0.2;
f=abs(x-1).^2;
g=cos(3.*x).^2;
z=2*x.^3-3*x.^2+1;

fprintf("Subtask 1\n");
fprintf("x:\t");
disp(x);
fprintf("f:\t");
disp(f);
fprintf("g:\t");
disp(g);
fprintf("z:\t");
disp(z);
fprintf("f+g:\t");
disp(f+g);


x=-4:3;
h=0.6;
f=log(abs(x+5));
g=sin(x)+cos(2*x);
z=sqrt(x.^2+2);

fprintf("Subtask 2\n");
fprintf("x:\t");
disp(x);
fprintf("f:\t");
disp(f);
fprintf("g:\t");
disp(g);
fprintf("z:\t");
disp(z);
fprintf("f+g:\t");
disp(f+g);


x=2:12;
h=1;
f=log10(x)+1;
g=3*abs(x-3);
z=(2*x.^2)./(5+x);

fprintf("Subtask 3\n");
fprintf("x:\t");
disp(x);
fprintf("f:\t");
disp(f);
fprintf("g:\t");
disp(g);
fprintf("z:\t");
disp(z);
fprintf("f+g:\t");
disp(f+g);