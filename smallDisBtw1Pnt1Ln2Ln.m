function re=smallDisBtw1Pnt1Ln2Ln(p,u,q,v)

%this is a function which returns the smallest angular distance between one
%point on one line and the other line.

tm=num2cell(p);

[p1,p2,p3]=tm{:};

tm=num2cell(u);
[u1,u2,u3]=tm{:};

tm=num2cell(q);
[q1,q2,q3]=tm{:};

tm=num2cell(v);
[v1,v2,v3]=tm{:};

%re=-(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2);

%re=(v2*(q1 - p1 + (u1*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)) - v1*(q2 - p2 + (u2*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)))^2 + (v3*(q1 - p1 + (u1*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)) - v1*(q3 - p3 + (u3*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)))^2 + (v3*(q2 - p2 + (u2*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)) - v2*(q3 - p3 + (u3*(2*(v2*(p1 - q1) - v1*(p2 - q2))*(u1*v2 - u2*v1) + 2*(v3*(p1 - q1) - v1*(p3 - q3))*(u1*v3 - u3*v1) + 2*(v3*(p2 - q2) - v2*(p3 - q3))*(u2*v3 - u3*v2)))/(2*(u1*v2 - u2*v1)^2 + 2*(u1*v3 - u3*v1)^2 + 2*(u2*v3 - u3*v2)^2)))^2;
 re=((v1^2 + v2^2 + v3^2)*(p1*u2*v3 - p1*u3*v2 - p2*u1*v3 + p2*u3*v1 + p3*u1*v2 - p3*u2*v1 - q1*u2*v3 + q1*u3*v2 + q2*u1*v3 - q2*u3*v1 - q3*u1*v2 + q3*u2*v1)^2)/(u1^2*v2^2 + u1^2*v3^2 - 2*u1*u2*v1*v2 - 2*u1*u3*v1*v3 + u2^2*v1^2 + u2^2*v3^2 - 2*u2*u3*v2*v3 + u3^2*v1^2 + u3^2*v2^2);
 