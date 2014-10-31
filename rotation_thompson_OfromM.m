function [x,y,z]=rotation_thompson_OfromM (m)

%theta=1+(x*x+y*y+z*z)/4;
%thetaa=1-(x*x+y*y+z*z)/4;

%m=[thetaa -z y; z thetaa -x; -y x thetaa]/theta + [x y z]'*[x y z]/2/theta;


a=m(1,1)+m(2,2)+m(3,3);
b=16/(a+1);

c=(m(1,3)-m(3,1))*b;

y=c/8;

d=(m(2,1)-m(1,2))*b;
z=d/8;

e=(m(3,2)-m(2,3))*b;

x=e/8;