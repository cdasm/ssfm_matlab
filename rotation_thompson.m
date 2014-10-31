function m=rotation_thompson (x,y,z)

theta=1+(x*x+y*y+z*z)/4;
thetaa=1-(x*x+y*y+z*z)/4;

m=[thetaa -z y; z thetaa -x; -y x thetaa]/theta + [x y z]'*[x y z]/2/theta;

