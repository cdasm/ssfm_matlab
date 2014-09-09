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
   [sp1,sp2,t,r]=synthesisData(300);
    [a,b,c]=TARfromTPntSet_a(sp1,sp2);
    a./repmat(t,[6,1])
    b./repmat(r,[6,1])
    waitforbuttonpress;
end
 