function y = im2Serph(x,siz )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


alpha= -x(1)*2*pi/siz(1)+2*pi;
beta=  -pi*x(2)/siz(2)+pi/2;

y(1)=cos(beta)*cos(alpha);
y(2)=cos(beta)*sin(alpha);
y(3)=sin(beta);

