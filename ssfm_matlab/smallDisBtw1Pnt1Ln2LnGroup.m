function re=smallDisBtw1Pnt1Ln2LnGroup(p,u,q,v)

n=mylength(p);
re=zeros(n,1);

for i=1:n
    re(i,:)=smallDisBtw1Pnt1Ln2Ln(p(i,:),u(i,:),q(i,:),v(i,:));
end