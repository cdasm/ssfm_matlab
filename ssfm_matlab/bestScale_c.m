function sc=bestScale_c(p, u,q,v)

%the first camera is at p, the second is at q, to estimate the third one,
%we can get estimation from the first and the second. There is a best scale
%sc which will make the estimations consistent.

%tm=num2cell(p);
%[p1,p2,p3]=tm{:};
%tm=num2cell(u);
%[u1,u2,u3]=tm{:};

%tm=num2cell(q);
%[q1,q2,q3]=tm{:};
%tm=num2cell(v);
%[v1,v2,v3]=tm{:};


sc=dot(cross(u,p-q),cross(u,v))/sum(cross(u,v).^2);
 % 2*sum(cross(u,v).^2)
 
 %syms p1 p2 p3 u1 u2 u3 q1 q2 q3 v1 v2 v3 real
 % p=[p1 p2 p3];u=[u1 u2 u3]; q=[q1 q2 q3];v=[v1 v2 v3];
 % tstart=solve(diff(sum(cross(q+t*v-p,u).^2),t)==0,'t')   tstart is sc