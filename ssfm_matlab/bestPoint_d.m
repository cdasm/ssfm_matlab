function [pnt,dis]=bestPoint_d(trans,rots,spts)
%for a set of lines, there is a point on the first line which will minimize
%the sum of distances from the point to all other lines
siz=size(trans);
n=siz(1);

nspts=spts;
for i=1:n
    nspts(i,:)=(rotateMM(rots(i,:))*spts(i,:)')'/norm(spts(i,:));
end

tran=trans(1,:);
trans=trans(2:n,:);
nspt=nspts(1,:);
nspts=nspts(2:n,:);
siz=size(nspts);

n=siz(1);

%(dot(cross(q,v)-cross(p,v) ,cross(u,v))+dot(cross(r,w)-cross(p,w) ,cross(u,w)))/(dot(cross(u,v),cross(u,v))+dot(cross(u,w),cross(u,w)))%the case of two lines

tod=sum(sum(cross(nspt,nspts,2).^2,2));

t1=cross(trans,nspts,2);
t2=cross(repmat(tran,[n,1]),nspts,2);

t3=cross(repmat(nspt,[n,1]),nspts,2);

d=sum(dot(t1-t2,t3,2));

t=d/tod;

pnt=tran+t*nspt;

dis=sum(dissPntLines(pnt,trans,nspts));