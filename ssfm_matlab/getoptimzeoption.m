function options=getoptimzeoption()

options=optimset('GradObj','on','TolFun',1e-20,'TolX',1e-12);
%options.MaxFunEvals = 2000000;
%set(options,'Maxiter',2000000);
options.MaxFunEvals = 20000000;
options.MaxIter= 20000000;
end
