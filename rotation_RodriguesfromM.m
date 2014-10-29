function [wx,wy,wz]=rotation_RodriguesfromM(R)
theta=acos((trace(R)-1)/2); 
w=(theta/(2*sin(theta)))*[R(3,2)-R(2,3); R(1,3)-R(3,1); R(2,1)-R(1,2)]; 
wx=w(1); 
wy=w(2); 
wz=w(3); 