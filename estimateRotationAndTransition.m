function [R,t] = estimateRotationAndTransition(projpoints,points)

syms a b c d e f r1 r2 r3 t1 t2 t3 real; % a b c coordinates of projpoints d e f coordinates of points r1 r2 r3 rotation parameters
% t1 t2 t3 transition parameters

xtem=(rotation_MfromRodrigues(r1,r2,r3)*([d e f]-[t1 t2 t3])')';

ff=[xtem(1)/a-xtem(2)/b, xtem(2)/b-xtem(3)/c, xtem(3)/c-xtem(1)/a];

jsym=jacobian(ff,[r1 r2 r3 t1 t2 t3]);

func_=matlabFunction(ff);



jfunc_=matlabFunction(jsym);

func=@(x,y)func_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5),y(6));

jfunc=@(x,y)jfunc_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5),y(6));

N=mylength(projpoints);

data_l=zeros(N,6);

data_l(:,1:3)=projpoints;
data_l(:,4:6)=points;

obs_l=zeros(1,3*N);

randt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[1 1 1 1 1 1]);

R=rotation_MfromRodrigues(randt(1),randt(2),randt(3));
t=[randt(4),randt(5),randt(6)];



