clear all
a=0;
b=1;
N=4;
for s=1:7
    N=2*N;
    h=(b-a)/(N-1);
    x=a:h:b;
    xi=a:h:b;
    for n=1:N
        A(n,1)=0.5*h*x(n)*xi(1);
        for m=2:(N-1)
            A(n,m)=h*x(n)*xi(m);
        end
        A(n,N)=0.5*h*x(n)*xi(N);
    end
    
    lambda=1/max(eig(A));
    step(s)=h;
    const(s)=abs((3.0/(b^3-a^3))-lambda)/h^2;
    step(s)=h;
end
semilogx(step,const)
    