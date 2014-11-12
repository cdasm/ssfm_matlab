import os
import sys
import glob
if __name__ == "__main__":
    
    if(len(sys.argv)==1):
        print "genallimglst format(optional,default=*.jpg) output-file(optional,default=allimg.lst)"
        
    fomat="*.jpg"
    oupfn="allimg.lst"
    if(len(sys.argv)==3):
        fomat=sys.argv[1]
        oupfn=sys.argv[2]
    
    fls=glob.glob(fomat)
    fl=open(oupfn, 'wb')
    fl.write('%d\n'%(len(fls)))
    for f in fls:
        fl.write('%s\n'%(f))
    
    fl.close
    