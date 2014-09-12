function [fnms,gptcorres,pntposs,nframes,npts,skptss,indss,iptss]=prepareForSequence(seq,goldpts,pntpos)


fnms=readLst(seq);

gptcorres=readLst_a(goldpts);
pntposs=readLst_a(pntpos);

nframes=length(fnms);
npts=length(gptcorres);




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

end