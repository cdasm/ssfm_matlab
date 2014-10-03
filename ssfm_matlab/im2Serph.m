function y = im2Serph(x,siz )
%this function turns a coordinate in panoromic image to a shperical one
%   Detailed explanation goes here

%   double alpha= -x*2*pi/w+2*pi;
%	double beta=  -pi*y/h+pi/2;

%	vector<double> rslt(3);
%	rslt[0]=cos(beta)*cos(alpha);
%	rslt[1]=cos(beta)*sin(alpha);
%	rslt[2]=sin(beta);
%	return rslt;

alpha= -x(1)*2*pi/siz(1)+2*pi;
beta=  -pi*x(2)/siz(2)+pi/2;

y(1)=cos(beta)*cos(alpha);
y(2)=cos(beta)*sin(alpha);
y(3)=sin(beta);
end


