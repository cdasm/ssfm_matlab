syms a
syms b
syms c

 rot(a,b,c)=[ 1, 0, 0;
 0, cos(c), -sin(c);
 0, sin(c), cos(c)]*[ cos(b), 0, sin(b);
 0, 1, 0;
 -sin(b), 0, cos(b)]*[ cos(a), -sin(a), 0;
 sin(a), cos(a), 0;
 0, 0, 1]
 