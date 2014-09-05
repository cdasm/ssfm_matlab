function pt=bestPoint_a(opt,trans,rots,spts)

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
f=@(x)sum(sum( cross(repmat([x(1),x(2),x(3)],[n,1])-trans,nspts,2 ).*cross(repmat([x(1),x(2),x(3)],[n,1])-trans,nspts,2 ) ));

pt=fminsearch(f,opt,options);