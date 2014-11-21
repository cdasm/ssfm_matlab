
MatrixXd jacobianForRotationAndTransitionUnitLength(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
double p1,p2,p3,q1,q2,q3,r1,r2,r3,t1,t2;

	
	p1=var0(0,0);
	p2=var0(0,1);
	p3=var0(0,2);

	q1=var1(0,0);
	q2=var1(0,1);
	q3=var1(0,2);

	r1=var2(0,0);
	r2=var2(0,1);
	r3=var2(0,2);
	t1=var2(0,3);
	t2=var2(0,4);


double t4 ,t5 ,t6 ,t7 ,t8 ,t9 ,t10 ,t11 ,t12 ,t13 ,t14 ,t20 ,t21 ,t22 ,t23 ,t24 ,t25 ,t26 ,t27 ,t28 ,t29 ,t30 ,t31 ,t53 ,t54 ,t55 ,t56 ,t85 ,t86 ,t87 ,t88 ,t89 ,t15 ,t35 ,t36 ,t37 ,t38 ,t39 ,t40 ,t41 ,t42 ,t16 ,t17 ,t18 ,t62 ,t63 ,t64 ,t65 ,t66 ,t67 ,t68 ,t69 ,t19 ,t46 ,t47 ,t48 ,t49 ,t50 ,t51 ,t52 ,t90 ,t91 ,t32 ,t33 ,t34 ,t43 ,t44 ,t72 ,t73 ,t74 ,t75 ,t76 ,t77 ,t78 ,t79 ,t45 ,t92 ,t93 ,t94 ,t95 ,t96 ,t57 ,t58 ,t59 ,t60 ,t61 ,t70 ,t71 ,t80 ,t81 ,t82 ,t83 ,t84 ,t97 ,t98 ,t99 ,t100 ,t101 ,t102 ,t103 ,t104 ,t105 ,t106 ,t107 ,t108 ,t109 ,t110 ,t111 ,t112 ,t113 ,t114 ,t115 ,t116 ,t119 ,t120 ,t121 ,t122 ,t123 ,t124 ,t125 ,t126 ,t127 ,t117 ,t118 ,t142 ,t128 ,t129 ,t146 ,t130 ,t131 ,t132 ,t143 ,t144 ,t145 ,t150 ,t151 ,t152 ,t153 ,t154 ,t133 ,t134 ,t135 ,t136 ,t137 ,t138 ,t139 ,t148 ,t140 ,t141 ,t156 ,t157 ,t158 ,t159 ,t160 ,t161 ,t147 ,t164 ,t165 ,t166 ,t167 ,t168 ,t169 ,t149 ,t173 ,t155 ,t162 ,t163 ,t170 ,t171 ,t172 ,t174 ,t175 ,t176 ,t177 ,t185 ,t178 ,t179 ,t180 ,t181 ,t183 ,t184 ,t182 ,t186 ,t187 ,t188 ,t189 ,t190 ;
t4 = r2*r2;
t5 = r1*r1;
t6 = t5*(1.0/4.0);
t7 = t4*(1.0/4.0);
t8 = r3*r3;
t9 = t8*(1.0/4.0);
t10 = t6+t7+t9+1.0;
t11 = 1.0/t10;
t12 = t6+t7+t9-1.0;
t13 = r3*t11;
t14 = r1*r2*t11*(1.0/2.0);
t20 = t11*t12;
t21 = r2*t11;
t22 = r1*r3*t11*(1.0/2.0);
t23 = r1*t11;
t24 = r2*r3*t11*(1.0/2.0);
t25 = t5*t11*(1.0/2.0);
t26 = t20-t25;
t27 = q1*t26*2.0;
t28 = t13-t14;
t29 = q2*t28*2.0;
t30 = t21+t22;
t31 = q3*t30*2.0;
t53 = t4*t11*(1.0/2.0);
t54 = t20-t53;
t55 = t13+t14;
t56 = t23-t24;
t85 = p1*p2*2.0;
t86 = q2*t54;
t87 = q1*t55;
t88 = q3*t56;
t89 = (t27+t29-t31)*(t86-t87+t88);
t15 = t85+t89;
t35 = q1*4.0;
t36 = q2*r3*4.0;
t37 = q3*r2*4.0;
t38 = q1*t5;
t39 = q1*t4;
t40 = q1*t8;
t41 = q2*r1*r2*2.0;
t42 = q3*r1*r3*2.0;
t16 = t35-t36+t37+t38-t39-t40+t41+t42;
t17 = t4+t5+t8+4.0;
t18 = 1.0/(t17*t17);
t62 = q2*4.0;
t63 = q1*r3*4.0;
t64 = q3*r1*4.0;
t65 = q2*t5;
t66 = q2*t4;
t67 = q2*t8;
t68 = q1*r1*r2*2.0;
t69 = q3*r2*r3*2.0;
t19 = t62+t63-t64-t65+t66-t67+t68+t69;
t46 = t8*t11*(1.0/2.0);
t47 = t20-t46;
t48 = q3*t47;
t49 = t21-t22;
t50 = q1*t49;
t51 = t23+t24;
t52 = q2*t51;
t90 = p1*p3*2.0;
t91 = (t27+t29-t31)*(t48+t50-t52);
t32 = t90+t91;
t33 = p1*p1;
t34 = t33*2.0;
t43 = t16*t16;
t44 = t18*t43*2.0;
t72 = q3*4.0;
t73 = q1*r2*4.0;
t74 = q2*r1*4.0;
t75 = q3*t5;
t76 = q3*t4;
t77 = q3*t8;
t78 = q1*r1*r3*2.0;
t79 = q2*r2*r3*2.0;
t45 = t72-t73+t74-t75-t76+t77+t78+t79;
t92 = p2*p3*2.0;
t93 = q2*t54*2.0;
t94 = q1*t55*2.0;
t95 = q3*t56*2.0;
t96 = (t48+t50-t52)*(t93-t94+t95);
t57 = t92+t96;
t58 = p2*p2;
t59 = t58*2.0;
t60 = p3*p3;
t61 = t60*2.0;
t70 = t19*t19;
t71 = t18*t70*2.0;
t80 = t45*t45;
t81 = t18*t80*2.0;
t82 = t34+t44+t59+t71;
t83 = t34+t44+t61+t81;
t84 = t59+t61+t71+t81;
t97 = t57*t57;
t98 = sin(t1);
t99 = cos(t1);
t100 = sin(t2);
t101 = q3*t98*4.0;
t102 = q2*r1*t98*4.0;
t103 = cos(t2);
t104 = q3*t8*t98;
t105 = q2*t99*t100*4.0;
t106 = q1*r3*t99*t100*4.0;
t107 = q2*t4*t99*t100;
t108 = q1*r1*r3*t98*2.0;
t109 = q2*r2*r3*t98*2.0;
t110 = q1*r1*r2*t99*t100*2.0;
t111 = q3*r2*r3*t99*t100*2.0;
t112 = q1*t99*t103*4.0;
t113 = q1*t5*t99*t103;
t114 = q3*r2*t99*t103*4.0;
t115 = q2*r1*r2*t99*t103*2.0;
t116 = q3*r1*r3*t99*t103*2.0;
t119 = q1*r2*t98*4.0;
t120 = q3*t5*t98;
t121 = q3*t4*t98;
t122 = q3*r1*t99*t100*4.0;
t123 = q1*t4*t99*t103;
t124 = q1*t8*t99*t103;
t125 = q2*t5*t99*t100;
t126 = q2*t8*t99*t100;
t127 = q2*r3*t99*t103*4.0;
t117 = t101+t102+t104+t105+t106+t107+t108+t109+t110+t111+t112+t113+t114+t115+t116-t119-t120-t121-t122-t123-t124-t125-t126-t127;
t118 = t99*t100*2.0;
t142 = t18*t19*t117*2.0;
t128 = t118-t142;
t129 = t98*2.0;
t146 = t18*t45*t117*2.0;
t130 = t129-t146;
t131 = t71+t81;
t132 = t99*t103*t131;
t143 = t101+t102+t104+t105+t106+t107+t108+t109+t110+t111-t119-t120-t121-t122-t125-t126;
t144 = t16*t18*t143*2.0;
t145 = t132-t144;
t150 = t15*t82*t128;
t151 = t32*t83*t130;
t152 = t32*t57*t128;
t153 = t15*t57*t130;
t154 = t82*t83*t145;
t133 = t150+t151+t152+t153+t154-t97*(t132-t16*t18*(t101+t102+t104+t105+t106+t107+t108+t109+t110+t111-q1*r2*t98*4.0-q3*t4*t98-q3*t5*t98-q3*r1*t99*t100*4.0-q2*t5*t99*t100-q2*t8*t99*t100)*2.0);
t134 = t15*t15;
t135 = t82*t134;
t136 = t32*t32;
t137 = t83*t136;
t138 = t84*t97;
t139 = t15*t32*t57*2.0;
t148 = t82*t83*t84;
t140 = t135+t137+t138+t139-t148;
t141 = 1.0/(t140*t140);
t156 = t128*t136;
t157 = t15*t82*t145;
t158 = t57*t84*t130;
t159 = t32*t57*t145;
t160 = t15*t32*t130;
t161 = t82*t84*t128;
t147 = -t156+t157+t158+t159+t160+t161;
t164 = t130*t134;
t165 = t57*t84*t128;
t166 = t32*t83*t145;
t167 = t15*t32*t128;
t168 = t15*t57*t145;
t169 = t83*t84*t130;
t149 = -t164+t165+t166+t167+t168+t169;
t173 = t97*t145;
t155 = t150+t151+t152+t153+t154-t173;
t162 = t147*t147;
t163 = t141*t162;
t170 = t149*t149;
t171 = t141*t170;
t172 = 1.0/t140;
t174 = t155*t155;
t175 = t141*t174;
t176 = t163+t171+t175;
t177 = 1.0/sqrt(t176);
t185 = t149*t172;
t178 = t98+t185;
t179 = t99*t103;
t180 = t155*t172;
t181 = t179+t180;
t183 = t99*t100;
t184 = t147*t172;
t182 = t183+t184;
t186 = t178*t178;
t187 = t181*t181;
t188 = t182*t182;
t189 = t186+t187+t188;
t190 = 1.0/sqrt(t189);

MatrixXd A0(1,6); 
A0(0,0) = -p1-t155*t172*1.0/sqrt(t163+t171+(t133*t133)*t141);
A0(0,1) = -p2-t147*t172*t177;
A0(0,2) = -p3-t149*t172*t177;
A0(0,3) = q2*t28-q3*t30-t181*t190+q1*(t20-t25);
A0(0,4) = -t87+t88-t182*t190+q2*(t20-t53);
A0(0,5) = t50-t52-t178*t190+q3*(t20-t46);
}