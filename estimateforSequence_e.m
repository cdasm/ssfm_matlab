function [transitions,rotations,pts]=estimateforSequence_e()

seq='gpts.lst';
goldpts='goldenpnt.lst';
pntpos= 'goldencorres.lst';
[fnms,gptcorres,pntposs,nframes,npts,skptss,indss,iptss]=prepareForSequence(seq,goldpts,pntpos);

rotations=zeros(nframes,3);
transitions=zeros(nframes,3);
pts=zeros(npts,3);
goodmark=zeros(npts,1);

for i=2:nframes
    i
    skpt1=skptss{i-1};
    ind1=indss{i-1};
    skpt1=(rotateMM(rotations(i-1,:))*skpt1')';
    
    skpt2=skptss{i};
    ind2=indss{i};
    matches=matchBetweenTwoV(ind1,ind2);
    
    tmatches=matches;
    for k=1:1000
        [tran,rot,gscore]=TARfromTPntSet_b(skpt1(tmatches(:,1),:),skpt2(tmatches(:,2),:));
        tran
        rot
        gscore
        mi=find(gscore==max(gscore));  

        tran1=tran(mi(1),:)
        rot1=rot(mi(1),:)

        dpts=zeros(mylength(matches),3);
        ddis=zeros(mylength(matches),1);
        for j=1:mylength(matches)
           [dpts(j,:),ddis(j,:)]=bestPoint_d([0,0,0;tran1],[0,0,0;rot1],[skpt1(matches(j,1),:);skpt2(matches(j,2),:)]);
        end
         tmatches=matches(abs(ddis)<median(abs(ddis)),:);
         if mod(k,12)==0
         waitforbuttonpress;
         end
    end

    transitions(i,:)=transitions(i-1,:)+tran1;
    rotations(i,:)=rot1;
 

end