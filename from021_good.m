function [Rr,rt] = from021_good(pnt1,pnt2)

persistent func_;
persistent jfunc_;

%if isempty(func_)
%    [func_,jfunc_]=from021Funcs_good();
%end

display('func ok')


display('jac ok')


func=@(x,y)goodError_mex(x,y,100);

jfunc=@(x,y)goodJsym_mex(x,y,100);


func
jfunc

N=mylength(pnt1);

data_l=zeros(N,6);

data_l(:,1:3)=pnt1;
data_l(:,4:6)=pnt2;

obs_l=zeros(1,8*N);

randt=mylevenbergMarquart_advanced(data_l,obs_l,func,jfunc,[1 1 1 1 1]);

Rr=rotation_thompson(randt(1),randt(2),randt(3));
%t=[randt(4),randt(5),randt(6)];
rt= transition_TfromS (randt(4),randt(5));


