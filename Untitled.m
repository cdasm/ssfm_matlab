syms a
syms b
syms c

 rot(a,b,c)=[ 1, 0, 0;
 0, cos(c), -sin(c);
 0, sin(c), cos(c)]*[ cos(b), 0, sin(b);
 0, 1, 0;
 -sin(b), 0, cos(b)]*[ cos(a), -sin(a), 0;
 sin(a), cos(a), 0;
 0, 0, 1]



for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b,c]=TARfromTPntSet_autest(sp1,sp2);
    a./repmat(t,[6,1])
    b./repmat(r,[6,1])
    waitforbuttonpress;
end
 

as=zeros(100,3);
bs=zeros(100,3);
for i=1:100
    i
   [p,sp1,sp2,t,r]=synthesisData(300);
    re=transitionAndRotation_b(p,sp2);
    re=real(re);
    b=re(1,1:3);
    a=re(1,4:6);
    a./t
    b./r
   % as(i,:)=;
   % bs(i,:)=;
    waitforbuttonpress;
end




agood=0;
 good=0;
 record=zeros(100,2);
for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b,c]=TARfromTPntSet_autest(sp1,sp2);
    ta=a./repmat(t,[6,1]);
    tb=b./repmat(r,[6,1]);
    
    if(c(3,2)>c(6,2))
        mi=3;
    else
        mi=6;
    end
    
    tran=a(mi,:);
    rot=b(mi,:);
    
  % record(i,1)=sum(abs( b(mi,:) ))-3;
    if( sum(abs( b(mi,:) ))-3 < 1e-4 )
        agood=agood+1;
        pts=zeros(mylength(p),3);
        
        for j=1:mylength(p)
            pts(j,:)=bestPoint_c([0,0,0;tran],[0,0,0;rot],[sp1(j,:);sp2(j,:)]);
        end
        n=mylength(p);
        rati=pts./p;
        %record(i,2)=;
        sum(rati-repmat((tran./t),[n,1]))
        if(sum(sum(rati-repmat((tran./t),[n,1])))<1e-3)
            good=good+1;
        end
        
    end
     
   %waitforbuttonpress;
end
agood
good


good=0;

for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b]=bestTaR_a (sp1,sp2);
    a./t
    if abs(sum(abs(b./r))-3)<1e-3
        good=good+1;
    end
    %waitforbuttonpress;
end
good

 