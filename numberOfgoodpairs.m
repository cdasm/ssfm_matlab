function [num,indx]=numberOfgoodpairs(p1,p2,v)



nv=norm(v);

%for i=1:mylength(p1)
%    if(norm( p1(i,:)-(p2(i,:)+v) )<nv)
%        num=num+1;
%    end
%end

toc=p1-p2-repmat(v,[mylength(p1),1]);

tt=sqrt(sum( toc.^2,2))-repmat(nv,[mylength(p1),1]);

num=sum(tt<0);
indx=find(tt<0);

end