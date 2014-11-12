import os
import sys


if __name__ == "__main__":
#    os.chdir('E:\\TunnelHough')
    if(len(sys.argv)==1):
        print "collectCmdsFrmLst command-list(this cmd will copy the cmds in the file to the current folder)"
        sys.exit()    
   
    ifl=sys.argv[1]
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    fls=array[1:int(array[0])+1]

    for fl in fls:
        cmd='copy %s /Y'%(fl)

        print cmd
        os.system(cmd)
        
   