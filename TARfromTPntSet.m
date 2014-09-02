function [transition,rotation]=TARfromTPntSet(skpt1,skpt2) 


number=length(skpt1);
matr=zeros(number,9);

for i=1:number 
    matr(i,:)=reshape(skpt1(i,:)'*skpt2(i,:),[1,9]);
end

[s,v,d]=svd(matr);

e=cell(3,1);

for i=1:3
    e{i}=reshape(d(:,6+i),[3,3])';
end

t=zeros(3,3);


for i=1:3
    [es,ev,ed]=svd(e{i});
    t(i,:)=ed(:,3)';
    
    if(numverOfgoodpairs(skpt1,skpt2,t(i,:))<numverOfgoodpairs(skpt1,skpt2,t(i,:)*-1))
        t(i,:)=t(i,:)*-1;
    end
   % g(i)=numverOfgoodpairs(skpt1,skpt2,t(i,:));
end


r=zeros(3,3);
for i=1:3
    tt=t(i,:);
    r(i,:)=aminRotation(tt,skpt1,skpt2);
end
g=zeros(3,1);

for i=1:3
    frot=rotateF(r(i,1),r(i,2),r(i,3));
    g(i)=numverOfgoodpairs(skpt1,frot(skpt2),t(i,:));
end

mi=3;
if g(2)>g(3)
    mi=2;
end

transition=t(mi,:);
rotation=r(mi,:);