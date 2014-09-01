function f=estimateForSequence(fn)

fnms=readLst(fn);

tr=zeros(1,3);
ro=zeros(1,3);
for i=1:length(fnms)
    if i==1
        [tr,ro,pts,ind]=estimateSimple(fnms{i});
    else
        [tr,ro,pts,ind]=estimateSimple(fnms{i},ro(1),ro(2),ro(3));
    end
    oup=fopen(sprintf('%s.result',fnms{i}),'w');
    fprintf(oup,'%f ',tr(1,:));
    fprintf(oup,' ');
    fprintf(oup,'%f ',ro(1,:));
    fclose(oup);
end
f=1;
end