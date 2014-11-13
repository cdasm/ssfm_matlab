function bvar=adhocFunctionAndJacobinasFromAHandler(fhandle)


nlst=[6,6];

var_prefixes=['b','c','d','e','f','g','h','i','j','k'];

assert(length(nlst)<=length(var_prefixes));

total=0;

for i=1:length(nlst)
    total=total+nlst(i);
end


n=nargin(fhandle);
display(n);

assert(n==total);


bvar='';
for i=1:length(nlst)
    bvar=[bvar,listof(var_prefixes(i),nlst(i),' '),' '];
end

bvar
eval(['syms ' bvar ' real'])


bvar='';
for i=1:length(nlst)
    bvar=[bvar,listof(var_prefixes(i),nlst(i),','),''];
end

bvar=bvar(1:length(bvar)-1);
bvar

str=['ff=fhandle'  '(' bvar ')']
eval(str)

outputcpp(ff)

sz=size(ff);

writeAFile('functionForRotationAndTransition',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f1')

jrt=jacobian(ff,[c0,c1,c2,c3,c4,c5]);

outputcpp(jrt);
sz=size(jrt);

writeAFile('jacobianForRotationAndTransition',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f2')

jpt=jacobian(ff,[b3,b4,b5]);

outputcpp(jpt);

sz=size(jpt);


writeAFile('jacobianForPoint',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f3')

ttw=transition_TfromS(c3,c4);

ff2=fhandle(b0,b1,b2,b3,b4,b5,c0,c1,c2,ttw(1),ttw(2),ttw(3));

nlst=[6,5];

outputcpp(ff2);

sz=size(ff2);

writeAFile('functionForRotationAndTransitionUnitLength',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f4')


jtr2=jacobian(ff2,[c0,c1,c2,c3,c4]);

outputcpp(jtr2);
sz=size(jtr2);

writeAFile('jacobianForRotationAndTransitionUnitLength',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f5')


jpt2=jacobian(ff2,[b3,b4,b5]);

outputcpp(jpt2);
sz=size(jpt2);

writeAFile('jacobianForPointUnitLength',nlst,[sz(1),sz(2)]);

system('python genFunction.py btem.txt f6');


system('python printFilesToOne.py bundleFunctionAndJacobian.cpp h.txt f1 f2 f3 f4 f5 f6');

end



function lst=listof(prf,n,a)

lst='';
for i=0:n-1
    
    lst=[lst, prf,int2str(i),a];
end

end


function writeAFile(fname,varnums,dimlst)
fp=fopen('btem.txt','w');
fprintf(fp,'%s\n',fname);
for i=1:length(varnums)
    fprintf(fp,'%d ',varnums(i));
end

fprintf(fp,'\n');

for i=1:length(dimlst)
    fprintf(fp,'%d ',dimlst(i));
end

fprintf(fp,'\n');

fprintf(fp,'atem.txt');

fclose(fp);
end