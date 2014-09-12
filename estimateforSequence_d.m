function [transitions,rotations,pts]=estimateforSequence_d(seq,goldpts,pntpos)

fnms=readLst(seq);

gptcorres=readLst_a(goldpts);
pntposs=readLst_a(pntpos);

nframes=length(fnms);
npts=length(gptcorres);

rotations=cell(nframes,1);
rotations{1}=eye(3);
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
    skpt1=(rotations{i-1}*skpt1')';
    
    skpt2=skptss{i};
    ind2=indss{i};
    matches=matchBetweenTwoV(ind1,ind2);
    
    [tran,rot,gscore]=TARfromTPntSet_c(skpt1(matches(:,1),:),skpt2(matches(:,2),:));
   

    mi=find(gscore==max(gscore));
    
 
    tran1=tran(mi(1),:);
    rot1=rot{mi(1)};
    
   

    transitions(i,:)=transitions(i-1,:)+tran1;
    rotations{i}=rot1;
 

end


end


%    dpts=zeros(mylength(matches),3);
%    for j=1:mylength(matches)
%       dpts(j,:)=bestPoint_at([0,0,0;tran1],[0,0,0;rot1],[skpt1(matches(j,1),:);skpt2(matches(j,2),:)]);
%    end
%    gind=find(goodmark>0);
%    matche=matchBetweenTwoV(ind2(matches(:,2)),gind);
%    if(~isempty(matche))
%        tmpts=pts(gind(matche(:,2)),:);
           
%        re=bestScale_b(tmpts-repmat(transitions(i-1,:),[mylength(tmpts),1]),dpts(matche(:,1),:))
        %=transitionAndRotation_c(tmpts ,skpt2(matche(:,1),:));
        
%        tran1=tran1*re;
%    end
    
%    for j=1:mylength(matches)
%        ptind=ind1(matches(j,1));
%        frmind=i;
%        inds=find(gptcorres{ptind}<=frmind);
%        frms=gptcorres{ptind}(inds);
%        tmspts=iptss{ptind}(inds,:);
%        tmtran=transitions(frms,:);
%        tmro=rotations(frms,:);
%        pts(ptind,:)=bestPoint_at(tmtran,tmro,tmspts);
%        goodmark(ptind,1)=1;
%    end