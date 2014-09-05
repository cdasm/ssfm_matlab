function pnt=cbestPoint(trans,rots,spts)

siz=size(trans);
n=siz(1);

nspts=spts;
for i=1:n
    nspts(i,:)=(rotateMM(rots(i,:))*spts(i,:)')'/norm(spts(i,:));
end

ceffs=zeros(3,4);

for i=1:n
    ceffs=ceffs+forcbestPoint(trans(i,:),nspts(i,:));
end


[a,b,c]=solveAlinearfucntion(ceffs);
pnt=[a,b,c];