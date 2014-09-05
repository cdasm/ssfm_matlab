function re=transitionAndRotation_a(pts, spts)
%input are pysical points and the shperical image

%syms a b c d e f real;

%ro = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)];


options=optimset('GradObj','on');
%options.MaxFunEvals = 2000000;
%set(options,'Maxiter',2000000);
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;


n=mylength(pts);
f=@(x)sum( acos(dot((pts-repmat([x(4),x(5),x(6)],[n,1])),(rotateM(x(1),x(2),x(3))*spts')',2)./sqrt( sum((pts-repmat([x(4),x(5),x(6)],[n,1])).*(pts-repmat([x(4),x(5),x(6)],[n,1])),2) )./sqrt( sum(spts.*spts,2) )).^2);

re=fminsearch(f,[0,0,0,0,0,0],options);


end
