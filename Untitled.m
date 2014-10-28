syms a
syms b
syms c

 rot(a,b,c)=[ 1, 0, 0;
 0, cos(c), -sin(c);
 0, sin(c), cos(c)]*[ cos(b), 0, sin(b);
 0, 1, 0;
 -sin(b), 0, cos(b)]*[ cos(a), -sin(a), 0;
 sin(a), cos(a), 0;
 0, 0, 1]



for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b,c]=TARfromTPntSet_autest(sp1,sp2);
    a./repmat(t,[6,1])
    b./repmat(r,[6,1])
    waitforbuttonpress;
end
 

as=zeros(100,3);
bs=zeros(100,3);
for i=1:100
    i
   [p,sp1,sp2,t,r]=synthesisData(300);
    re=transitionAndRotation_b(p,sp2);
    re=real(re);
    b=re(1,1:3);
    a=re(1,4:6);
    a./t
    b./r
   % as(i,:)=;
   % bs(i,:)=;
    waitforbuttonpress;
end




agood=0;
 good=0;
 record=zeros(100,2);
for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b,c]=TARfromTPntSet_autest(sp1,sp2);
    ta=a./repmat(t,[6,1]);
    tb=b./repmat(r,[6,1]);
    
    if(c(3,2)>c(6,2))
        mi=3;
    else
        mi=6;
    end
    
    tran=a(mi,:);
    rot=b(mi,:);
    
  % record(i,1)=sum(abs( b(mi,:) ))-3;
    if( sum(abs( b(mi,:) ))-3 < 1e-4 )
        agood=agood+1;
        pts=zeros(mylength(p),3);
        
        for j=1:mylength(p)
            pts(j,:)=bestPoint_c([0,0,0;tran],[0,0,0;rot],[sp1(j,:);sp2(j,:)]);
        end
        n=mylength(p);
        rati=pts./p;
        %record(i,2)=;
        sum(rati-repmat((tran./t),[n,1]))
        if(sum(sum(rati-repmat((tran./t),[n,1])))<1e-3)
            good=good+1;
        end
        
    end
     
   %waitforbuttonpress;
end
agood
good


good=0;

for i=1:100
   [p,sp1,sp2,t,r]=synthesisData(300);
    [a,b]=bestTaR_a (sp1,sp2);
    a./t
    if abs(sum(abs(b./r))-3)<1e-3
        good=good+1;
    end
    %waitforbuttonpress;
end
good


for i=1:100
    [p,sp1,sp2,t,r]=synthesisData(20);
     [a,b,c]=TARfromTPntSet_c(sp1,sp2);
     a./repmat(t,[8,1])
     tr=rotateMM(r);
     good=0;
     for j=1:8
        % b{j}./tr
        if sum(sum(b{j}./tr-ones(3,3),2))<1e-3
            good=1;
        end
     end
     
     good
    waitforbuttonpress;
end



%inference memo

a=sym('a',[5,3])
b=sym('b',[5,3])
for i=1:5
f{i}=a(i,:)*essentialMatrix(x,y,u,v,w)*b(i,:).'
end


[a1,a2,a3,a4,a5]=solve(f{1}==0,f{2}==0,f{3}==0,f{4}==0,f{5}==0,'x','y','u','v','w')
%practice for levenburg marquart

syms a b c x y z real

f=((x - a)^2 + (y - b)^2 + (z - c)^2)^(1/2)

jsym=jacobian(f,[x,y,z])

jfunc=matlabFunction(jsym);



func=matlabFunction(f);
data_l=[1 1 0; 2 3 4; 5 5 5]
obs_l=[0,0,0]

Ndata=length(obs_l);
Nparams=3;
n_iters=70;
lamda=0.01;
 
% step1: ????
updateJ=1;
x_est=0;
y_est=0;
z_est=0;

dis_init=zeros(1,Ndata);
for it=1:n_iters
    if updateJ==1
       J=zeros(Ndata,Nparams);
       for i=1:length(obs_l)
           % for j=1:Nparams
               J(i,:)=jfunc(data_l(i,1),data_l(i,2),data_l(i,3),x_est,y_est,z_est);
           % end
        end
        for i=1:Ndata;
            dis_init(i)=func(data_l(i,1),data_l(i,2),data_l(i,3),x_est,y_est,z_est);
        end
        d=obs_l-dis_init;
        H=J'*J;
        if it==1
        e=dot(d,d);
        end
    end
    H_lm=H+(lamda*eye(Nparams,Nparams));
    dp=inv(H_lm)*(J'*d(:));
    g=J'*d(:);
    x_lm=x_est+dp(1);
    y_lm=y_est+dp(2);
    z_lm=z_est+dp(3);
    for i=1:3
         dis_init(i)=func(data_l(i,1),data_l(i,2),data_l(i,3),x_lm,y_lm,z_lm);
    end
    d=obs_l-dis_init;
    e_lm=dot(d,d);
    if e_lm<e
        lamda=lamda/10;
        x_est=x_lm;
        y_ext=y_lm;
        y_est=y_lm;
        z_est=z_lm;
        e=e_lm;
        disp(e);
        updateJ=1;
    else
        updateJ=0;
        lamda=lamda*10;
    end
end
