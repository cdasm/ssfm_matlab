function [pdis,tdis,ppt,tpt]= paraAndTDecompose(x,y,z,a,b,c)
%decompose x y z into two, one is parallel to a b c, the other is T to
ppt=[ (a*(a*x + b*y + c*z))/(a^2 + b^2 + c^2), (b*(a*x + b*y + c*z))/(a^2 + b^2 + c^2), (c*(a*x + b*y + c*z))/(a^2 + b^2 + c^2)];

tpt=[ x - (a*(a*x + b*y + c*z))/(a^2 + b^2 + c^2), y - (b*(a*x + b*y + c*z))/(a^2 + b^2 + c^2), z - (c*(a*x + b*y + c*z))/(a^2 + b^2 + c^2)];

pdis=ppt*ppt';
tdis=tpt*tpt';
 

end