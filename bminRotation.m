function re = bminRotation( t,pt1,pt2 )
%A faster way to estimate rotation

syms a b c real;




trans=repmat(t,[length(pt1),1]);

todot=cross(pt1,trans,2)./repmat(sqrt(sum(cross(pt1,trans,2).*cross(pt1,trans,2),2)) ,[1,3]);

f=@(x) sum((dot(todot, (rotateM(x(1),x(2),x(3))*pt2')',2)).^2);


re=fminsearch(f,[0,0,0],optimset('GradObj','on'));

end

