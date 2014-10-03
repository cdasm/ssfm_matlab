function diss=minDisBtnTwoLinePairs( p,u,q,v )

%cross(u,v,2)

diss=dot((q-p),cross(u,v,2),2).^2./sum(cross(u,v,2).^2,2);
