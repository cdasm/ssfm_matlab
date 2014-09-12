function [t,r,g]=TARfromTPntSet_c(skpt1,skpt2) 

number=mylength(skpt1);
matr=zeros(number,9);

for i=1:number 
    matr(i,:)=reshape(skpt1(i,:)'*skpt2(i,:),[1,9]);
end

[s,v,d]=svd(matr);

e=cell(2,1);

for i=1:2
    e{i}=reshape(d(:,7+i),[3,3]);
end




t=zeros(8,3);

r=cell(8,1);


for i=1:2
   [a,b,c]=torr_EtoRt(e{i});
   t(i*4-3,:)=fromcrossmatrix(a);
   r{i*4-3,:}=b;
   t(i*4-2,:)=fromcrossmatrix(a);
   r{i*4-2,:}=c;
   t(i*4-1,:)=-fromcrossmatrix(a);
   r{i*4-1,:}=b;
   t(i*4,:)=-fromcrossmatrix(a);
   r{i*4,:}=c;
end

g=zeros(8,1);


for i=1:8
    %frot=rotateF(r(i,1),r(i,2),r(i,3));
    g(i,1)=numberOfgoodpairs(skpt1,(r{i}*skpt2')',t(i,:));
end


