function [sp1,sp2,t,r] =synthesisData(n)
p=rand(n,3)*10+10;
t=rand(1,3)*2;

sp1=p./repmat(sqrt(sum(p.^2,2)),[1,3]);

p=p-repmat(t,[n,1]);

sp2=p./repmat(sqrt(sum(p.^2,2)),[1,3]);

r=rand(1,3)*1.5;

sp2=(rotateMM(r)'*sp2')';
