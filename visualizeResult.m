function visualizeResult(fn)

fls=readLst(fn);

trans=zeros(length(fls),3);
rot=zeros(length(fls),3);
rotf=cell(length(fls),1);



for  i=1:length(fls)
    ws=load(fls{i});
    trans(i,:)=ws(1,1:3);
    rot(i,:)=ws(1,4:6);
    rotf{i}=rotateF(rot(i,1),rot(i,2),rot(i,3))
end

rout=zeros(1+length(fls),3);

for i=1:length(fls)
    rout(i+1,:)=rout(i,:)+trans(i,:);
end
plot3(rout(:,1),rout(:,2),rout(:,3))