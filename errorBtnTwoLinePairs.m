function diss=errorBtnTwoLinePairs( u,q,v )

%cross(u,v,2)


diss=sqrt(sum(dot(cross(u,q,2),v,2).^2 ,2));
