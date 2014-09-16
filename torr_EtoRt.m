%	By Philip Torr 2002
%	copyright Microsoft Corp.
%this function will convert an essential matrix to a rotation and translation martix
%as set out in Hartley and Zisserman.

%note there are 4 solutions in all, two (for sign of translation) times 2 for 2 different rotation matrices,

%note E + T_x R

function [Tx,R1,R2] = torr_EtoRt(E)

[U,S,V] = svd(E);


%use Hartley matrices:
W = [0 -1 0; 1 0 0; 0 0 1];
Z = [0 1 0; -1 0 0; 0 0 0];

Tx = U * Z * U';

R1 = U * W * V';
if det(R1)<0
    R1=-1*R1;
end

R2 = U * W' * V';
if det(R2)<0
    R2=-1*R2;
end

