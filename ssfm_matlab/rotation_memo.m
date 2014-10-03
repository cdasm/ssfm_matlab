
syms a b c th real

rz(th) =  [cos(th), -sin(th), 0; sin(th),  cos(th), 0;       0,        0, 1]


ry(th) = [  cos(th), 0, sin(th);        0, 1,       0; -sin(th), 0, cos(th)]


rx(th) = [ 1,       0,        0; 0, cos(th), -sin(th); 0, sin(th),  cos(th)]

%rotate c around z, rotate b around y, and rotate a around x at last

r(a,b,c)= rx(a)*ry(b)*rz(c)

r(a, b, c) = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)]
 
%from cross product to matrix muplication
syms a1 a2 a3 real
cm(a1,a2,a3)= [0 -a3 a2; a3 0 -a1; -a2 a1 0]

syms d e f real

syms x1 x2 y1 y2 z1 z2 real

copl(x1,y1,z1,x2,y2,z2)=dot([x1,y1,z1],cm(d,e,f)*(r(a,b,c)*[x2 y2 z2]'))

for n=1:6
func{n}=copl(i(n,1),i(n,2),i(n,3),j(n,1),j(n,2),j(n,3))
end

solve(func{1}==0,func{2}==0,func{3}==0,func{4}==0,func{5}==0,func{6}==0,'a','b','c','d','e','f')


