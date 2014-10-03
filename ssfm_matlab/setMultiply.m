function r=setMultiply(v)

n=mylength(v);

siz=1;

for i=1:n
    siz=siz*v(i);
end

r=ones(siz,n);

for i=2:siz
    r(i,:)=r(i-1,:);
    r(i,1)=r(i,1)+1;
    
    j=1;
    while r(i,j)>v(j) && j<=n
        r(i,j)=1;
        j=j+1;
        r(i,j)=r(i,j)+1;
    end
    
end


end