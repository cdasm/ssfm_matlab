function sc=bestScale(pts,tran,rot,spts)

spts=spts./repmat(sqrt(sum(spts.*spts ,2)),[1,3]);
nspts=(rotateMM(rot)*spts')';

n=length(pts);

%pts-repmat(tran*x,[n,1])
f=@(x) sum(acos(dot( pts-repmat(tran*x,[n,1]) ,nspts,2)./sqrt( sum((pts-repmat(tran*x,[n,1])).*(pts-repmat(tran*x,[n,1])),2) )  ).^2);

%f=@(x)sum( acos(sum((pts-repmat([x(4),x(5),x(6)],[n,1])).*(rotateM(x(1),x(2),x(3))*spts')',2)./sqrt( sum((pts-repmat([x(4),x(5),x(6)],[n,1])).*(pts-repmat([x(4),x(5),x(6)],[n,1])),2) )./sqrt( sum(spts.*spts,2) )).^2);
options=optimset('GradObj','on');
%options.MaxFunEvals = 2000000;
%set(options,'Maxiter',2000000);
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;

sc=fminsearch(f,[1],options);
end