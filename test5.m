function sr=test5()

grid=get2dGrid(10,20)
n=mylength(grid)

[pp,sp1,sp2,t,r]=synthesisData(10)


error=zeros(n,1);
mr=cell(n,1);
mt=cell(n,1);
for i=1:n
    [mr{i},mt{i},error(i,:)]=from021_goodinit(sp1,sp2,grid(i,:));
end

[~,idx]=min(error);

idx
min(error)

rmt=mt{idx(1)};

rmt
t

sr=rmt./t