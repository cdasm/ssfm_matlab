import os
import sys


if __name__ == "__main__":
  
    #os.chdir("E:\\SphericalVideoStabilization\\testdata")
    
    if(len(sys.argv)==1):
        print "mergeRstWithLst from-which-file result-file outFile"
        sys.exit()
    ifl=sys.argv[1]
    
    ifla=sys.argv[2]
    #end_index=int(sys.argv[3])
    #step=int(sys.argv[4])
    
    opfn=argv[3]
    
    mark="-1"
    
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    array=array[1:int(array[0])+1]
    
    nearray=[]
    insa=open(ifla,"r")
    for lin in insa:
        nearray.append(lin.strip())
    
    ofile=open(opfn, 'wb')
    ofile.write("%d\n"%(len(array)))
    
    for i in range(0,len(array)):
        if i<len(nearray):
            ofile.write("%s %s\n"%(array[i],nearray[i]))
        else:
            ofile.write("%s %s\n"%(array[i],mark))
        
        
    ofile.close()
        
   