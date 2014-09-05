function [transitions,rotations,pts]=estimateforSequence_c(seq,goldpts,pntpos)

fnms=readLst(seq);

gptcorres=areadLst(goldpts);
pntposs=areadLst(pntpos);

nframes=length(fnms);
npts=length(gptcorres);

rotations=zeros(nframes,3);
transitions=zeros(nframes,3);
pts=zeros(npts,3);
goodmark=zeros(npts,1);


skptss=cell(nframes,1);
indss=cell(nframes,1);
iptss=cell(npts,1);

for i=1:nframes
    tmp=load(fnms{i});
    ind=tmp(:,1);    kpt=tmp(:,2:3);      n=mylength(kpt);
    skptss{i}=zeros(n,3);
    for j=1:n
        skptss{i}(j,:)=im2Serph(kpt(j,:),[512,256]);
    end
    indss{i}=ind;
end

for i=1:npts
    n=mylength(pntposs{i});
    iptss{i}=zeros(n,3);
    
    for j=1:n
        frmind=gptcorres{i}(j);
        iptss{i}(j,:)=skptss{frmind}(pntposs{i}(j),:);
    end
end


for i=2:nframes
 
    skpt1=skptss{i-1};
    ind1=indss{i-1};
    skpt1=(rotateMM(rotations(i-1,:))*skpt1')';
    
    skpt2=skptss{i};
    ind2=indss{i};
    matches=matchBetweenTwoV(ind1,ind2);
    
    [tran,rot,gscore]=TARfromTPntSet_a(skpt1(matches(:,1),:),skpt2(matches(:,2),:));
end


end