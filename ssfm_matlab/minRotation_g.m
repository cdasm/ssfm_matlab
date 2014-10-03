function re=minRotation_g(t,pt1,pt2)



n=mylength(pt1);


f=@(x)smallDisBtw1Pnt1Ln2LnGroup(repmat([0,0,0],[n,1]),pt1,repmat(t,[n,1]),(rotateM(x(1),x(2),x(3))*pt2')');


re=lsqnonlin(f,[0,0,0],[-pi,-pi,-pi],[pi,pi,pi],getoptimzeoption);