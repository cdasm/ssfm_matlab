syms p1 p2 p3 u1 u2 u3 x y z real

xtem=[x y z]-[p1 p2 p3];

tem=[xtem(1)/u1-xtem(2)/u2,xtem(2)/u2-xtem(3)/u3,xtem(3)/u3-xtem(1)/u1]/sqrt(xtem*xtem')

jsym=jacobian(tem,[x,y,z])