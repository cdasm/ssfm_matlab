function f=rotateF(a,b,c)

%rotate c around z, rotate b around y, and rotate a around x at last
r = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)];

f=@(x)(r*x')';

end