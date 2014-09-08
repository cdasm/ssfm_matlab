function sc=bestScale_b(pt1, pt2)


f=@(x)sum(sum( (pt1-x*pt2).^2,2));


sc=fminsearch(f,1.0,getoptimzeoption);