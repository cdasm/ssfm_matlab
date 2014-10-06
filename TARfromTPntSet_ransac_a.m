function [t,r,g,inliers]=TARfromTPntSet_ransac_a(x1,x2) 
%this is a function calculates transitions, rotations, and good scores
%using the 5-point algorithm




    
    tt=0.000002;


%    [M, inliers] = ransac([x1, x2], fittingfn, distfn, degenfn, s, t, feedback);
    num=mylength(x1);
    
    ninliers=0;
for j=1:400
    ind=randsample(num,5);
    ee= calibrated_fivepoint(x1(ind,:),x2(ind,:));
    for i=1:size(ee,2)
        e=reshape(ee(:,i),[3,3]);

        d=abs(diag(x1*e*x2'));
        tinliers = find(abs(d) < tt);     % Indices of inlying points

        if length(tinliers) > ninliers   % Record best solution
            ninliers = length(tinliers);
            bestF = e;
            inliers = tinliers;

        end

    end
end

    [t,r,g]=TARfromTPntSet_c(x1(inliers,:),x2(inliers,:));
    
  
    
  

    
  