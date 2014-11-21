syms c11 c12 c13 c14 c21 c22 c23 c24 c31 c32 c33 c34 real

c1=[c11 c12 c13 c14; c21 c22 c23 c24; c31 c32 c33 c34]

%ordinary to itself

syms q1 q2 q3 t1 t2 r1 r2 r3 z real;

rot=rotation_thompson(r1,r2,r3)

pnt=(rot*[q1,q2,q3]')'

%t=[t1,t2,t3]
t=transition_TfromS(t1,t2)

c2=forbestPoint_UnitLengthU(t,pnt)

c2=simplify(c2)

c=c1+c2

[x,y,z]=solveAlinearfucntion(c)

opnt=[x,y,z]

tp2=opnt-t

proj2=tp2/sqrt(tp2*tp2');

pe2=proj2-pnt;

pe=cat(2,pe2*z,disPntLine_unitlength(opnt,t,pnt))

jsym=jacobian(pe,[r1,r2,r3,t1,t2]);


outputcpp(jsym,'unitlength2self');