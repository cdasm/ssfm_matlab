function f=objfunc(x)

syms a b;
g(a,b)=a^2 + a + 2*b^2 - b +a*b+ 3;
tm=matlabFunction(g);

f=tm(x(1),x(2));