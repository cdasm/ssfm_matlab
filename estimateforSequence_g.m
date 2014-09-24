function [transitions,rotations,pts]=estimateforSequence_g()

seq='gpts.lst';
goldpts='goldenpnt.lst';
pntpos= 'goldencorres.lst';
[fnms,gptcorres,pntposs,nframes,npts,skptss,indss,iptss]=prepareForSequence(seq,goldpts,pntpos);

rotations=cell(nframes,1);
rotations{1}=eye(3);
transitions=zeros(nframes,3);
pts=zeros(npts,3);
goodmark=zeros(npts,1);

for i=2:nframes
    i
    skpt1=skptss{i-1};
    ind1=indss{i-1};
    skpt1=(rotations{i-1}*skpt1')';
    
    skpt2=skptss{i};
    ind2=indss{i};
    matches=matchBetweenTwoV(ind1,ind2);
    
    [tran,rot,gscore]=TARfromTPntSet_d(skpt1(matches(:,1),:),skpt2(matches(:,2),:));

    [~,idx]=sort(gscore);
    
    cad1=idx(mylength(idx));
    cad2=idx(mylength(idx)-1);
  
 
    gscore(cad1)
    gscore(cad2)
    tran1=tran(cad1,:);
    rot1=rot{cad1};
    
    sc=1;
 
    
    transitions(i,:)=transitions(i-1,:)+tran1*sc;
    rotations{i}=rot1;
 
    %waitforbuttonpress
end