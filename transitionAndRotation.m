function re=transitionAndRotation(pts, spts)
%input are pysical points and the shperical image

syms a b c d e f real;

ro = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)];

n=length(pts);
trans=repmat([d,e,f],[n,1]);

pts=pts-trans;
nspts=(ro*spts')';

func=sum( acos(dot(pts,nspts,2)./sqrt( sum(pts.*pts,2) )./sqrt( sum(nspts.*nspts,2) )).^2);

r=matlabFunction(func);
fme=@(x)r(x(1),x(2),x(3),x(4),x(5),x(6));
options=optimset('GradObj','on');
options.MaxFunEvals = 2000000;
re=fminsearch(fme,[0,0,0,0,0,0],options);




end
