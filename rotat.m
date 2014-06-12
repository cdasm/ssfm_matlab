tfunction f=rotat(x)

syms a b c;

rot(a, b, c) = [  cos(a)*cos(b),                       -cos(b)*sin(a),         sin(b);
 cos(c)*sin(a) + cos(a)*sin(b)*sin(c), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(c);
 sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(a)*sin(c) + cos(c)*sin(a)*sin(b),  cos(b)*cos(c)];


tm=matlabFunction(rot);

f=tm(x(1),x(2),x(3));
