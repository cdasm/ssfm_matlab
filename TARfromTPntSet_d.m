function [t,r,g]=TARfromTPntSet_d(skpt1,skpt2) 



num=mylength(skpt1);


err=intmax;

thee=rand(3,3);

goldnum=round(num*0.85);

for i=1:1000
    
     choice=randperm(num);
     try
   [~, ee]=  calibrated_fivepoint_non_gb (skpt1(choice(1:5),:),skpt2(choice(1:5),:));
    if size(ee,2)>0
        for j=1:size(ee,2)
            e=reshape(ee(:,j),[3,3]);

            errors=abs(diag(skpt1*e*skpt2'));
            diss=sort(errors);
            curerr=sum(diss(1:goldnum));
            if curerr<err
                err=curerr;
                thee=e;
            end

        end
    end
     catch me
     end
    
end

usenum=max(round(num*0.8),30);

e=thee;

errors=abs(diag(skpt1*e*skpt2'));

[~,ind]=sort(errors);

[t,r,g]=TARfromTPntSet_c( skpt1( ind(1:usenum) ,:),skpt2(ind(1:usenum),:) );




