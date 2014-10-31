function R=rotation_MfromQ(a,b,c,d)

R=[ a*a+b*b-c*c-d*d, 2*b*c-2*a*d,2*b*d+2*a*c;...
    2*b*c+2*a*d,a*a-b*b+c*c-d*d,2*c*d-2*a*b;...
    2*b*d-2*a*c,2*c*d+2*a*b, a*a-b*b-c*c+d*d
    ];
    