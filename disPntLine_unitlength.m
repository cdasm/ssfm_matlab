function dis=disPntLine_unitlength(x,p,u)

%dis=(x1 - p1 + (u1*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2 + (x2 - p2 + (u2*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2 + (x3 - p3 + (u3*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2;
tm=num2cell(x);
[x1,x2,x3]=tm{:};
tm=num2cell(p);
[p1,p2,p3]=tm{:};
tm=num2cell(u);
[u1,u2,u3]=tm{:};

dis=sqrt(sum(cross([x1,x2,x3]-[p1,p2,p3],[u1,u2,u3]).^2));

end