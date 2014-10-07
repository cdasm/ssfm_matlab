function [t,r,g]=TRGoodscoreFromE(e,skpt1,skpt2) 



t=zeros(4,3);

r=cell(4,1);


i=1;
[a,b,c]=torr_EtoRt(e);
tt=fromcrossmatrix(a);
t(i*4-3,:)=tt;
r{i*4-3,:}=b;

t(i*4-2,:)=tt;
r{i*4-2,:}=c;

t(i*4-1,:)=-tt;
r{i*4-1,:}=b;

t(i*4,:)=-tt;
r{i*4,:}=c;





g=zeros(4,1);


for i=1:4
    %frot=rotateF(r(i,1),r(i,2),r(i,3));
    [g(i,1)]=numberOfgoodpairs(skpt1,(r{i}*skpt2')',t(i,:));
end