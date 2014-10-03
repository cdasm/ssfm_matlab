function re=minRotation_f(t,pt1,pt2)



n=mylength(pt1);

diss=@(p,u,q,v) dot((q-p),cross(u,v,2),2)./sum(cross(u,v,2),2);

f=@(x) diss(repmat([0,0,0],[n,1]),pt1,repmat(t,[n,1]),(rotateM(x(1),x(2),x(3))*pt2')');

re=lsqnonlin(f,[0,0,0],[0,0,0],[2*pi,2*pi,2*pi],getoptimzeoption);