function bvar=writeFunctionAndJacobinasFromAHandler(fhandle,nlst,jacIndexLst,funcNameLst)

var_prefixes=['b','c','d','e','f','g','h','i','j','k'];

assert(length(nlst)<=length(var_prefixes));

assert(length(funcNameLst)==length(jacIndexLst)+1);

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

eval(['syms ' bvar ' real'])
%eval('syms '  bvar ' real']);
bvar='';
for i=1:length(nlst)
    bvar=[bvar,listof(var_prefixes(i),nlst(i),','),','];
end

bvar=bvar(1:length(bvar)-1);
bvar

str=['ff=fhandle'  '(' bvar ')']
eval(str)

outputcpp(ff)

sz=size(ff);

writeAFile(funcNameLst{1},nlst,[sz(1),sz(2)]);

system(['python genFunction.py btem.txt ',funcNameLst{1}]);

for i=1:length(jacIndexLst);
    
    bvar=listof(var_prefixes(jacIndexLst(i)),nlst(jacIndexLst(i)),' ');
    
    eval(['jsym=jacobian(ff,[',bvar,'])'])
    
    outputcpp(jsym)

    sz=size(jsym);

    writeAFile(funcNameLst{1+i},nlst,[sz(1),sz(2)]);

    system(['python genFunction.py btem.txt ',funcNameLst{i+1}]);
end


end



function lst=listof(prf,n,a)

    lst='';
    if n==1
        lst=[lst,prf,'0'];
    else


        for i=0:n-2    
            lst=[lst, prf,int2str(i),a];
        end
        lst=[lst,prf,int2str(n-1)];
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