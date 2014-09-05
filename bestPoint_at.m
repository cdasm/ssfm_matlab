function pt=bestPoint_at(opt,trans,rots,spts)

siz=size(trans);
n=siz(1);

nspts=spts;
for i=1:n
    nspts(i,:)=(rotateMM(rots(i,:))*spts(i,:)')'/norm(spts(i,:));
end

options=optimset('GradObj','on');
%options.MaxFunEvals = 2000000;
%set(options,'Maxiter',2000000);
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;
%repmat([x(1),x(2),x(3)],[n,1])-trans
%nspts

%dis=sum(cross([x1,x2,x3]-[p1,p2,p3],[u1,u2,u3]).^2)/([u1,u2,u3]*[u1,u2,u3]');

f=@(x)sum( sum((cross( (repmat(x,[n,1])-trans),nspts,2)).^2,2)./sum(nspts.^2,2));


pt=fminsearch(f,opt,options);