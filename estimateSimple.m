function [transition,rotation,pts,indd]=estimateSimple(fn,varargin)
%from a pair of image features find the transition and rotation in a simple
%manner
imgs=readLst(fn);
matches=load(strcat(fn,'.mtch'));
siz=size(matches);
number=siz(1);

kpt1=load(strcat(imgs{1},'.orb'));
kpt2=load(strcat(imgs{2},'.orb'));

skpt1=zeros(number,3);
skpt2=zeros(number,3);

f=@(x)x;
if ~isempty(varargin)
    f=rotateF(varargin{1},varargin{2},varargin{3});
end
matr=zeros(number,9);


for i=1:number
    skpt1(i,:)=im2Serph(kpt1(matches(i,1)+1,:),[512,256]);  
    skpt1(i,:)=f(skpt1(i,:));

    skpt2(i,:)=im2Serph(kpt2(matches(i,2)+1,:),[512,256]);   
    matr(i,:)=reshape(skpt1(i,:)'*skpt2(i,:),[1,9]);
end
%b1*(a1*e1_1 + a2*e2_1 + a3*e3_1) + b2*(a1*e1_2 + a2*e2_2 + a3*e3_2) + b3*(a1*e1_3 + a2*e2_3 + a3*e3_3)
[s,v,d]=svd(matr);

e=cell(3,1);

for i=1:3
e{i}=reshape(d(:,6+i),[3,3])';
end

t=zeros(3,3);


for i=1:3
    [es,ev,ed]=svd(e{i});
    t(i,:)=ed(:,3)';
    
    if(numverOfgoodpairs(skpt1,skpt2,t(i,:))<numverOfgoodpairs(skpt1,skpt2,t(i,:)*-1))
        t(i,:)=t(i,:)*-1;
    end
   % g(i)=numverOfgoodpairs(skpt1,skpt2,t(i,:));
end


r=zeros(3,3);
for i=1:3
    tt=t(i,:);
    r(i,:)=aminRotation(tt,skpt1,skpt2);
end
g=zeros(3,1);

for i=1:3
    frot=rotateF(r(i,1),r(i,2),r(i,3));
    g(i)=numverOfgoodpairs(skpt1,frot(skpt2),t(i,:));
end
mi=3;
if g(2)>g(3)
    mi=2;
end

oup=fopen(sprintf('%s.log',fn),'w');

for i=1:3
    fprintf(oup,'%f ',t(i,:));
    fprintf(oup,'\n');
end
for i=1:3
    fprintf(oup,'%f ',r(i,:));
    fprintf(oup,'\n');
end
for i=1:3
    fprintf(oup,'%f ',g(i));
end
fclose(oup);

transition=t(mi,:);
rotation=r(mi,:);

rf=rotateF(rotation(1),rotation(2),rotation(3));
tpts=zeros(mylength(skpt1),3);
tdis=zeros(mylength(skpt1),1);
for i=1:mylength(skpt1)
    tp=rf(skpt2(i,:));
    [tdis(i),tpts(i,:)]=minDisBtnTwoLines(0,0,0,skpt1(i,1),skpt1(i,2),skpt1(i,3),transition(1),transition(2),transition(3),tp(1),tp(2),tp(3));
    
end

indx= tdis<norm(transition)/10;
pts=tpts(indx,:);
indd=matches(indx,2);

end