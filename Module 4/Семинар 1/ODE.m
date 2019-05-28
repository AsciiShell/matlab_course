clear all

syms u(x)
uSol(x) = dsolve(diff(u,2,x) == 5*u,u(0) == 5);
%uSol(x) = dsolve(diff(u,x) == (u-x)/(u+x));
% disp(char(uSol(x)));
pretty(uSol(x));