import os
import sys


if __name__ == "__main__":
  
    #os.chdir("E:\\SphericalVideoStabilization\\testdata")
    
    if(len(sys.argv)==1):
        print "selectFromlst from-which-file start-index end-index step output-file(optional, default=img.lst)"
        sys.exit()
    ifl=sys.argv[1]
    start_index=int(sys.argv[2])
    end_index=int(sys.argv[3])
    step=int(sys.argv[4])
    
    opfn="img.lst"
    if (len(sys.argv)>5):
        opfn=sys.argv[5]
    #ifl="img.lst"
    #start_index=20
    #end_index=40
    #step=3
    
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    array=array[1:int(array[0])+1]
    newarray=[]
    
    indx=start_index
    while ((indx< len(array) ) & (indx<end_index)):
        newarray.append(array[indx])
        indx+=step
    
    ofile=open(opfn, 'wb')
    ofile.write("%d\n"%(len(newarray)))
    for ob in newarray:
        ofile.write("%s\n"%ob)
        
    ofile.close()
        
   