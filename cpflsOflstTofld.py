import os
import sys


if __name__ == "__main__":
#    os.chdir('E:\\TunnelHough')
    if(len(sys.argv)==1):
        print "cpflsoflsttofld cmd-list fd-list(copy files of lst to folder)"
        sys.exit()    
   
    ifl=sys.argv[1]
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    ins.close()
    fls=array[1:int(array[0])+1]

    fd=sys.argv[2]
    
   
    for fl in fls:
        cmd='copy %s %s /Y'%(fl,fd)

        print cmd
        os.system(cmd)
    
   