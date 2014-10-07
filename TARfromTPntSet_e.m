function [t,r,g,gind]=TARfromTPntSet_e(skpt1,skpt2) 



num=mylength(skpt1);


err=intmax;

thee=rand(3,3);

goldnum=round(num*0.85);

for i=1:2000
    
     choice=randperm(num);
     try
   [~, ee]=  calibrated_fivepoint(skpt1(choice(1:5),:),skpt2(choice(1:5),:));
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

usenum=round(num*0.9);

e=thee;

errors=abs(diag(skpt1*e*skpt2'));

[~,ind]=sort(errors);

gind=ind(1:usenum);

skpt1=skpt1(gind,:);
skpt2=skpt2(gind,:);

number=mylength(skpt1);
matr=zeros(number,9);

for i=1:number 
    matr(i,:)=reshape(skpt1(i,:)'*skpt2(i,:),[1,9]);
end

%matr=singular_value_rpca(matr,0.11);
[~,~,d]=svd(matr);

e=cell(2,1);

for i=1:2
    e{i}=reshape(d(:,7+i),[3,3]);
    e{i}=bundle_E(e{i},skpt1,skpt2);
end
t=[];
r=[];
g=[];
for i=1:2
    [tt,tr,tg]=TRGoodscoreFromE(e{i},skpt1,skpt2);
    t=cat(1,t,tt);
    r=cat(1,r,tr);
    g=cat(1,g,tg);
end





