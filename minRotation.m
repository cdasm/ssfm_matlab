function re=minRotation(t,pt1,pt2)

syms a b c real;

rm=[  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b);  cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a);  sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)];


func=0;

for i=1:mylength(pt1)
    disp(i);
    x=(rm*pt2(i,:)')';
    [a1,a2]=minDisBtnTwoLines(0,0,0,pt1(i,1),pt1(i,2),pt1(i,3),t(1),t(2),t(3),x(1),x(2),x(3));
    func=func+a1;
end

r=matlabFunction(func);

f=@(x)r(x(1),x(2),x(3));
re=fminsearch(f,[0,0,0],optimset('GradObj','on'));

end