function [pp,sp1,sp2,t,r] =synthesisData(n)
pp=rand(n,3)*50-100;
t=rand(1,3)*5;

sp1=pp./repmat(sqrt(sum(pp.^2,2)),[1,3]);

p=pp-repmat(t,[n,1]);

sp2=p./repmat(sqrt(sum(p.^2,2)),[1,3]);

r=(rand(1,3)-[0.5,0.5,0.5])*pi/10;

sp2=(rotateMM(r)'*sp2')';
