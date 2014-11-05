import os
import sys


if __name__ == "__main__":
    if(len(sys.argv)<3):
        print "convertMatlab2Eigen inputfile outputfile specifiled_char(optional)(this is something change from matlab codes to codes in C++ which uses eigen, very limited functions ']['-->','  '['-->'('   ']'-->')' and if there is a third input parameter, the function befor and after the specified character will be changed    )"
        sys.exit()
    
    ifl=sys.argv[1]
    ofl=sys.argv[2]
    
    gg=False
    if(len(sys.argv)>3):
        mychar=sys.argv[3]
        gg=True
           
    
    ins = open( ifl, "r" )

    vnms=[]
    
    array = []
    
    for line in ins:
        tl=line.strip() 

        if not gg:
            if (not "[" in tl) and ("=" in tl):
                vnms.append(tl[:tl.find("=")])
        
        tl=tl.replace("][",",")
        tl=tl.replace("[","(")
        tl=tl.replace("]",")")
        if gg and (mychar in tl):
            newtl=tl
            tl=""
            ind=newtl.find(mychar)
            tl=newtl[ind+len(mychar):-1]+mychar+newtl[0:ind]+newtl[-1:]
            
        array.append( tl)
    ins.close()
    
    

    
    ins=open(ofl,'wb')
    
    if(len(vnms)>0):
        ins.write("double ")
        
        for a in vnms[:-1]:
            ins.write('%s,'%(a))
            
        
        ins.write('%s;\n'%(vnms[len(vnms)-1]))
    
    for a in array:
        ins.write('%s'%(a))        
        ins.write('\n')
    
    ins.close()       
       