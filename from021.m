function [Rr,rt] = from021(pnt1,pnt2)

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
%opnt=simplify(opnt)

proj1=opnt/sqrt(opnt*opnt');

tp2=opnt-t
proj2=tp2/sqrt(tp2*tp2');

pe1=proj1-[p1,p2,p3];

pe2=proj2-pnt;

pe=cat(2,pe1,pe2)

jsym=jacobian(pe,[r1,r2,r3,t1,t2]);


func_=matlabFunction(pe);


display('func ok')
jfunc_=matlabFunction(jsym);

display('jac ok')

func=@(x,y)func_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5));

jfunc=@(x,y)jfunc_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5));

N=mylength(pnt1);

data_l=zeros(N,6);

data_l(:,1:3)=pnt1;
data_l(:,4:6)=pnt2;

obs_l=zeros(1,6*N);

randt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[1 1 1 1 1]);

Rr=rotation_thompson(randt(1),randt(2),randt(3));
%t=[randt(4),randt(5),randt(6)];
rt= transition_TfromS (randt(4),randt(5));


