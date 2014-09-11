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
    [a,b,c]=TARfromTPntSet_a(sp1,sp2);
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
 