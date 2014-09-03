function num=numverOfgoodpairs(p1,p2,v)
num=0;


nv=norm(v);

for i=1:mylength(p1)
    if(norm( p1(i,:)-(p2(i,:)+v) )<nv)
        num=num+1;
    end
end


end