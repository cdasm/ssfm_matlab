function [a,b]=transition_SfromT(t)

tm=num2cell(t);
[t1,t2,t3]=tm{:};

%t=[cos(a)*cos(b),cos(a)*sin(b) ,sin(a)];

b=atan2(t2,t1);
a=atan2(t3,sqrt(t1*t1+t2*t2));