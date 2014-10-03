function [transitions,rotations,pts]=estimateforSequence_f()

seq='gpts.lst';
goldpts='goldenpnt.lst';
pntpos= 'goldencorres.lst';
[fnms,gptcorres,pntposs,nframes,npts,skptss,indss,iptss]=prepareForSequence(seq,goldpts,pntpos);

rotations=cell(nframes);
rotations{1}=eye(3);
transitions=zeros(nframes,3);
pts=zeros(npts,3);
goodmark=zeros(npts,1);

for i=3:nframes
    
    indlocal=cell(3,1);
    for j=1:3
        indlocal{j}=indss{i-3+j};
    end
   
    matches=matchBetweenSeveralVs(indlocal);
    
    skpt=cell(3,1);
    
    for j=1:3
        skpt{j}=skptss{i-3+j}(matches(:,j),:);
    end
         
    
    tran=cell(3,1);
    rot=cell(3,1);
    gscore=cell(3,1);
    ind=cell(3,1);
    
    [tran{1},rot{1},gscore{1},ind{1}]=TARfromTPntSet_c(skpt{1},skpt{2});
    [tran{2},rot{2},gscore{2},ind{2}]=TARfromTPntSet_c(skpt{2},skpt{3});
    [tran{3},rot{3},gscore{3},ind{3}]=TARfromTPntSet_c(skpt{1},skpt{3});
    
    cads=cell(3,1);
    
    for j=1:3
        cads{j}=indexOfBestN(gscore{j},2);
    end
    
    bscore=0; bind=0;
    
    sindx=setMultiply([2,2,2]');
    gindx=zeros(mylength(sindx),3);
    for j=1:mylength(sindx)
        for k=1:3
            gindx(j,k)=cads{k}(sindx(j,k)) ;
        end
    end
    
    
    tscores=zeros(mylength(sindx),1);
    for j=1:mylength(sindx)
        tc=cell(3,1);
        for k=1:3
            tc{k}= ind{k} {gindx(j,k) }; 
        end
        score=mylength(matchBetweenSeveralVs(tc));
        tscores(j)=score;
        if score>bscore
            bscore=score;
            bind=j;
            
        end
    end
    [tosee,tind]=sort(tscores);
    tosee
    scs=zeros(mylength(sindx),1);
   for j=1:mylength(sindx)
        ind2=gindx(tind(j),1);
        transitions(i-1,:)=transitions(i-2,:)+tran{1}( ind2 ,:);
        rotations{i-1}=rot{1}{ind2};
        
         ind3=gindx(tind(j),2);
         ind1=gindx(tind(j),3);
        scs(j)=bestScale_c(transitions(i-2,:),tran{3}(ind1,:),transitions(i-1,:),(rotations{i-1}* tran{2}(ind3,:)')');
        
       
        rotations{i}=rotations{i-1}* rot{2}{ind3};
   end
   scs
   waitforbuttonpress;
    %else
    %end

   % transitions(i,:)=transitions(i-1,:)+tran1;
   % rotations{i}=rot1;
 

end

end