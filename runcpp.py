import os
import sys


if __name__ == "__main__":
#    os.chdir('E:\\TunnelHough')
    if(len(sys.argv)==1):
        print "runcpp cpp-command list-file-name print-cmd-or-not(optional,default=1)"
        sys.exit()    
    icd=sys.argv[1]
    ifl=sys.argv[2]
    printcmd=1
    if(len(sys.argv)>3):
        printcmd=int(sys.argv[3])
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    fls=array[1:int(array[0])+1]
    for fl in fls:
        cmd='%s  %s'%(icd,fl)
        if(printcmd==1):
            print cmd
        os.system(cmd)
        
   