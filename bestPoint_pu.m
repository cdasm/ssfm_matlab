function [pnt,dis]=bestPoint_pu(trans,nspts)
%for a set of lines, there is a point which will minimize the sum of
%distances from the point to all lines. This function returns the pnt and
%the smallest sum of distances.
siz=size(trans);
n=siz(1);


ceffs=zeros(3,4);

for i=1:n
    ceffs=ceffs+forbestPoint_c(trans(i,:),nspts(i,:));
end


[a,b,c]=solveAlinearfucntion(ceffs);
pnt=[a,b,c];

dis=sum(dissPntLines(pnt,trans,nspts));