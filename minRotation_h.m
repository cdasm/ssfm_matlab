function re=minRotation_h(t,pt1,pt2)



n=mylength(pt1);


trans=repmat(t,[mylength(pt1),1]);

todot=cross(pt1,trans,2)./repmat(sqrt(sum(cross(pt1,trans,2).*cross(pt1,trans,2),2)) ,[1,3]);

f=@(x) asin(dot(todot, (rotateM(x(1),x(2),x(3))*pt2')',2));

re=lsqnonlin(f,[0,0,0],[-pi,-pi,-pi],[pi,pi,pi],getoptimzeoption);