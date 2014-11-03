function outputcpp(inp)

ccode(inp,'file','tem.txt')

system('python convertMatalb2Eigen.py tem.txt atem.txt')

edit 'atem.txt'