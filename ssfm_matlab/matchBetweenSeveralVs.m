function mt=matchBetweenSeveralVs(v)


n=mylength(v);
c=v{1};
for i=2:n
    c=intersect(c,v{i});
end

mt=zeros(length(c),n);

for i=1:mylength(mt)
    for j=1:n
        mt(i,j)=find(v{j}==c(i));
    end
end

end
