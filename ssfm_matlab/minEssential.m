function m = minEssential(pt1,pt2)


%dot( cross(pt1,repmat([cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))],[mylength(pt1),1]),2),pt2,2).^2

f=@(x)dot( cross(pt1,repmat([cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))],[mylength(pt1),1]),2),pt2,2);


x=lsqnonlin(f,[0,0,0,0,0],[-pi,-pi,-pi,-pi],[pi,pi,pi,pi,pi],getoptimzeoption);


m=essentialMatrix(x(1),x(2),x(3),x(4),x(5));

