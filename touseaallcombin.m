function f=touseaallcombin(x,y)
tmp=num2cell(x);

[x1,x2,x3]=deal(tmp{:});

tmp=num2cell(y);
[y1,y2,y3]=deal(tmp{:});

f=[ x1^2*y1^2, x1*x2*y1^2, x1*x3*y1^2, x1^2*y1*y2, x1*x2*y1*y2, x1*x3*y1*y2, x1^2*y1*y3, x1*x2*y1*y3, x1*x3*y1*y3, x1*x2*y1^2, x2^2*y1^2, x2*x3*y1^2, x1*x2*y1*y2, x2^2*y1*y2, x2*x3*y1*y2, x1*x2*y1*y3, x2^2*y1*y3, x2*x3*y1*y3, x1*x3*y1^2, x2*x3*y1^2, x3^2*y1^2, x1*x3*y1*y2, x2*x3*y1*y2, x3^2*y1*y2, x1*x3*y1*y3, x2*x3*y1*y3, x3^2*y1*y3, x1^2*y1*y2, x1*x2*y1*y2, x1*x3*y1*y2, x1^2*y2^2, x1*x2*y2^2, x1*x3*y2^2, x1^2*y2*y3, x1*x2*y2*y3, x1*x3*y2*y3, x1*x2*y1*y2, x2^2*y1*y2, x2*x3*y1*y2, x1*x2*y2^2, x2^2*y2^2, x2*x3*y2^2, x1*x2*y2*y3, x2^2*y2*y3, x2*x3*y2*y3, x1*x3*y1*y2, x2*x3*y1*y2, x3^2*y1*y2, x1*x3*y2^2, x2*x3*y2^2, x3^2*y2^2, x1*x3*y2*y3, x2*x3*y2*y3, x3^2*y2*y3, x1^2*y1*y3, x1*x2*y1*y3, x1*x3*y1*y3, x1^2*y2*y3, x1*x2*y2*y3, x1*x3*y2*y3, x1^2*y3^2, x1*x2*y3^2, x1*x3*y3^2, x1*x2*y1*y3, x2^2*y1*y3, x2*x3*y1*y3, x1*x2*y2*y3, x2^2*y2*y3, x2*x3*y2*y3, x1*x2*y3^2, x2^2*y3^2, x2*x3*y3^2, x1*x3*y1*y3, x2*x3*y1*y3, x3^2*y1*y3, x1*x3*y2*y3, x2*x3*y2*y3, x3^2*y2*y3, x1*x3*y3^2, x2*x3*y3^2, x3^2*y3^2];
 
