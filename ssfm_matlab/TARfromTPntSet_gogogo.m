function [t,r]=TARfromTPntSet_gogogo(skpt1,skpt2) 



num=mylength(skpt1);


[a,b,c]=TARfromTPntSet_c(skpt1,skpt2);
 mi=find(c==max(c));
tt=a(mi(1),:);
 rt=b{mi(1)};

for i=1:30

    ttem=minTransition(skpt1,(rt*skpt2')');
    
    for j=1:3
        if ttem(j)*tt(j)<0
            ttem(j)=-1*ttem(j);
        end
    end
    
    tt=ttem;
    
    rt= rotateMM( minRotation_e(tt,skpt1,skpt2));
    
end

t=tt;
r=rt;