function re=minRotation_c(t,pt1,pt2)

options=optimset('GradObj','on');
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;

n=mylength(pt1);

f=@(x) sum(minDisBtnTwoLinePairs(repmat([0,0,0],[n,1]),pt1,repmat(t,[n,1]),(rotateM(x(1),x(2),x(3))*pt2')'));

re=fminsearch(f,[0,0,0],options);