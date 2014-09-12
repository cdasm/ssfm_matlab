function a=fromcrossmatrix(cm)

%cm= [0 -a3 a2; a3 0 -a1; -a2 a1 0];

a=[cm(3,2),cm(1,3),cm(2,1)];
end