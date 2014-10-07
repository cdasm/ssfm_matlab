function mt=matchBetweenTwoV(v1,v2)

c=intersect(v1,v2);



mt=zeros(mylength(c),2);

for i=1:mylength(mt)
    mt(i,1)=find(v1==c(i));
    mt(i,2)=find(v2==c(i));
end

end
