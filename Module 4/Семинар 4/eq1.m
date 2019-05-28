clear all;
close all;
eps=1e-5;
smax=30;
N=101;
h=1.0/(N-1);
x=0:h:1;
for n=1:N
    y(n)=0.1*randn;
end
s=1;
er=1;

for n=1:N
    ya(n)=x(n)-1+sqrt(2.0/3);
end

while (er>eps)&&(s<smax)
    for n=1:N
        I=0.5*(y(1)^2+y(N)^2);
        for m=2:(N-1)
            I=I+y(m)^2;
        end
        y2(n)=x(n)-h*I;
    end
    
    for n=1:N
        z(n)=abs(y2(n)-y(n));
    end
    
    er=max(z);
    y=y2;
    s=s+1;
    plot(x,y,'LineWidth',1.5);
    lgu(s) = max(abs(ya-y));
    s1(s) = s;
    hold on
end


figure;
plot(s,lgu)
figure;
plot(x,ya,'Color','black','LineWidth',3);