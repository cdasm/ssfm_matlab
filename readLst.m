function f=readLst(fl)
%this will return a  list of strings which is read from a file
inp=fopen(fl);
num=fscanf(inp,'%d')
f=cell(num,1);

for i=1:num
    tline = fgetl(inp);
    f{i}=tline;
end
fclose(inp);

end