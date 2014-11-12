function bvar=writeFunctionAndJacobinasFromAHandler(fhandle,nlst)

var_prefixes=['b','c','d','e','f','g','h','i','j','k'];

assert(length(nlst)<=length(var_prefixes));

total=0;

for i=1:length(nlst)
    total=total+nlst(i);
end


n=nargin(fhandle);
display(n);

assert(n==total);

%bvar=listof('b',6,' ');

bvar='';
for i=1:length(nlst)
    bvar=[bvar,listof(var_prefixes(i),nlst(i),' '),' '];
end

bvar
eval(['syms ' bvar ' real'])
%eval('syms '  bvar ' real']);
bvar='';
for i=1:length(nlst)
    bvar=[bvar,listof(var_prefixes(i),nlst(i),','),''];
end

bvar=bvar(1:length(bvar)-1);
bvar

str=['ff=fhandle'  '(' bvar ')']
eval(str)

outputcpp(ff)

end



function lst=listof(prf,n,a)

lst='';
for i=0:n-1
    
    lst=[lst, prf,int2str(i),a];
end

end