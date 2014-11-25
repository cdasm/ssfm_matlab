function r= testfrom021(n)

n=0;
for i=1:20
    [pp,sp1,sp2,t,r]=synthesisData(5);
[mr,mt]=from021_good(sp1,sp2);
a=t./mt;

a=a./sqrt(a*a');

if sum(abs(a-[0.5774    0.5774    0.5774]))<0.01
    n=n+1;
end

r=n/20;
end