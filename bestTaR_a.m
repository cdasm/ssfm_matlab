function [t,r]=bestTaR_a(skpt1,skpt2,dvalue)

if nargin<3
    dvalue=[0,0,0,0,0];
end

%n=mylength(pt1);

%f=@(x) sum(minDisBtnTwoLinePairs(repmat([0,0,0],[n,1]),pt1,repmat(t,[n,1]),(rotateM(x(1),x(2),x(3))*pt2')'));

%re=fminsearch(f,[0,0,0],options);

n=mylength(skpt1);

f=@(x)sqrt( minDisBtnTwoLinePairs(repmat([0,0,0],[n,1]),skpt1,repmat([cos(x(1))*cos(x(2)),cos(x(1))*sin(x(2)) ,sin(x(1))],[n,1]),(rotateM(x(3),x(4),x(5))*skpt2')'));

re=lsqnonlin(f,dvalue,repmat(-pi,[1,5]),repmat(pi,[1,5]),getoptimzeoption);

t=[cos(re(1))*cos(re(2)),cos(re(1))*sin(re(2)) ,sin(re(1))];
r=[re(3),re(4),re(5)];