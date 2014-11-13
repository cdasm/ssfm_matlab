function dis=disPntLine_UnitLengthUZeroP(x1,x2,x3,u1,u2,u3)

%dis=(x1 - p1 + (u1*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2 + (x2 - p2 + (u2*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2 + (x3 - p3 + (u3*(u1*(p1 - x1) + u2*(p2 - x2) + u3*(p3 - x3)))/(u1^2 + u2^2 + u3^2))^2;
 
dis= sqrt(sum(cross([x1,x2,x3],[u1,u2,u3]).^2));

end