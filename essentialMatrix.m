function m=essentialMatrix(a,b,c,d,e)


%cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))
m=crossmatrix(cos(a)*cos(b),cos(a)*sin(b),sin(a))*rotateM(c,d,e);

