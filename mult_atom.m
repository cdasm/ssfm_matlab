function C= mult_atom(A,B)
C= zeros(1,30);


if  or( all( not(A)) ,  all( not(B)))
  return
end


C(1)=A(30)*B(1)+A(29)*B(5)+A(26)*B(12)+A(27)*B(9)+A(24)*B(16)+A(19)*B(21)+A(21)*B(19)+A(16)*B(24)+A(9)*B(27)+A(12)*B(26)+A(5)*B(29)+A(1)*B(30);
C(2)=A(30)*B(2)+A(29)*B(6)+A(26)*B(13)+A(28)*B(9)+A(25)*B(16)+A(20)*B(21)+A(27)*B(10)+A(24)*B(17)+A(19)*B(22)+A(22)*B(19)+A(17)*B(24)+A(10)*B(27)+A(21)*B(20)+A(16)*B(25)+A(9)*B(28)+A(13)*B(26)+A(6)*B(29)+A(2)*B(30);
C(3)=A(30)*B(3)+A(29)*B(7)+A(26)*B(14)+A(28)*B(10)+A(25)*B(17)+A(20)*B(22)+A(23)*B(19)+A(18)*B(24)+A(11)*B(27)+A(27)*B(11)+A(24)*B(18)+A(19)*B(23)+A(22)*B(20)+A(17)*B(25)+A(10)*B(28)+A(14)*B(26)+A(7)*B(29)+A(3)*B(30);
C(4)=A(30)*B(4)+A(29)*B(8)+A(26)*B(15)+A(28)*B(11)+A(25)*B(18)+A(20)*B(23)+A(23)*B(20)+A(18)*B(25)+A(11)*B(28)+A(15)*B(26)+A(8)*B(29)+A(4)*B(30);
C(5)=A(30)*B(5)+A(29)*B(12)+A(27)*B(16)+A(24)*B(21)+A(21)*B(24)+A(16)*B(27)+A(12)*B(29)+A(5)*B(30);
C(6)=A(30)*B(6)+A(29)*B(13)+A(28)*B(16)+A(25)*B(21)+A(27)*B(17)+A(24)*B(22)+A(22)*B(24)+A(17)*B(27)+A(21)*B(25)+A(16)*B(28)+A(13)*B(29)+A(6)*B(30);
C(7)=A(30)*B(7)+A(29)*B(14)+A(28)*B(17)+A(25)*B(22)+A(23)*B(24)+A(18)*B(27)+A(27)*B(18)+A(24)*B(23)+A(22)*B(25)+A(17)*B(28)+A(14)*B(29)+A(7)*B(30);
C(8)=A(30)*B(8)+A(29)*B(15)+A(28)*B(18)+A(25)*B(23)+A(23)*B(25)+A(18)*B(28)+A(15)*B(29)+A(8)*B(30);
C(9)=A(30)*B(9)+A(29)*B(16)+A(26)*B(21)+A(27)*B(19)+A(24)*B(24)+A(19)*B(27)+A(21)*B(26)+A(16)*B(29)+A(9)*B(30);
C(10)=A(30)*B(10)+A(29)*B(17)+A(26)*B(22)+A(28)*B(19)+A(25)*B(24)+A(20)*B(27)+A(27)*B(20)+A(24)*B(25)+A(19)*B(28)+A(22)*B(26)+A(17)*B(29)+A(10)*B(30);
C(11)=A(30)*B(11)+A(29)*B(18)+A(26)*B(23)+A(28)*B(20)+A(25)*B(25)+A(20)*B(28)+A(23)*B(26)+A(18)*B(29)+A(11)*B(30);
C(12)=A(30)*B(12)+A(27)*B(21)+A(21)*B(27)+A(12)*B(30);
C(13)=A(30)*B(13)+A(28)*B(21)+A(27)*B(22)+A(22)*B(27)+A(21)*B(28)+A(13)*B(30);
C(14)=A(30)*B(14)+A(28)*B(22)+A(23)*B(27)+A(27)*B(23)+A(22)*B(28)+A(14)*B(30);
C(15)=A(30)*B(15)+A(28)*B(23)+A(23)*B(28)+A(15)*B(30);
C(16)=A(30)*B(16)+A(29)*B(21)+A(27)*B(24)+A(24)*B(27)+A(21)*B(29)+A(16)*B(30);
C(17)=A(30)*B(17)+A(29)*B(22)+A(28)*B(24)+A(25)*B(27)+A(27)*B(25)+A(24)*B(28)+A(22)*B(29)+A(17)*B(30);
C(18)=A(30)*B(18)+A(29)*B(23)+A(28)*B(25)+A(25)*B(28)+A(23)*B(29)+A(18)*B(30);
C(19)=A(30)*B(19)+A(29)*B(24)+A(26)*B(27)+A(27)*B(26)+A(24)*B(29)+A(19)*B(30);
C(20)=A(30)*B(20)+A(29)*B(25)+A(26)*B(28)+A(28)*B(26)+A(25)*B(29)+A(20)*B(30);
C(21)=A(30)*B(21)+A(27)*B(27)+A(21)*B(30);
C(22)=A(30)*B(22)+A(28)*B(27)+A(27)*B(28)+A(22)*B(30);
C(23)=A(30)*B(23)+A(28)*B(28)+A(23)*B(30);
C(24)=A(30)*B(24)+A(29)*B(27)+A(27)*B(29)+A(24)*B(30);
C(25)=A(30)*B(25)+A(29)*B(28)+A(28)*B(29)+A(25)*B(30);
C(26)=A(30)*B(26)+A(29)*B(29)+A(26)*B(30);
C(27)=A(30)*B(27)+A(27)*B(30);
C(28)=A(30)*B(28)+A(28)*B(30);
C(29)=A(30)*B(29)+A(29)*B(30);
C(30)=A(30)*B(30);
