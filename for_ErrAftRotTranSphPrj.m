function [tm,tm_] = for_ErrAftRotTranSphPrj(inp1,inp2 )
%%inp1 is the destinate vectors, inp are the original vectors
syms a b c d e f real;
syms a_f;
a_f=[a b c d e f];

rot(a, b, c) = [  cos(a)*cos(b),                       -cos(b)*sin(a),         sin(b);
 cos(c)*sin(a) + cos(a)*sin(b)*sin(c), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(c);
 sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(a)*sin(c) + cos(c)*sin(a)*sin(b),  cos(b)*cos(c)];


tfunc=(rot(a,b,c)*inp2')'-repmat([d e f],size(inp2,1),1);


ttfunc=cross(inp1,tfunc);

func=0;
for i=1:size(ttfunc,1)
    
    func=func+sqrt(ttfunc(i,:)*ttfunc(i,:)');
end

%df_(1)=diff(func,a);



tm=matlabFunction(func);

%fc=tm(x(1),x(2),x(3),x(4),x(5),x(6))
for i=1:6
    df_(a,b,c,d,e,f)=diff(func,a_f(i));
    tm_{i}=matlabFunction(df_);
%    df(i)=tm_(x(1),x(2),x(3),x(4),x(5),x(6))
end


