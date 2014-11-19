import os
import sys




if __name__ == "__main__":
    if(len(sys.argv)<3):
        print "a function to compine all files into one"
        sys.exit() 
        
    ofl=sys.argv[1]
    
    lst=sys.argv[2:]
    
    ins=open(ofl,'wb')
    
    for i in range(0,len(lst)):
        afl=open(lst[i],'r')
        s=afl.read()
        
        ins.write('%s\n\n\n'%(s))
        afl.close()
        
    
    ins.close()