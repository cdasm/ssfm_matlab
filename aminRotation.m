function re = aminRotation( t,pt1,pt2 )
%A faster way to estimate rotation

syms a b c real;

rm=rotateM(a,b,c);
coeff=zeros(1,81);

for i=1:length(pt1)
    
    x=cross(pt1(i,:),t);
    x=x/norm(x);
    y=pt2(i,:);
    
    coeff=coeff+touseaallcombin(x,y);
end

func(a,b,c)=aallcombintion(rm)*coeff';

r=matlabFunction(func);
f=@(x)r(x(1),x(2),x(3));
re=fminsearch(f,[0,0,0],optimset('GradObj','on'));

end

