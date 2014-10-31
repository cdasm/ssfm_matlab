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