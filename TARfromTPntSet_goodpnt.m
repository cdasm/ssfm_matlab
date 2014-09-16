function [t,r]=TARfromTPntSet_goodpnt(skpt1,skpt2) 


num=mylength(skpt1);


t=zeros(1,3);
r=zeros(3,3);

tskpt1=skpt1;
tskpt2=skpt2;
th=round(num*0.85);

for i=1:400

    [a,b,c]=TARfromTPntSet_c(tskpt1,tskpt2);
     mi=find(c==max(c));
    tt=a(mi(1),:);
     rt=b{mi(1)};
        
     [gnum,ind]=numberOfgoodpairs(skpt1,(rt*skpt2')',tt);
        
      if(gnum>th)
          tskpt1=skpt1(ind,:);
          tskpt2=skpt2(ind,:);
          t=tt;
          r=rt;
          diss=errorBtnTwoLinePairs (tskpt1,repmat(tt,[mylength(tskpt1),1]),(rt*tskpt2')');
          ind=find(diss<prctile(diss,90));
          tskpt1=skpt1(ind,:);
          tskpt2=skpt2(ind,:);
          
      end
     
 end
end