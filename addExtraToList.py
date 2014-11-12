import os
import sys


if __name__ == "__main__":
    if(len(sys.argv)<4):
           print "addExtraTo inp-lst-name oup-lst-name extras(can be multiple). Also please provide enough parameters"
           sys.exit()
    
    ifl=sys.argv[1]
    ofl=sys.argv[2]
    exs=sys.argv[3:len(sys.argv)]
           
    
    ins = open( ifl, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    array=array[1:int(array[0])+1]    
    
    ins=open(ofl,'wb')
    ins.write('%d\n'%len(array))
    for a in array:
        ins.write('%s'%(a))
        for ex in exs:
            ins.write('.%s'%(ex))
        ins.write('\n')
    
    ins.close()       
       