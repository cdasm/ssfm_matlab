function [Rr,rt,error] = from021_goodinit(pnt1,pnt2,tinit)



func=@(x,y)goodError_mex(x,y,100);

jfunc=@(x,y)goodJsym_mex(x,y,100);


func
jfunc

N=mylength(pnt1);

data_l=zeros(N,6);

data_l(:,1:3)=pnt1;
data_l(:,4:6)=pnt2;

obs_l=zeros(1,8*N);

[randt,error]=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[rand(1,3),tinit]);


Rr=rotation_thompson(randt(1),randt(2),randt(3));
%t=[randt(4),randt(5),randt(6)];
rt= transition_TfromS (randt(4),randt(5));


