function [rotations,transitions,pts]=bestimateForSequence(seq,goldpts)

fnms=readLst(seq);

gptcorres=areadLst(goldpts);

rotations=zeros(length(fnms),3);
transitions=zeros(length(fnms),3);
pts=zeros(length(gptcorres),3);
goodmark=zeros(length(gptcorres),1);

nframes=length(fnms);
npts=length(gptcorres);

skptss=cell(nframes,1);
indss=cell(nframes,1);

forind=1:npts;

for i=1:nframes
    tmp=load(fnms{i});
    ind=tmp(:,1);    kpt=tmp(:,2:3);      n=length(kpt);
    skptss{i}=zeros(n,3);
    for j=1:n
        skptss{i}(j,:)=im2Serph(kpt(j,:),[512,256]);
    end
    indss{i}=ind;
end

iptss=cell(npts,1);

for i=1:npts
    iptss{i}=zeros(length(gptcorres{i}),3);
    n=length(gptcorres{i});
    for j=1:n
        frmind=gptcorres{i}(j);
        
        ti= find(indss{frmind}==i);
        iptss{i}(j,:)=skptss{frmind}(ti,:);
    end
end

for i=2:nframes
 
    skpt1=skptss{i-1};
    ind1=indss{i-1};
    skpt1=(rotateMM(rotations(i-1,:))*skpt1')';
    
    skpt2=skptss{i};
    ind2=indss{i};
    
    
    
    matches=matchBetweenTwoV(ind1,ind2);
    
    [tran,rot]=TARfromTPntSet(skpt1(matches(:,1),:),skpt2(matches(:,2),:));
    
    gind=find(goodmark>0);

    matche=matchBetweenTwoV(ind2,gind);
    if ~isempty(matche)
        s=bestScale(pts(gind(matche(:,2)),:)-repmat(transitions(i-1,:),[length(matche),1]),tran,rot,skpt2(matche(:,1),:))
        tran=tran*s;
    end
    transitions(i,:)=tran+transitions(i-1,:);
    rotations(i,:)=rot;
    
    tpts=zeros(length(matches),3);
    tdis=zeros(length(matches),1);
    rmt=rotateMM(rot);
    for j=1:length(matches)
        
        i1=matches(j,1);
        i2=matches(j,2);
        tp=(rmt*skpt2(i2,:)')';
        [tdis(j),tpts(j,:)]=minDisBtnTwoLines(0,0,0,skpt1(i1,1),skpt1(i1,2),skpt1(i1,3),tran(1),tran(2),tran(3),tp(1),tp(2),tp(3));

    end
    
    prind= find(tdis<norm(tran)/10);
    tind=ind2(matches(prind,2));
    ttind=find(goodmark(tind)==0);
   
  
    pts(tind(ttind),:)=tpts(prind(ttind),:)+repmat(transitions(i-1,:),[length(ttind),1]);
    goodmark(tind(ttind))=1;
    
end
    
goodptind=cell(nframes,1);
for i=1:nframes
    goodptind{i}=matchBetweenTwoV( forind(goodmark>0),indss{i});
end

for runtimes=1:100
    runtimes
    for j=2:nframes
        re=atransitionAndRotation(pts(goodptind{j}(:,1),:),skptss{j}(goodptind{j}(:,2),:));
        transitions(j,:)=re(1,4:6);
        rotations(j,:)=re(1,1:3);
    end
    for j=1:npts
        pts(j,:)=bestPoint(pts(j,:),transitions(gptcorres{j},:),rotations(gptcorres{j},:),iptss{j});
    end
end



end