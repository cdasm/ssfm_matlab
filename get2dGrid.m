function A0=get2dGrid(a,b)

A0=zeros((a+1)*(b),2);

astart=-pi/2;
bstart=0;

astep=pi/a;
bstep=2*pi/b;

for i=0:a
    for j=0:b-1
        A0(i*b+j+1,:)=[astart+i*astep,bstart+j*bstep];
    end
end
