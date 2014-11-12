import os
import sys


var_prefixes=['b','c','d','e','f','g','h','i','j','k']


def intLstFromString(str):
    str=str.strip()
    return [int(i) for i in str.split(' ')]

def lstOfvariables(lst,c):
    assert(len(lst)>=1)
    s=""
    if(len(lst)==1):
        return s+lst[0]
    else:
        for ts in lst[0:-1]:
            s=s+ts+","
        return s+lst[len(lst)-1]    


def declarations(type,lst):
    assert len(lst)>=1
    s=""
    s=s+type+" "
    s=s+lstOfvariables(lst,',')+";"
    return s

def assignFromVector(lst,matrixname):
    assert len(lst)>=1
    result=[]
    for i in range(0,len(lst)):
        result.append(lst[i]+'='+matrixname+'(0,'+str(i)+');')
    return result

def functionName(type,fname,varlst):
    curlst=[""]*len(varlst)
    
    for i in range(0,len(varlst)):
        curlst[i]='const '+type+'& '+varlst[i]
    
    return type+' '+fname+'('+lstOfvariables(curlst,',')+')'

def lstFromPrefix(c,n):
    result=[]
    for i in range(0,n):
        result.append(c+str(i))
    return result

def printFunction(type,datatype,fname,varlst,varlstnums,resultname,dimR,dimC,contentlst):
    assert len(varlst)==len(varlstnums)
    assert len(varlst)<=len(var_prefixes)
    s=""
    s=s+functionName(type,fname,varlst)
    s=s+'\n{\n'
    for i in range(0,len(varlst)):
        curvarlst=lstFromPrefix(var_prefixes[i], varlstnums[i])
        s=s+'\t'+declarations(datatype, curvarlst)+'\n'
        curass=assignFromVector(curvarlst,varlst[i])
        for j in range(0,len(curass)):
            s=s+'\t'+curass[j]+'\n'
    
    s=s+'\t'+type+' '+resultname+'('+str(dimR)+','+str(dimC)+')'+";\n"
    for i in range(0,len(contentlst)):
        s=s+'\t'+contentlst[i]+'\n'
    
    s=s+'\treturn '+resultname+';'
    s=s+'\n}'
    return s


def printFunctionWithCotentsFromFile(fname,varlstnums,dimR,dimC,filename):
    varnames=lstFromPrefix('var', len(varlstnums))
    ins = open( filename, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )    
    ins.close()
    
    return printFunction('MatrixXd','double',fname,varnames,varlstnums,'A0',dimR,dimC,array)


def printFunctionFromOneFile(filename):
    ins = open( filename, "r" )
    array = []
    for line in ins:
        array.append( line.strip() )    
    ins.close()
    assert len(array)>=4
    
    fname=array[0]
    varlstnums=intLstFromString(array[1])
    
    dim=intLstFromString(array[2])
    
    dimR=dim[0]
    dimC=dim[1]
    tname=array[3]
    
    return printFunctionWithCotentsFromFile(fname,varlstnums,dimR,dimC,tname)


if __name__ == "__main__":
    if(len(sys.argv)<3):
        print "genFunction v1 v2, v1 is a file contains input parameters, line 1 is cpp function name line2 is a lst of dimension numbers, the third line is dimension of output, and the fourth line is the name of a content file, v2 is the name of output file"
        sys.exit()
  
    ifl=sys.argv[1]
    ofl=sys.argv[2]
    
    fun=printFunctionFromOneFile(ifl)
    #print fun
    ins=open(ofl,'wb')
    
    ins.write('%s'%(fun))
    ins.close()




    
    
        
        
    

