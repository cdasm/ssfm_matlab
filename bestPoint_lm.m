function pnt=bestPoint_lm(p,u)

syms p1 p2 p3 u1 u2 u3 x y z real

xtem=[x y z]-[p1 p2 p3];

tem=[xtem(1)/u1-xtem(2)/u2,xtem(2)/u2-xtem(3)/u3,xtem(3)/u3-xtem(1)/u1];

jsym=jacobian(tem,[x,y,z]);

func_=matlabFunction(tem);
jfunc_=matlabFunction(jsym);

func=@(x,y)func_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3));
%jfunc=@(x,y)jfunc_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3));
jfunc=@(x,y)jfunc_(x(4),x(5),x(6));
data_l=zeros(mylength(p),6);
data_l(:,1:3)=p;
data_l(:,4:6)=u;
obs_l=zeros(1,mylength(p)*3);

%aa=bestPoint_pu(p,u);
aa=rand(1,3)*3;
pnt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,aa);