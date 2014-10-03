function f = atest( a,b,c,d )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms y z real

t(y,z)=a*y*y+b*y+c*z*z+d*z+15
%tt= matlabFunction(t)
f=@(x)t(x(1),x(2))
end

