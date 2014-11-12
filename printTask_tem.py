import os
import sys


if __name__ == "__main__":
  
    #os.chdir("E:\\SphericalVideoStabilization\\testdata")
    
    if(len(sys.argv)==1):
        print "printTask_tem tasklist"
        sys.exit()
    ifl=sys.argv[1]
    
    
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    array=array[1:int(array[0])+1]

    for i in range(0,len(array)-1):
        ofile=open("%s.tsk"%array[i],'w')
        ofile.write("2\n")
        ofile.write("%s\n"%array[i])
        ofile.write("%s\n"%array[i+1])

