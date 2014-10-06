function [q0,q1,q2,q3]=rotationM_QfromM(R)

%tm=num2cell(p);

tm=num2cell(R(1,:));
[r11,r12,r13]=tm{:};


tm=num2cell(R(2,:));
[r21,r22,r23]=tm{:};


tm=num2cell(R(3,:));
[r31,r32,r33]=tm{:};

q0 = ( r11 + r22 + r33 + 1.0) / 4.0;
q1 = ( r11 - r22 - r33 + 1.0) / 4.0;
q2 = (-r11 + r22 - r33 + 1.0) / 4.0;
q3 = (-r11 - r22 + r33 + 1.0) / 4.0;
if(q0 < 0.0) q0 = 0.0; end
if(q1 < 0.0) q1 = 0.0; end
if(q2 < 0.0) q2 = 0.0; end
if(q3 < 0.0) q3 = 0.0; end
q0 = sqrt(q0);
q1 = sqrt(q1);
q2 = sqrt(q2);
q3 = sqrt(q3);
if(q0 >= q1 && q0 >= q2 && q0 >= q3) 
    q0 =q0 * 1.0;
    q1 =q1*SIGN(r32 - r23);
    q2 =q2*SIGN(r13 - r31);
    q3 = q3* SIGN(r21 - r12);
    
elseif(q1 >= q0 && q1 >= q2 && q1 >= q3) 
    q0 =q0* SIGN(r32 - r23);
    q1 =q1* 1.0;
    q2 = q2* SIGN(r21 + r12);
    q3 = q3* SIGN(r13 + r31);
    
elseif(q2 >= q0 && q2 >= q1 && q2 >= q3) 
    q0 =q0* SIGN(r13 - r31);
    q1 = q1*SIGN(r21 + r12);
    q2 = q2*1.0;
    q3 =q3* SIGN(r32 + r23);
    
elseif(q3 >= q0 && q3 >= q1 && q3 >= q2) 
    q0 = q0*SIGN(r21 - r12);
    q1 =q1* SIGN(r31 + r13);
    q2 =q2* SIGN(r32 + r23);
    q3 =q3*1.0;
 end
r = NORM([q0, q1, q2, q3]);
q0 =q0/ r;
q1 = q1/r;
q2 = q2/r;
q3 = q3/r;