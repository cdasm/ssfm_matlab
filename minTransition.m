function re = minTransition(pt1,pt2 )
%A faster way to estimate rotation

%syms a b c real;


%[cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))]

%trans=repmat(t,[mylength(pt1),1]);

%todot=cross(pt1,trans,2)./repmat(sqrt(sum(cross(pt1,trans,2).*cross(pt1,trans,2),2)) ,[1,3]);

%f=@(x) (dot(todot, (rotateM(x(1),x(2),x(3))*pt2')',2));

f=@(x) sqrt ( dot( cross(pt1,repmat([cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))],[mylength(pt1),1]),2),pt2,2).^2);

%cr=3;

x=lsqnonlin(f,[pi/2,pi],[0,0],[pi,2*pi],getoptimzeoption);

re=[cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))];




end

