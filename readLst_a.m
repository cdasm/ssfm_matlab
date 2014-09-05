function f=areadLst(fl)
%this will return a  list of strings which is read from a file
inp=fopen(fl);
num= str2num(fgetl(inp));
f=cell(num,1);

for i=1:num
    tline = fgetl(inp);
    f{i}=str2num(tline);
end
fclose(inp);

end