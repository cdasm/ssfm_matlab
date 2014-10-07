function [a1, a2, a3]=rotation_AfromM(R)

tm=num2cell(R(1,:));
[r11,r12,r13]=tm{:};


tm=num2cell(R(2,:));
[r21,r22,r23]=tm{:};


tm=num2cell(R(3,:));
[r31,r32,r33]=tm{:};

%r(a, b, c) = [  cos(b)*cos(c),  -cos(b)*sin(c),  sin(b); ...
%    cos(a)*sin(c) + cos(c)*sin(a)*sin(b), cos(a)*cos(c) - sin(a)*sin(b)*sin(c), -cos(b)*sin(a); ...
%    sin(a)*sin(c) - cos(a)*cos(c)*sin(b), cos(c)*sin(a) + cos(a)*sin(b)*sin(c),  cos(a)*cos(b)]


a1=atan2(-r23,r33);
a2=atan2(r13,sqrt(r11*r11+r12*r12));
a3=atan2(-r12,r11);