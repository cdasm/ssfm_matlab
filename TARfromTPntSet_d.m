function [t,r,g]=TARfromTPntSet_d(skpt1,skpt2) 



num=mylength(skpt1);


err=intmax;

theee=rand(9,4);

goldnum=round(num*0.85);

for i=1:1000
    
     choice=randperm(num);
    ee=  calibrated_fivepoint (skpt1(choice(1:5),:),skpt2(choice(1:5),:));
    if size(ee,2)>0
        e=reshape(ee(:,size(ee,2)),[3,3]);
        if rank(e) >= 2 
            errors=abs(diag(skpt1*e*skpt2'));
            diss=sort(errors);
            curerr=sum(diss(1:goldnum));
            if curerr<err
                err=curerr;
                theee=ee;
            end
        end
    end
    
end

usenum=max(round(num*0.6),30);

e=reshape(theee(:,size(theee,2)),[3,3]);

errors=abs(diag(skpt1*e*skpt2'));

[~,ind]=sort(errors);

[t,r]=TARfromTPntSet_c( skpt1( ind(1:usenum) ,:),skpt2(ind(1:usenum),:) );

g=zeros(mylength(t),1);
for i=1:mylength(t)
    %frot=rotateF(r(i,1),r(i,2),r(i,3));
    g(i,1)=numberOfgoodpairs(skpt1,(r{i}*skpt2')',t(i,:));
end



