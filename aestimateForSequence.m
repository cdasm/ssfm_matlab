function [allpts,alltransitions,allrotations]=aestimateForSequence(fns)
fnms=readLst(fns);

alltransitions=zeros(length(fnms),3);
allrotations=zeros(length(fnms),3);
allpts=[];
[tr,ro,pts,ind]=estimateSimple(fnms{1});
alltransitions(1,:)=tr;
allrotations(1,:)=ro;
    for i=2:length(fnms)
    fn=fnms{i};
    imgs=readLst(fn);
    matches=load(strcat(fn,'.mtch'));
    kpt1=load(strcat(imgs{1},'.orb'));
    kpt2=load(strcat(imgs{2},'.orb'));
    number=length(matches);
    
    skpt1=zeros(number,3);
    skpt2=zeros(number,3);
    
    for j=1:number
        skpt1(j,:)=im2Serph(kpt1(matches(j,1)+1,:),[512,256]);  
        skpt2(j,:)=im2Serph(kpt2(matches(j,2)+1,:),[512,256]);   
    end
    
    num=0;
    for j=1:length(ind)
       if(~isempty(find(matches(:,1)==ind(j))))
           num=num+1;
       end
       
    end
    aind=zeros(num,1);
    tind=zeros(num,1);
    cind=1;
    for j=1:length(ind)
       if(~isempty(find(matches(:,1)==ind(j))))
           aind(cind)=j;
           tind(cind)=find(matches(:,1)==ind(j));    
           
           cind=cind+1;
       end
       
    end
    
   
    skpt=skpt2(tind,:);
    gpts=pts(aind,:);
    roatr=atransitionAndRotation(gpts,skpt);
    
    alltransitions(i,:)=roatr(1,4:6);
    allrotations(i,:)=roatr(1,1:3);
    
    transition=roatr(1,4:6);
    rf1=rotateF(ro(1),ro(2),ro(3));
    rf2=rotateF(roatr(1),roatr(2),roatr(3));
    tpts=zeros(length(skpt1),3);
    tdis=zeros(length(skpt1),1);
    for j=1:length(skpt1)
        rp=rf1(skpt1(j,:));
        tp=rf2(skpt2(j,:));
        [tdis(j),tpts(j,:)]=minDisBtnTwoLines(tr(1),tr(2),tr(3),rp(1),rp(2),rp(3),transition(1),transition(2),transition(3),tp(1),tp(2),tp(3));

    end

    indx= tdis<norm(transition-tr)/10;
    pts=tpts(indx,:);
    length(pts)
    ind=matches(indx,2);
    
    end  

   




end