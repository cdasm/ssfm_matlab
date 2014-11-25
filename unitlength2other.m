syms c11 c12 c13 c14 c21 c22 c23 c24 c31 c32 c33 c34 real

c1=[c11 c12 c13 c14; c21 c22 c23 c24; c31 c32 c33 c34]

%ordinary to itself

syms d1 d2 d3 e1 e2 e3 f1 f2 f3 q1 q2 q3 t1 t2 r1 r2 r3 zz real;



rot_=rotation_thompson(e1,e2,e3)

pnt_=(rot_*[d1,d2,d3]')'

t_=[f1,f2,f3]

c2=forbestPoint_UnitLengthU(t_,pnt_)

c2=simplify(c2)

c=c1+c2

[x,y,z]=solveAlinearfucntion(c)

opnt=[x,y,z]

t=transition_TfromS(t1,t2)

rot=rotation_thompson(r1,r2,r3)

pnt=(rot*[q1,q2,q3]')'

tp2=opnt-t

proj2=tp2/sqrt(tp2*tp2');

pe2=proj2-pnt;

pe=cat(2,pe2*zz,disPntLine_unitlength(opnt,t,pnt))

jsym=jacobian(pe,[e1,e2,e3,f1,f2,f3]);

outputcpp(jsym,'unitlength2other');


