function [t,r,g]=TARfromTPntSet_b(skpt1,skpt2) 

number=mylength(skpt1);
matr=zeros(number,9);

for i=1:number 
    matr(i,:)=reshape(skpt1(i,:)'*skpt2(i,:),[1,9]);
end

[s,v,d]=svd(matr);

e=cell(2,1);

for i=1:2
    e{i}=reshape(d(:,7+i),[3,3])';
end




t=zeros(4,3);

g=zeros(4,1);

for i=1:2
    [es,ev,ed]=svd(e{i});
    t(i,:)=ed(:,3)';  
    t(i+2,:)=t(i,:)*-1;
    %g(i,1)=numberOfgoodpairs(skpt1,skpt2,t(i,:));
    %g(i+3,1)=numberOfgoodpairs(skpt1,skpt2,t(i+3,:));
   % g(i)=numverOfgoodpairs(skpt1,skpt2,t(i,:));
end


r=zeros(4,3);
for i=1:4
    tt=t(i,:);
    r(i,:)=minRotation_e(tt,skpt1,skpt2);
end


for i=1:4
    frot=rotateF(r(i,1),r(i,2),r(i,3));
    g(i,1)=numberOfgoodpairs(skpt1,frot(skpt2),t(i,:));
end


