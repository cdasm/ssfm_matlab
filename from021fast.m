function [Rr,rt] = from021fast(pnt1,pnt2)



func=@(x,y)aE(x(1:3),x(4:6),y);

jfunc=@(x,y)aJ(x(1:3),x(4:6),y);

N=mylength(pnt1);

data_l=zeros(N,6);

data_l(:,1:3)=pnt1;
data_l(:,4:6)=pnt2;

obs_l=zeros(1,6*N);

randt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[1 1 1 1 1]);

Rr=rotation_thompson(randt(1),randt(2),randt(3));
%t=[randt(4),randt(5),randt(6)];
rt= transition_TfromS (randt(4),randt(5));


