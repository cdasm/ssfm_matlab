function f=allcombination(a1_1, a2_1, a3_1, a1_2, a2_2, a3_2, a1_3, a2_3, a3_3)

%[ a1_1, a1_2, a1_3]
%[ a2_1, a2_2, a2_3]
%[ a3_1, a3_2, a3_3]

f=[ a1_1^2, a1_1*a2_1, a1_1*a3_1, a1_1*a1_2, a1_1*a2_2, a1_1*a3_2, a1_1*a1_3, a1_1*a2_3, a1_1*a3_3, a1_1*a2_1, a2_1^2, a2_1*a3_1, a1_2*a2_1, a2_1*a2_2, a2_1*a3_2, a1_3*a2_1, a2_1*a2_3, a2_1*a3_3, a1_1*a3_1, a2_1*a3_1, a3_1^2, a1_2*a3_1, a2_2*a3_1, a3_1*a3_2, a1_3*a3_1, a2_3*a3_1, a3_1*a3_3, a1_1*a1_2, a1_2*a2_1, a1_2*a3_1, a1_2^2, a1_2*a2_2, a1_2*a3_2, a1_2*a1_3, a1_2*a2_3, a1_2*a3_3, a1_1*a2_2, a2_1*a2_2, a2_2*a3_1, a1_2*a2_2, a2_2^2, a2_2*a3_2, a1_3*a2_2, a2_2*a2_3, a2_2*a3_3, a1_1*a3_2, a2_1*a3_2, a3_1*a3_2, a1_2*a3_2, a2_2*a3_2, a3_2^2, a1_3*a3_2, a2_3*a3_2, a3_2*a3_3, a1_1*a1_3, a1_3*a2_1, a1_3*a3_1, a1_2*a1_3, a1_3*a2_2, a1_3*a3_2, a1_3^2, a1_3*a2_3, a1_3*a3_3, a1_1*a2_3, a2_1*a2_3, a2_3*a3_1, a1_2*a2_3, a2_2*a2_3, a2_3*a3_2, a1_3*a2_3, a2_3^2, a2_3*a3_3, a1_1*a3_3, a2_1*a3_3, a3_1*a3_3, a1_2*a3_3, a2_2*a3_3, a3_2*a3_3, a1_3*a3_3, a2_3*a3_3, a3_3^2];
 