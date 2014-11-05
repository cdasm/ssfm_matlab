%*********************old version which can be omitted*****************
%inference for the very simple case [a,b,c] is the projected 3D point on
%the sphere, [d,e,f] is the real point, [r1,r2,r3] are the 3 parameters for
%rotation of Rodrigures, [t1,t2,t3] are the 3 transition parameters
%syms a b c d e f r1 r2 r3 t1 t2 t3 real;


%xtem=(rotation_MfromRodrigues(r1,r2,r3)*([d e f]-[t1 t2 t3])')';

%ff=[xtem(1)/a-xtem(2)/b, xtem(2)/b-xtem(3)/c, xtem(3)/c-xtem(1)/a];

%jsym=jacobian(ff,[r1 r2 r3 t1 t2 t3]);

%ccode(jsym);

%jsym2=jacobian(ff,[d,e,f]);

%ccode(jsym2);

%**********************new version starts here*********************

a=sym('a',[1,3])

b=sym('b',[1,3])

r=sym('r',[1,3])

t=sym('t',[1,3])

xtem=(rotation_thompson(r(1),r(2),r(3))*(b-t)')';


ff=[xtem(1)/a(1)-xtem(2)/a(2), xtem(2)/a(2)-xtem(3)/a(3), xtem(3)/a(3)-xtem(1)/a(1)]
ff=simple(ff)
ccode(ff)

jsym=jacobian(ff,cat(2,r,t))

jsym=simple(jsym)


%[                    (16*b3 - 16*t3 - r2^3*(2*b1 - 2*t1) + r2^2*(4*b3 - 4*t3) + r3^2*(4*b3 - 4*t3) + r1*((4*b2 - 4*t2)*r2^2 + r3*(4*b3 - 4*t3)*r2 + 16*b2 - 16*t2 + r3*(8*b1 - 8*t1)) + r1^2*(4*t3 - 4*b3 + r2*(2*b1 - 2*t1)) - r2*((2*b1 - 2*t1)*r3^2 + 8*b1 - 8*t1))/(a2*(r1^2 + r2^2 + r3^2 + 4)^2) + (r1*((4*a2*b1 - 4*a2*t1)*r2^2 + (8*a2*t3 - 8*a2*b3)*r2 + (4*a2*b1 - 4*a2*t1)*r3^2 + (8*a2*b2 - 8*a2*t2)*r3) + r2*((2*a2*b2 - 2*a2*t2)*r3^2 + 8*a2*b2 - 8*a2*t2) + r3*(8*a2*b3 - 8*a2*t3) - r1^2*(r2*(2*a2*b2 - 2*a2*t2) + r3*(2*a2*b3 - 2*a2*t3)) + r2^3*(2*a2*b2 - 2*a2*t2) + r3^3*(2*a2*b3 - 2*a2*t3) + r2^2*r3*(2*a2*b3 - 2*a2*t3))/(a1*a2*(r1^2 + r2^2 + r3^2 + 4)^2),                       (16*a2*b3 - 16*a2*t3 - r2^2*(4*a2*b3 - 4*a2*t3 + r1*(2*a2*b2 - 2*a2*t2)) + r1*((2*a2*b2 - 2*a2*t2)*r3^2 + 8*a2*b2 - 8*a2*t2) + r1^3*(2*a2*b2 - 2*a2*t2) + r1^2*(4*a2*b3 - 4*a2*t3) + r3^2*(4*a2*b3 - 4*a2*t3) - r2*((4*a2*b1 - 4*a2*t1)*r1^2 + r3*(4*a2*b3 - 4*a2*t3)*r1 + 16*a2*b1 - 16*a2*t1 - r3*(8*a2*b2 - 8*a2*t2)))/(a1*a2*(r1^2 + r2^2 + r3^2 + 4)^2) - (r2*((4*b2 - 4*t2)*r1^2 + (8*b3 - 8*t3)*r1 + (4*b2 - 4*t2)*r3^2 + (8*t1 - 8*b1)*r3) - r2^2*(r1*(2*b1 - 2*t1) + r3*(2*b3 - 2*t3)) + r1^3*(2*b1 - 2*t1) + r3^3*(2*b3 - 2*t3) + r3*(8*b3 - 8*t3) + r1*((2*b1 - 2*t1)*r3^2 + 8*b1 - 8*t1) + r1^2*r3*(2*b3 - 2*t3))/(a2*(r1^2 + r2^2 + r3^2 + 4)^2),    (16*a2*t2 - 16*a2*b2 - r1^2*(4*a2*b2 - 4*a2*t2 + 4*a2*b1*r3 - 4*a2*r3*t1) + r2^2*(4*a2*t2 - 4*a2*b2 + r1*(2*a2*b3 - 2*a2*t3)) + r1*(8*a2*b3 - 8*a2*t3 + 2*a2*r3^2*t3 - 2*a2*b3*r3^2) - r2*(r1*(4*a2*b2*r3 - 4*a2*r3*t2) + 8*a2*b3*r3 - 8*a2*r3*t3) + r1^3*(2*a2*b3 - 2*a2*t3) - 4*a2*r3^2*t2 - 16*a2*b1*r3 + 16*a2*r3*t1 + 4*a2*b2*r3^2)/(a1*a2*(r1^2 + r2^2 + r3^2 + 4)^2) - (16*b1 - 16*t1 + r1^2*(4*b1 - 4*t1) + r2^3*(2*b3 - 2*t3) - 16*b2*r3 + 16*r3*t2 - 4*b1*r3^2 + r2^2*(4*b1 - 4*t1 - 4*b2*r3 + 4*r3*t2) + 4*r3^2*t1 + r1*(8*b3*r3 - 8*r3*t3) + r2*(8*b3 - 8*t3 + r1^2*(2*b3 - 2*t3) - 2*b3*r3^2 + 2*r3^2*t3 - r1*(4*b1*r3 - 4*r3*t1)))/(a2*(r1^2 + r2^2 + r3^2 + 4)^2), (- a2*r1^2 + 2*a1*r1*r2 + a2*r2^2 + a2*r3^2 + 4*a1*r3 - 4*a2)/(a1*a2*(r1^2 + r2^2 + r3^2 + 4)), (- a1*r1^2 - 2*a2*r1*r2 + a1*r2^2 - a1*r3^2 + 4*a2*r3 + 4*a1)/(a1*a2*(r1^2 + r2^2 + r3^2 + 4)),                  -(r1*(4*a1 + 2*a2*r3) + r2*(4*a2 - 2*a1*r3))/(a1*a2*(r1^2 + r2^2 + r3^2 + 4))]
%[ (16*a3*t3 - 16*a3*b3 - r2^2*(4*a3*b3 - 4*a3*t3 + 4*a3*b2*r1 - 4*a3*r1*t2) + r3^2*(4*a3*t3 - 4*a3*b3 + r2*(2*a3*b1 - 2*a3*t1)) + r2*(8*a3*b1 - 8*a3*t1 + 2*a3*r1^2*t1 - 2*a3*b1*r1^2) - r3*(r2*(4*a3*b3*r1 - 4*a3*r1*t3) + 8*a3*b1*r1 - 8*a3*r1*t1) + r2^3*(2*a3*b1 - 2*a3*t1) - 4*a3*r1^2*t3 - 16*a3*b2*r1 + 16*a3*r1*t2 + 4*a3*b3*r1^2)/(a2*a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (16*b2 - 16*t2 + r3^3*(2*b1 - 2*t1) + r2^2*(4*b2 - 4*t2) - 16*b3*r1 + 16*r1*t3 - 4*b2*r1^2 + r3^2*(4*b2 - 4*t2 - 4*b3*r1 + 4*r1*t3) + 4*r1^2*t2 + r2*(8*b1*r1 - 8*r1*t1) + r3*(8*b1 - 8*t1 + r2^2*(2*b1 - 2*t1) - 2*b1*r1^2 + 2*r1^2*t1 - r2*(4*b2*r1 - 4*r1*t2)))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2), (r1^2*(r3*(2*a3*b3 - 2*a3*t3) + 4*a3*b2*r2 - 4*a3*r2*t2) + r1*(8*a3*b1 - 8*a3*t1 + r3^2*(2*a3*b1 - 2*a3*t1) + 2*a3*r2^2*t1 + 8*a3*b3*r2 - 8*a3*r2*t3 - 2*a3*b1*r2^2) + r3*(8*a3*b3 - 8*a3*t3 + 2*a3*r2^2*t3 - 8*a3*b1*r2 + 8*a3*r2*t1 - 2*a3*b3*r2^2) + r3^2*(4*a3*b2*r2 - 4*a3*r2*t2) + r1^3*(2*a3*b1 - 2*a3*t1) + r3^3*(2*a3*b3 - 2*a3*t3))/(a2*a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (16*t1 - 16*b1 + r3^3*(2*b2 - 2*t2) - 16*b3*r2 + 16*r2*t3 - r1*(8*b2*r2 - 8*r2*t2 + r3*(4*b1*r2 - 4*r2*t1)) + 4*b1*r2^2 - r3^2*(4*b1 - 4*t1 + 4*b3*r2 - 4*r2*t3) - 4*r2^2*t1 + r1^2*(4*t1 - 4*b1 + r3*(2*b2 - 2*t2)) + r3*(8*b2 - 8*t2 - 2*b2*r2^2 + 2*r2^2*t2))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2), (r2^2*(4*a3*b1 - 4*a3*t1 - 4*a3*b2*r3 + 4*a3*r3*t2) + 16*a3*b1 - 16*a3*t1 + r1^2*(4*a3*b1 - 4*a3*t1 + r2*(2*a3*b3 - 2*a3*t3)) + r2*(8*a3*b3 - 8*a3*t3 + 2*a3*r3^2*t3 - 2*a3*b3*r3^2) - r1*(r2*(4*a3*b1*r3 - 4*a3*r3*t1) - 8*a3*b3*r3 + 8*a3*r3*t3) + r2^3*(2*a3*b3 - 2*a3*t3) + 4*a3*r3^2*t1 - 16*a3*b2*r3 + 16*a3*r3*t2 - 4*a3*b1*r3^2)/(a2*a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (r2^2*(4*b3*r3 - 4*r3*t3) + r1^3*(2*b1 - 2*t1) + r2^3*(2*b2 - 2*t2) + r2*(8*b2 - 8*t2 + 8*b1*r3 - 8*r3*t1 - 2*b2*r3^2 + 2*r3^2*t2) + r1*(8*b1 - 8*t1 + r2^2*(2*b1 - 2*t1) - 8*b2*r3 + 8*r3*t2 - 2*b1*r3^2 + 2*r3^2*t1) + r1^2*(4*b3*r3 - 4*r3*t3 + r2*(2*b2 - 2*t2)))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2),                  -(r2*(4*a2 + 2*a3*r1) + r3*(4*a3 - 2*a2*r1))/(a2*a3*(r1^2 + r2^2 + r3^2 + 4)),   (a3*r1^2 + 4*a2*r1 - a3*r2^2 + 2*a2*r2*r3 + a3*r3^2 - 4*a3)/(a2*a3*(r1^2 + r2^2 + r3^2 + 4)), (- a2*r1^2 + 4*a3*r1 - a2*r2^2 - 2*a3*r2*r3 + a2*r3^2 + 4*a2)/(a2*a3*(r1^2 + r2^2 + r3^2 + 4))]
%[                    (16*b2 - 16*t2 + r3^3*(2*b1 - 2*t1) + r2^2*(4*b2 - 4*t2) + r3^2*(4*b2 - 4*t2) - r1*((4*b3 - 4*t3)*r3^2 + r2*(4*b2 - 4*t2)*r3 + 16*b3 - 16*t3 - r2*(8*b1 - 8*t1)) - r1^2*(4*b2 - 4*t2 + r3*(2*b1 - 2*t1)) + r3*((2*b1 - 2*t1)*r2^2 + 8*b1 - 8*t1))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (r1*((4*a3*b1 - 4*a3*t1)*r2^2 + (8*a3*t3 - 8*a3*b3)*r2 + (4*a3*b1 - 4*a3*t1)*r3^2 + (8*a3*b2 - 8*a3*t2)*r3) + r3*((2*a3*b3 - 2*a3*t3)*r2^2 + 8*a3*b3 - 8*a3*t3) + r2*(8*a3*b2 - 8*a3*t2) - r1^2*(r2*(2*a3*b2 - 2*a3*t2) + r3*(2*a3*b3 - 2*a3*t3)) + r2^3*(2*a3*b2 - 2*a3*t2) + r3^3*(2*a3*b3 - 2*a3*t3) + r2*r3^2*(2*a3*b2 - 2*a3*t2))/(a1*a3*(r1^2 + r2^2 + r3^2 + 4)^2),                                       - (16*b1 - 16*t1 - r3^3*(2*b2 - 2*t2) + r3^2*(4*b1 - 4*t1) + r2*(16*b3 - 16*t3 + r3^2*(4*b3 - 4*t3) + r1*(8*b2 - 8*t2 + r3*(4*b1 - 4*t1))) - r3*(8*b2 - 8*t2) - r1^2*(4*t1 - 4*b1 + r3*(2*b2 - 2*t2)) + r2^2*(4*t1 - 4*b1 + r3*(2*b2 - 2*t2)))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (16*a3*b3 - 16*a3*t3 - r2^2*(4*a3*b3 - 4*a3*t3 + r1*(2*a3*b2 - 2*a3*t2)) + r1*((2*a3*b2 - 2*a3*t2)*r3^2 + 8*a3*b2 - 8*a3*t2) + r1^3*(2*a3*b2 - 2*a3*t2) + r1^2*(4*a3*b3 - 4*a3*t3) + r3^2*(4*a3*b3 - 4*a3*t3) - r2*((4*a3*b1 - 4*a3*t1)*r1^2 + r3*(4*a3*b3 - 4*a3*t3)*r1 + 16*a3*b1 - 16*a3*t1 - r3*(8*a3*b2 - 8*a3*t2)))/(a1*a3*(r1^2 + r2^2 + r3^2 + 4)^2), (r1^2*(4*b3*r3 - 4*r3*t3) + r1^3*(2*b1 - 2*t1) + r2^3*(2*b2 - 2*t2) + r1*(8*b1 - 8*t1 - 8*b2*r3 + 8*r3*t2 - 2*b1*r3^2 + 2*r3^2*t1) + r2*(8*b2 - 8*t2 + r1^2*(2*b2 - 2*t2) + 8*b1*r3 - 8*r3*t1 - 2*b2*r3^2 + 2*r3^2*t2) + r2^2*(4*b3*r3 - 4*r3*t3 + r1*(2*b1 - 2*t1)))/(a3*(r1^2 + r2^2 + r3^2 + 4)^2) - (16*a3*t2 - 16*a3*b2 - r1^2*(4*a3*b2 - 4*a3*t2 + 4*a3*b1*r3 - 4*a3*r3*t1) + r2^2*(4*a3*t2 - 4*a3*b2 + r1*(2*a3*b3 - 2*a3*t3)) + r1*(8*a3*b3 - 8*a3*t3 + 2*a3*r3^2*t3 - 2*a3*b3*r3^2) - r2*(r1*(4*a3*b2*r3 - 4*a3*r3*t2) + 8*a3*b3*r3 - 8*a3*r3*t3) + r1^3*(2*a3*b3 - 2*a3*t3) - 4*a3*r3^2*t2 - 16*a3*b1*r3 + 16*a3*r3*t1 + 4*a3*b2*r3^2)/(a1*a3*(r1^2 + r2^2 + r3^2 + 4)^2),   (a3*r1^2 - 2*a1*r1*r3 - a3*r2^2 + 4*a1*r2 - a3*r3^2 + 4*a3)/(a1*a3*(r1^2 + r2^2 + r3^2 + 4)),                  -(r1*(4*a1 - 2*a3*r2) + r3*(4*a3 + 2*a1*r2))/(a1*a3*(r1^2 + r2^2 + r3^2 + 4)),   (a1*r1^2 + 2*a3*r1*r3 + a1*r2^2 + 4*a3*r2 - a1*r3^2 - 4*a1)/(a1*a3*(r1^2 + r2^2 + r3^2 + 4))]
 

ccode(jsym)

jsym2=jacobian(ff,b)

jsym2=simple(jsym2)

ccode(jsym2)

%**********************memo 2, here transition only have two freedom 

a=sym('a',[1,3])

b=sym('b',[1,3])

r=sym('r',[1,3])

t=sym('t',[1,2])

xtem=(rotation_thompson(r(1),r(2),r(3))*(b- transition_TfromS(t(1),t(2)))')';

ff=[xtem(1)/a(1)-xtem(2)/a(2), xtem(2)/a(2)-xtem(3)/a(3), xtem(3)/a(3)-xtem(1)/a(1)]

ff=simple(ff)
ccode(ff)

jsym=jacobian(ff,cat(2,r,t))

jsym=simple(jsym)


ccode(jsym)

jsym2=jacobian(ff,b)

jsym2=simple(jsym2)

ccode(jsym2)



%###################################the inference actually used goes
%here###########################


syms a b c d e f r1 r2 r3 t1 t2 t3 real; % a b c coordinates of projpoints d e f coordinates of points r1 r2 r3 rotation parameters
% t1 t2 t3 transition parameters

xtem=(rotation_thompson(r1,r2,r3)*([d e f]-[t1 t2 t3])')';

ff=[xtem(1)/a-xtem(2)/b, xtem(2)/b-xtem(3)/c, xtem(3)/c-xtem(1)/a];

jsym=jacobian(ff,[r1 r2 r3 t1 t2 t3]);

%######################## second inference
syms a b c d e f r1 r2 r3 t1 t2 real; % a b c coordinates of projpoints d e f coordinates of points r1 r2 r3 rotation parameters
% t1 t2 t3 transition parameters

xtem=(rotation_thompson(r1,r2,r3)*([d e f]-transition_TfromS(t1,t2))')';

ff=[xtem(1)/a-xtem(2)/b, xtem(2)/b-xtem(3)/c, xtem(3)/c-xtem(1)/a];

jsym=jacobian(ff,[r1 r2 r3 t1 t2]);




