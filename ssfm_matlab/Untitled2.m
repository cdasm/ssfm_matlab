 syms a b c d e f real
 
  A=[a b c; d e f]
  
   syms x y z real
   
    sth=cross(pt-A(1,:),A(1,:)-A(2,:))
 func=expand(sth*sth')
 
 http://www2.math.umd.edu/~immortal/206/tutorial/SolvingEquations.shtml