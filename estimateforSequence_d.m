function [transitions,rotations,pts,ptcolors]=estimateforSequence_d(seq,goldpts,pntpos,imgsize)
%please notice the size of the image is written in the program

if nargin<4
    imgsize=[512,256];
end

fnms=readLst(seq);
imgnms=readLst('allimg.lst');

gptcorres=readLst_a(goldpts);
pntposs=readLst_a(pntpos);

nframes=length(fnms);
npts=length(gptcorres);

rotations=cell(nframes,1);
rotations{1}=eye(3);
transitions=zeros(nframes,3);
pts=zeros(npts,3);

ptcolors=zeros(npts,3);
goodmark=zeros(npts,1);


skptss=cell(nframes,1);
indss=cell(nframes,1);
iptss=cell(npts,1);

kptcolors=cell(nframes,1);


for i=1:nframes
    tmp=load(fnms{i});
    img=imread(imgnms{i});
    ind=tmp(:,1);    kpt=tmp(:,2:3);      n=mylength(kpt);
    skptss{i}=zeros(n,3);
    kptcolors{i}=zeros(n,3);
    for j=1:n
        skptss{i}(j,:)=im2Serph(kpt(j,:),imgsize);
        for k=1:3
            kptcolors{i}(j,k)=img(kpt(j,2),kpt(j,1),k);
        end
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
    i
    
    ind1=indss{i-1};
    
    
   
    ind2=indss{i};
    matches=matchBetweenTwoV(ind1,ind2);
    
 
    skpt1=skptss{i-1}(matches(:,1),:);
    ind1=ind1(matches(:,1),:);

    skpt1=(rotations{i-1}*skpt1')';
    
    skpt2=skptss{i}(matches(:,2),:);
    ind2=ind2(matches(:,2),:);
    
    cptcolor=kptcolors{i}(matches(:,2),:);
    
    
    
    [tran,rot,gscore,gind]=TARfromTPntSet_d(skpt1,skpt2);
    
    skpt1=skpt1(gind,:);
    ind1=ind1(gind,:);
    skpt2=skpt2(gind,:);
    cptcolor=cptcolor(gind,:);
    
    [~,idx]=sort(gscore);
    
    cad1=idx(mylength(idx));
    
    
  %  if(gscore(cad1)-gscore(cad2) >10)
 
    tran1=tran(cad1,:);
    rot1=rot{cad1};
 
 %   [t1,t2]=transition_SfromT(tran1);
 %   [t3,t4,t5]=rotation_AfromM(rot1);
    
 %   [t6,t7]=bestTaR_b(skpt1,skpt2,[t1,t2,t3,t4,t5]);
 %   tran1=t6;
 %   rot1=rotateMM(t7);
    
    
    transitions(i,:)=transitions(i-1,:)+tran1;
    rotations{i}=rot1;
 
    tind=ind1;
    pind=find(goodmark(tind,:)==0);
    
    tro=cell(2,1);
    tro{1}=eye(3);
    tro{2}=rot1;
    
    for j=1:mylength(pind)
        pts(tind(pind(j)),:)=bestPoint_e([transitions(i-1,:);transitions(i,:)],tro,[ skpt1(pind(j),:);skpt2(pind(j),:)]);
        ptcolors(tind(pind(j)),:)=  cptcolor(pind(j),:) ; 
        goodmark(tind(pind(j)))=1;
    end
    
    

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