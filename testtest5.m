function r= testtest5()


n=0;

for i=1:2000
a=test5();

a=a./sqrt(a*a');

if sum(abs(a-[0.5774    0.5774    0.5774]))<0.01
    n=n+1;
end


end

r=n/2000;