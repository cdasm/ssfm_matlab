%two lines, (p,u) (q,v) there is a point which will minimize the squre
%length of cross(x-p,u) and cross(x-q,v)
%magically this value is


dot(v,v')*dot(u,u')*dot(p-q,cross(u,v))^2/sum(cross(u,v).^2)/(dot(u,u')+dot(v,v'))

%when v and u are of unit length, this is then

dot(p-q,cross(u,v))^2/sum(cross(u,v).^2)/2

%and let's guess what will happen if we have three or even more lines
%for example another (r,w)

%so long as I can guess, the answer will be (unit-length directional
%vector)

(dot(p-q,cross(u,v))^2+dot(q-r,cross(v,w))^2+dot(r-p,cross(v,w))^2)/(sum(cross(u,v).^2)+sum(cross(v,w).^2)+sum(cross(w,u).^2))/3

%or in its complex form

dot(v,v')*dot(u,u')*dot(w,w')*(dot(p-q,cross(u,v))^2+dot(q-r,cross(v,w))^2+dot(r-p,cross(v,w))^2)/(sum(cross(u,v).^2)+sum(cross(v,w).^2)+sum(cross(w,u).^2))/(dot(u,u')+dot(v,v')+dot(w,w'))

%and let's verify this
%wrong guess

%another guess

dot(v,v')*dot(u,u')*dot(w,w')*dot(p-q,cross(u,v))^2*dot(q-r,cross(v,w))^2*dot(r-p,cross(v,w))^2/sum(cross(u,v).^2)/sum(cross(v,w).^2)/sum(cross(w,u).^2)/(dot(u,u')+dot(v,v')+dot(w,w'))
%wrong