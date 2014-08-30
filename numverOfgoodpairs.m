function num=numverOfgoodpairs(pairs,v)
num=0;

siz=size(pairs);
nv=norm(v);
for i=1:siz(1)
    if(norm( pairs(i,1:3)-(pairs(i,4:6)+v) )<nv)
        num=num+1;
    end
end


end