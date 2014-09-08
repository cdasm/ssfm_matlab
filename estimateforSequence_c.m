function [transitions,rotations,pts]=estimateforSequence_c(seq,goldpts,pntpos)

fnms=readLst(seq);

gptcorres=readLst_a(goldpts);
pntposs=readLst_a(pntpos);

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
    
    tran1=tran(1,:);
    rot1=rot(1,:);
    gind=find(goodmark>0);

    matche=matchBetweenTwoV(ind2,gind);
    
    if(~isempty(tind))
        tmpts=pts(matche(:,2),:);
        re=transitionAndRotation_a(tmpts ,skpt2(matche(:,1),:));
        rot1=re(1,1:3);
        tran1=re(1,4:6);
    end
    
    if i==2
        transitions(i,:)=tran(2,:)+transitions(i-1,:);
        rotations(i,:)=rot(2,:);
    else
        transitions(i,:)=tran1;
        rotations(i,:)=rot1;
    end
    
    for j=1:mylength(matches)
        ptind=ind1(matches(j,1));
        frmind=i;
        inds=find(gptcorres{ptind}<=frmind);
        frms=gptcorres{ptind}(inds);
        tmspts=iptss{ptind}(inds,:);
        tmtran=transitions(frms,:);
        tmro=rotations(frms,:);
        pts(ptind,:)=bestPoint_c(tmtran,tmro,tmspts);
        goodmark(ptind,1)=1;
    end
end


end