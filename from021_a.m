function [Rr,rt] = from021_a(pnt1,pnt2)

persistent func_;
persistent jfunc_;

if isempty(func_)
    [func_,jfunc_]=from021Funcs_a();
end

display('func ok')


display('jac ok')


func=@(x,y)func_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5));

jfunc=@(x,y)jfunc_(x(1),x(2),x(3),x(4),x(5),x(6),y(1),y(2),y(3),y(4),y(5));

N=mylength(pnt1);

data_l=zeros(N,6);

data_l(:,1:3)=pnt1;
data_l(:,4:6)=pnt2;

obs_l=zeros(1,2*N);

randt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[1 1 1 1 1]);

Rr=rotation_thompson(randt(1),randt(2),randt(3));
%t=[randt(4),randt(5),randt(6)];
rt= transition_TfromS (randt(4),randt(5));


