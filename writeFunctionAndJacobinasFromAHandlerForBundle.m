function bvar=writeFunctionAndJacobinasFromAHandlerForBundle(fhandle)


nlst=[3,3,6];

total=0;

for i=1:length(nlst)
    total=total+nlst(i);
end


n=nargin(fhandle);

assert(n==total);

funcLst={'functionForRotationAndTransition','jacobianForRotationAndTransition','jacobianForPoint'};

jacIndLst=[3,2];

writeFunctionAndJacobinasFromAHandler(fhandle,nlst,jacIndLst,funcLst);


syms a1 a2 a3 b1 b2 b3 c1 c2 c3 t1 t2 real;

tw=transition_TfromS(t1,t2);

tf=fhandle(a1,a2,a3,b1,b2,b3,c1,c2,c3,tw(1),tw(2),tw(3));

ghandle=matlabFunction(tf)


nlst2=[3,3,5];

funcLst2={'functionForRotationAndTransitionUnitLength','jacobianForRotationAndTransitionUnitLength','jacobianForPointUnitLength'};

jacIndlst2=[3,2];

writeFunctionAndJacobinasFromAHandler(ghandle,nlst2,jacIndlst2,funcLst2);



system(['python printFilesToOne.py bundleFunctionAndJacobian.cpp h.txt ',listof(funcLst),listof(funcLst2)] );

end



function lst=listof(prf)

lst='';
for i=1:length(prf)
    
    lst=[lst, prf{i},' '];
end

end

