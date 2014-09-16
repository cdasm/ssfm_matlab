function [t,r]=TARfromTPntSet_ransac(skpt1,skpt2) 


num=mylength(skpt1);

%if(num<9)
%    return ;
    
%end

err=intmax;

th=round(num*0.85);% 85% good points at least to be considered as condidate

goldnum=round(num*0.9); % 90 points are assumed to be used when calculate error

t=zeros(1,3);
r=zeros(3,3);
for i=1:400
    choice=randperm(num);
    [a,b,c]=TARfromTPntSet_c(skpt1(choice(1:num/2),:),skpt2(choice(1:num/2),:));
     mi=find(c==max(c));
    tt=a(mi(1),:);
     rt=b{mi(1)};
        
     gnum=numberOfgoodpairs(skpt1,(rt*skpt2')',tt);
     if(gnum>th)
        
        
        diss=sort( errorBtnTwoLinePairs (skpt1,repmat(tt,[num,1]),(rt*skpt2')'));
        curerr=sum(diss(1:goldnum));
        
        if (curerr<err)
            
            t=tt;
            r=rt;
        end
     end
end