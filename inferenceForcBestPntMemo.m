%inference memo

syms x1 x2 x3 p1 p2 p3 u1 u2 u3 real
dis=adisPntLine(x1,x2,x3,p1,p2,p3,u1,u2,u3)
x=[x1,x2,x3]
g=sym('g',[3,4])

t=cell(3,1)

for i=1:3
    t{i}=diff(dis,x(i))
    o=cell(3,1);
    for j=1:3
        tm=termsOffunc(t{i},x(j));
        o{j}=tm{2};
        g(i,j)=o{j};
    end
    g(i,4)=simple(t{i}-o{1}*x1-o{2}*x2-o{3}*x3);
end

re=[ (2*u2^2 + 2*u3^2)/(u1^2 + u2^2 + u3^2),   -(2*u1*u2)/(u1^2 + u2^2 + u3^2),   -(2*u1*u3)/(u1^2 + u2^2 + u3^2), (u1*(2*p2*u2 + 2*p3*u3) - 2*p1*(u2^2 + u3^2))/(u1^2 + u2^2 + u3^2); ...
    -(2*u1*u2)/(u1^2 + u2^2 + u3^2), (2*u1^2 + 2*u3^2)/(u1^2 + u2^2 + u3^2),        -(2*u2*u3)/(u1^2 + u2^2 + u3^2),         (2*u2*(p1*u1 + p2*u2 + p3*u3))/(u1^2 + u2^2 + u3^2) - 2*p2;  ...
    -(2*u1*u3)/(u1^2 + u2^2 + u3^2),        -(2*u2*u3)/(u1^2 + u2^2 + u3^2), (2*u1^2 + 2*u2^2)/(u1^2 + u2^2 + u3^2),         (2*u3*(p1*u1 + p2*u2 + p3*u3))/(u1^2 + u2^2 + u3^2) - 2*p3];


