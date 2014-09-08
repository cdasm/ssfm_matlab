function re=transitionAndRotation_c(pts, spts)
%input are pysical points and the shperical image

%syms a b c d e f real;

%ro = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)];




n=mylength(pts);
f=@(x)sum(sum(cross(pts-repmat([x(4),x(5),x(6)],[n,1]),(rotateM(x(1),x(2),x(3))*spts')',2).^2,2));

re=fminsearch(f,[0,0,0,0,0,0],getoptimzeoption);


end
