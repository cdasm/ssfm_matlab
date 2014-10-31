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

xtem=(rotation_MfromRodrigues(r(1),r(2),r(3))*(b-t)')';

ff=[xtem(1)/a(1)-xtem(2)/a(2), xtem(2)/a(2)-xtem(3)/a(3), xtem(3)/a(3)-xtem(1)/a(1)]

ccode(ff)

jsym=jacobian(ff,cat(2,r,t))

ccode(jsym)

jsym2=jacobian(ff,b)

ccode(jsym2)

%**********************memo 2, here transition only have two freedom 


