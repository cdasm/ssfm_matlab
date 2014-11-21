function [func_,jfunc_]=from021Funcs_b()
syms p1 p2 p3 q1 q2 q3 t1 t2 r1 r2 r3 real;

c1=forbestPoint_UnitLengthU([0,0,0],[p1,p2,p3])

rot=rotation_thompson(r1,r2,r3)

pnt=(rot*[q1,q2,q3]')'

t=transition_TfromS(t1,t2)

c2=forbestPoint_UnitLengthU(t,[pnt(1),pnt(2),pnt(3)])

c2=simplify(c2)

c1=simplify(c1)

c=c1+c2
c=simplify(c)

[x,y,z]=solveAlinearfucntion(c)

opnt=[x,y,z]


proj1=opnt/sqrt(opnt*opnt');

tp2=opnt-t
proj2=tp2/sqrt(tp2*tp2');

pe1=proj1-[p1,p2,p3];

pe2=proj2-pnt;

pe11= acos(dot(opnt,[p1 p2 p3])/sqrt(opnt*opnt'));
%proj1=opnt/sqrt(opnt*opnt');


pe22=acos(dot( tp2,pnt) /sqrt(tp2*tp2'));

%pe1=[opnt(1)/p1-opnt(2)/p2,opnt(2)/p2-opnt(3)/p3,opnt(3)/p3-opnt(1)/p1]
%pe2=[tp2(1)/pnt(1)-tp2(2)/pnt(2),tp2(2)/pnt(2)-tp2(3)/pnt(3),tp2(3)/pnt(3)-tp2(1)/pnt(1)]

pe=cat(2,pe1,pe11,pe2,pe22)

jsym=jacobian(pe,[r1,r2,r3,t1,t2]);


func_=matlabFunction(pe);

jfunc_=matlabFunction(jsym);