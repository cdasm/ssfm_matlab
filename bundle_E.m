function e=bundle_E(ee,skpt1,skpt2)

[a,b,c]=torr_EtoRt(ee);

tt=fromcrossmatrix(a);

 [t1,t2]=transition_SfromT(tt);
[t3,t4,t5]=rotation_AfromM(b);

[t6,t7]=bestTaR_b(skpt1,skpt2,[t1,t2,t3,t4,t5]);

e=crossmatrix(t6(1),t6(2),t6(3))*rotateMM(t7);