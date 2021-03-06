function re = minRotation_eutest( t,pt1,pt2 )
%A faster way to estimate rotation

%syms a b c real;




trans=repmat(t,[mylength(pt1),1]);

todot=cross(pt1,trans,2)./repmat(sqrt(sum(cross(pt1,trans,2).*cross(pt1,trans,2),2)) ,[1,3]);

f=@(x) (dot(todot, (rotateM(x(1),x(2),x(3))*pt2')',2));

cr=15;

re=lsqnonlin(f,[0,0,0],[0,0,0],[2*pi,2*pi,2*pi],getoptimzeoption);


end

