function outputcpp(inp,myc)

ccode(inp,'file','tem.txt')

if nargin<2
    system('python convertMatalb2Eigen.py tem.txt atem.txt')
else
    cm=sprintf('python convertMatalb2Eigen.py tem.txt atem.txt %s',myc)

    system(cm)
end

edit 'atem.txt'