function sc=bestScale_a(pts,tran,rot,spts)

spts=spts./repmat(sqrt(sum(spts.*spts ,2)),[1,3]);
nspts=(rotateMM(rot)*spts')';

n=mylength(pts);

%pts-repmat(tran*x,[n,1])

%f=@(x)sum( acos(sum((pts-repmat([x(4),x(5),x(6)],[n,1])).*(rotateM(x(1),x(2),x(3))*spts')',2)./sqrt( sum((pts-repmat([x(4),x(5),x(6)],[n,1])).*(pts-repmat([x(4),x(5),x(6)],[n,1])),2) )./sqrt( sum(spts.*spts,2) )).^2);
options=optimset('GradObj','on');
%options.MaxFunEvals = 2000000;
%set(options,'Maxiter',2000000);
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;

%dis=sum(cross([x1,x2,x3]-[p1,p2,p3],[u1,u2,u3]).^2)/([u1,u2,u3]*[u1,u2,u3].');

%sum(sum(cross( pts-x*tran,nspts,2).^2),2 )./sum(nspts.^2 ,2));

f=@(x)sum(sum(cross( pts-x* repmat(tran,[n,1]),nspts,2).^2,2)./sum(nspts.^2 ,2));



sc=fminsearch(f,[1],options);
end