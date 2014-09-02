function [rotations,transtions,pts]=bestimateForSequence(seq,goldpts)

fnms=readLst(seq);

gptcorres=areadlst(goldpts);

rotations=zeros(length(fnms),3);
transitions=zeros(length(fnms),3);
pts=zeros(length(gptcorres),3);
goodmark=zeros(length(gptcorres),1);

nframes=length(gptcorres);
npts=length(gptcorres);

skptss=cell(nframes,1);
indss=cell(nframes,1);

forind=1:npts;

for i=1:nframes
    tmp=load(fnms{i});
    ind=tmp(:,1);    kpt=tmp(:,2:3);      n=length(kpt);
    skptss{i}=zeros(n,3);
    for j=1:n
        skptss{i}(j,:)=im2Serph(kpt(j,:));
    end
    indss{i}=ind;
end

iptss=cell(npts,1);

for i=1:npts
    iptss{i}=zeros(length(gptcorres{i}),3);
    n=length(iptss{i});
    for j=1:n
        ti=find(indss{gptcorres{i}(j)}==(i-1));
        iptss{i}(j,:)=skptss{gptcorres{i}(j)}(ti,:);
    end
end

for i=2:nframes
 
    skpt1=skptss{i-1};
    ind1=indss{i-1};
    
    skpt2=skptss{i};
    ind2=indss{i};
    
    skpt2=(rotateMM(rotations(i-1,:))*skpt2')';
    
    matches=matchBetweenTwoV(ind1,ind2);
    
    [tran,rot]=TARfromTPntSet(skpt1(matches(:,1),:),skpt2(matches(:,2),:));
    
    gind=find(goodmark>0);

    matche=matchBetweenTwoV(ind2,gind);
    if ~isempty(matche)
        s=bestScale(pts(matche(:,2),:),tran,rot,skpt2(matche(:,1),:));
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
    prind= tdis<norm(tran)/10;
    tind=ind2(matches(prind,2))+1;
    ttind=find(goodmark(tind)==0);
    ttind=ttind-1;
    tmaches=matchBetweenTwoV(ttind,ind2);
    pts(tmaches(:,1),:)=tpts(tmaches(:,2),:)+repmat(transitions(i-1,:),[length(tmaches),1]);
    goodmark(tmaches(:,1),:)=1;
    
end
    
goodptind=cell(nframes,1);
for i=1:nframes
    goodptind{i}=matchBetweenTwoV( forind(find(goodmark>0)),indss{i}+1);
end

for runtimes=1:100
    for j=2:nframes
        re=atransitionAndRotation(pts(goodptind{j}(:,1),:),skptss{j}(goodptind{j}(:,2),:));
        transitions(j,:)=re(1,4:5);
        rotations(j,:)=re(1,1:3);
    end
    for j=1:npts
        pts(j,:)=bestPoint(pts(j,:),transitions(gptcorres{j}+1,:),rotations(gptcorres{j}+1,:),iptss{j});
    end
end



end