import os
import sys


if __name__ == "__main__":
  
    #os.chdir("E:\\SphericalVideoStabilization\\testdata")
    
    if(len(sys.argv)==1):
        print "markList from-which-file output-file(optional, default=out.lst) mark(optional, default=-1)"
        sys.exit()
    ifl=sys.argv[1]
    
    #end_index=int(sys.argv[3])
    #step=int(sys.argv[4])
    
    opfn="out.lst"
    mark="-1"
    if (len(sys.argv)>2):
        opfn=sys.argv[2]
        mark=sys.argv[3]
#        opfn=sys.argv[5]
    #ifl="img.lst"
    #start_index=20
    #end_index=40
    #step=3
    
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    array=array[1:int(array[0])+1]
    
    ofile=open(opfn, 'wb')
    ofile.write("%d\n"%(len(array)))
    for ob in array:
        ofile.write("%s %s\n"%(ob,mark))
        
    ofile.close()
        
   