function [fc,df]= ErrAftRotTranSphPrjGamma(x,inp1,inp2 )


persistent fc_;
persistent df_;

if isempty(fc_)
    [fc_,df_]=for_ErrAftRotTranSphPrj(inp1,inp2)
end


fc=fc_(x(1),x(2),x(3),x(4),x(5),x(6))
for i=1:6
    df(i)=df_{i}(x(1),x(2),x(3),x(4),x(5),x(6))
end


