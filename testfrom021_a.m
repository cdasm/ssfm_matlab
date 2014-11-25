function r= testfrom021_a(n)

n=0;
tt=20;
for i=1:tt
    [pp,sp1,sp2,t,r]=synthesisData(30);
[mr,mt]=from021_good(sp1,sp2);
a=t./mt;

a=a./sqrt(a*a');

if sum(abs(a-[0.5774    0.5774    0.5774]))<0.01
    n=n+1;
end

end


r=n/tt;