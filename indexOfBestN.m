function r=indexOfBestN(V,n)

[~,ind]=sort(V);

r=zeros(n,1);

for i=1:n
    
    r(i,1)=ind(mylength(V)+1-i);
end

