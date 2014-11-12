import os
import sys


if __name__ == "__main__":
#    os.chdir('E:\\TunnelHough')
    if(len(sys.argv)==1):
        print "deployCmdsTofds cmd-list fd-list(this program copy each cmd into each destinate folder form current directory)"
        sys.exit()    
   
    ifl=sys.argv[1]
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    ins.close()
    fls=array[1:int(array[0])+1]

    ifl=sys.argv[2]
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    ins.close()
    fds=array[1:int(array[0])+1]
    
    for fd in fds:
        for fl in fls:
            cmd='copy %s %s /Y'%(fl,fd)
    
            print cmd
            os.system(cmd)
        
   