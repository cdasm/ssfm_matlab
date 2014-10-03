function [a,b]=tranRoDiff(tran1,ro1,tran2,ro2)

a=angle(tran1,tran2);
b=angle(ro1,ro2);


function an=angle(c,d)

an=acos(cross(c,d)/norm(c)/norm(d));

