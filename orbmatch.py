import numpy as np
import cv2
from matplotlib import pyplot as plt
import os
import sys
from pprint import pprint

if __name__ == "__main__":

    ifl='ladybug_panoramic_001820.jpg.tsk'
    if(len(sys.argv)>1):
        ifl=sys.argv[1]
    ins = open( ifl, "r" )
    array = []
    
    for line in ins:
        array.append( line.strip() )
    array=array[1:int(array[0])+1]      
    ins.close() 
    
    
    img1 = cv2.imread(array[0],0)          # queryImage
    img2 = cv2.imread(array[1],0) # trainImage
    
    # Initiate SIFT detector
    orb = cv2.ORB()
    
    # find the keypoints and descriptors with SIFT
    kp1, des1 = orb.detectAndCompute(img1,None)
    kp2, des2 = orb.detectAndCompute(img2,None)
    
    
    kp=[]
    kp.append(kp1)
    kp.append(kp2)
    for i in range (0,2):
        fil=open(array[i]+'.orb','wb')
        fil.write('%d\n'%(len(kp[i])))
        for j in range(0,len(kp[i])):
            
            fil.write('%d %d\n'%(kp[i][j].pt[0],kp[i][j].pt[1]))
        fil.close()       
        
    
    # create BFMatcher object
    bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
    
    # Match descriptors.
    matches = bf.match(des1,des2)
    
    # Sort them in the order of their distance.
    matches = sorted(matches, key = lambda x:x.distance)
    matches=matches[0:int(0.9*len(matches))]
    matches = sorted(matches, key = lambda x:cv2.norm(kp1[x.queryIdx].pt,kp2[x.trainIdx].pt))
    #

    n=len(matches)
    m=int(0.1*n)
    matches=matches[m:n-m]
   
    matches=sorted(matches,key=lambda x:kp1[x.queryIdx].pt[1])
    matches=matches[:len(matches)-34]
    
    print len(matches)
   
    fil=open(ifl+'.mtch','wb')
    fil.write('%d\n'%(len(matches)))
    for i in range(0,len(matches)):

        fil.write('%d %d\n'%(matches[i].queryIdx,matches[i].trainIdx))
    fil.close()       
    
 
    
    img3=cv2.drawMatches(img1,kp1,img2,kp2,matches[:n],0 ,flags=2)
    #cv2.imshow("goo",img3)
    #cv2.waitKey(0)
    
    cv2.imwrite(ifl+'_mth.jpg',img3)
    