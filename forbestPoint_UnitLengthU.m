function re=forbestPoint_UnitLengthU(p,u)

%re=zeros(3,4);

tm=num2cell(p);
[p1,p2,p3]=tm{:};
tm=num2cell(u);
[u1,u2,u3]=tm{:};

re=[ (2*u2^2 + 2*u3^2),   -(2*u1*u2),   -(2*u1*u3), (u1*(2*p2*u2 + 2*p3*u3) - 2*p1*(u2^2 + u3^2)); ...
    -(2*u1*u2), (2*u1^2 + 2*u3^2),        -(2*u2*u3),         (2*u2*(p1*u1 + p2*u2 + p3*u3)) - 2*p2;  ...
    -(2*u1*u3),        -(2*u2*u3), (2*u1^2 + 2*u2^2),         (2*u3*(p1*u1 + p2*u2 + p3*u3)) - 2*p3];
end

%[ (2*u2^2 + 2*u3^2)/(u1^2 + u2^2 + u3^2),        -(2*u1*u2)/(u1^2 + u2^2 + u3^2),        -(2*u1*u3)/(u1^2 + u2^2 + u3^2), (u1*(2*p2*u2 + 2*p3*u3) - 2*p1*(u2^2 + u3^2))/(u1^2 + u2^2 + u3^2)]
%[        -(2*u1*u2)/(u1^2 + u2^2 + u3^2), (2*u1^2 + 2*u3^2)/(u1^2 + u2^2 + u3^2),        -(2*u2*u3)/(u1^2 + u2^2 + u3^2),         (2*u2*(p1*u1 + p2*u2 + p3*u3))/(u1^2 + u2^2 + u3^2) - 2*p2]
%[        -(2*u1*u3)/(u1^2 + u2^2 + u3^2),        -(2*u2*u3)/(u1^2 + u2^2 + u3^2), (2*u1^2 + 2*u2^2)/(u1^2 + u2^2 + u3^2),         (2*u3*(p1*u1 + p2*u2 + p3*u3))/(u1^2 + u2^2 + u3^2) - 2*p3]
 
