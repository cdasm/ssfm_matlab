/*
 * goodError.c
 *
 * Code generation for function 'goodError'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "goodError.h"
#include "sqrt.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 191, "goodError",
  "/home/pitybea/ssfm_matlab/goodError.m" };

static emlrtRSInfo b_emlrtRSI = { 207, "goodError",
  "/home/pitybea/ssfm_matlab/goodError.m" };

static emlrtRSInfo c_emlrtRSI = { 223, "goodError",
  "/home/pitybea/ssfm_matlab/goodError.m" };

static emlrtRSInfo d_emlrtRSI = { 226, "goodError",
  "/home/pitybea/ssfm_matlab/goodError.m" };

static emlrtRSInfo e_emlrtRSI = { 230, "goodError",
  "/home/pitybea/ssfm_matlab/goodError.m" };

/* Function Definitions */
void goodError(const emlrtStack *sp, const real_T var1[6], const real_T var2[5],
               real_T zz, real_T A0[8])
{
  real_T t4;
  real_T t5;
  real_T t6;
  real_T t7;
  real_T t8;
  real_T t9;
  real_T t11;
  real_T t13;
  real_T t14;
  real_T t22;
  real_T t23;
  real_T t24;
  real_T t26;
  real_T t27;
  real_T t28;
  real_T t29;
  real_T t30;
  real_T t31;
  real_T t54;
  real_T t56;
  real_T t86;
  real_T t87;
  real_T t88;
  real_T t15;
  real_T t16;
  real_T t18;
  real_T t19;
  real_T t48;
  real_T t50;
  real_T t52;
  real_T t90;
  real_T t197;
  real_T t32;
  real_T t45;
  real_T t57;
  real_T t82;
  real_T t83;
  real_T t84;
  real_T t97;
  real_T t98;
  real_T t99;
  real_T t100;
  real_T t103;
  real_T t104;
  real_T t105;
  real_T t106;
  real_T t107;
  real_T t108;
  real_T t109;
  real_T t110;
  real_T t111;
  real_T t128;
  real_T t130;
  real_T t145;
  real_T t150;
  real_T t153;
  real_T t154;
  real_T t133;
  real_T t138;
  real_T t148;
  real_T t141;
  real_T t157;
  real_T t158;
  real_T t161;
  real_T t147;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;

  /* p1 p2 p3 q1 q2 q3 t1 t2 r1 r2 r3 */
  t4 = var2[1] * var2[1];
  t5 = var2[0] * var2[0];
  t6 = t5 * 0.25;
  t7 = t4 * 0.25;
  t8 = var2[2] * var2[2];
  t9 = t8 * 0.25;
  t11 = 1.0 / (((t6 + t7) + t9) + 1.0);
  t13 = var2[2] * t11;
  t14 = var2[0] * var2[1] * t11 * 0.5;
  t7 = t11 * (((t6 + t7) + t9) - 1.0);
  t9 = var2[1] * t11;
  t22 = var2[0] * var2[2] * t11 * 0.5;
  t23 = var2[0] * t11;
  t24 = var2[1] * var2[2] * t11 * 0.5;
  t26 = t7 - t5 * t11 * 0.5;
  t27 = var1[3] * t26 * 2.0;
  t28 = t13 - t14;
  t29 = var1[4] * t28 * 2.0;
  t30 = t9 + t22;
  t31 = var1[5] * t30 * 2.0;
  t54 = t7 - t4 * t11 * 0.5;
  t14 += t13;
  t56 = t23 - t24;
  t86 = var1[4] * t54;
  t87 = var1[3] * t14;
  t88 = var1[5] * t56;
  t15 = var1[0] * var1[1] * 2.0 + ((t27 + t29) - t31) * ((t86 - t87) + t88);
  t16 = ((((((var1[3] * 4.0 - var1[4] * var2[2] * 4.0) + var1[5] * var2[1] * 4.0)
            + var1[3] * t5) - var1[3] * t4) - var1[3] * t8) + var1[4] * var2[0] *
         var2[1] * 2.0) + var1[5] * var2[0] * var2[2] * 2.0;
  t6 = ((t4 + t5) + t8) + 4.0;
  t18 = 1.0 / (t6 * t6);
  t19 = ((((((var1[4] * 4.0 + var1[3] * var2[2] * 4.0) - var1[5] * var2[0] * 4.0)
            - var1[4] * t5) + var1[4] * t4) - var1[4] * t8) + var1[3] * var2[0] *
         var2[1] * 2.0) + var1[5] * var2[1] * var2[2] * 2.0;
  t48 = var1[5] * (t7 - t8 * t11 * 0.5);
  t50 = var1[3] * (t9 - t22);
  t52 = var1[4] * (t23 + t24);
  t90 = var1[0] * var1[2] * 2.0;
  t197 = (t48 + t50) - t52;
  t32 = t90 + t197 * ((t27 + t29) - t31);
  t9 = var1[0] * var1[0] * 2.0;
  t13 = t18 * (t16 * t16) * 2.0;
  t45 = ((((((var1[5] * 4.0 - var1[3] * var2[1] * 4.0) + var1[4] * var2[0] * 4.0)
            - var1[5] * t5) - var1[5] * t4) + var1[5] * t8) + var1[3] * var2[0] *
         var2[2] * 2.0) + var1[4] * var2[1] * var2[2] * 2.0;
  t57 = var1[1] * var1[2] * 2.0 + ((t48 + t50) - t52) * ((var1[4] * t54 * 2.0 -
    var1[3] * t14 * 2.0) + var1[5] * t56 * 2.0);
  t6 = var1[1] * var1[1] * 2.0;
  t7 = var1[2] * var1[2] * 2.0;
  t24 = t18 * (t19 * t19) * 2.0;
  t11 = t18 * (t45 * t45) * 2.0;
  t82 = ((t9 + t13) + t6) + t24;
  t83 = ((t9 + t13) + t7) + t11;
  t84 = ((t6 + t7) + t24) + t11;
  t97 = t57 * t57;
  t98 = muDoubleScalarSin(var2[3]);
  t99 = muDoubleScalarCos(var2[3]);
  t100 = muDoubleScalarSin(var2[4]);
  t56 = var1[5] * t98 * 4.0;
  t54 = var1[4] * var2[0] * t98 * 4.0;
  t103 = muDoubleScalarCos(var2[4]);
  t104 = var1[5] * t8 * t98;
  t105 = var1[4] * t99 * t100 * 4.0;
  t106 = var1[3] * var2[2] * t99 * t100 * 4.0;
  t107 = var1[4] * t4 * t99 * t100;
  t108 = var1[3] * var2[0] * var2[2] * t98 * 2.0;
  t109 = var1[4] * var2[1] * var2[2] * t98 * 2.0;
  t110 = var1[3] * var2[0] * var2[1] * t99 * t100 * 2.0;
  t111 = var1[5] * var2[1] * var2[2] * t99 * t100 * 2.0;
  t7 = var1[3] * var2[1] * t98 * 4.0;
  t9 = var1[5] * t5 * t98;
  t13 = var1[5] * t4 * t98;
  t14 = var1[5] * var2[0] * t99 * t100 * 4.0;
  t22 = var1[4] * t5 * t99 * t100;
  t23 = var1[4] * t8 * t99 * t100;
  t6 = ((((((((((((((((((((((t56 + t54) + t104) + t105) + t106) + t107) + t108)
                       + t109) + t110) + t111) + var1[3] * t99 * t103 * 4.0) +
                   var1[3] * t5 * t99 * t103) + var1[5] * var2[1] * t99 * t103 *
                  4.0) + var1[4] * var2[0] * var2[1] * t99 * t103 * 2.0) + var1
                [5] * var2[0] * var2[2] * t99 * t103 * 2.0) - t7) - t9) - t13) -
            t14) - var1[3] * t4 * t99 * t103) - var1[3] * t8 * t99 * t103) - t22)
        - t23) - var1[4] * var2[2] * t99 * t103 * 4.0;
  t128 = t99 * t100 * 2.0 - t18 * t19 * t6 * 2.0;
  t130 = t98 * 2.0 - t18 * t45 * t6 * 2.0;
  t6 = t99 * t103 * (t24 + t11);
  t145 = t6 - t16 * t18 * (((((((((((((((t56 + t54) + t104) + t105) + t106) +
    t107) + t108) + t109) + t110) + t111) - t7) - t9) - t13) - t14) - t22) - t23)
    * 2.0;
  t150 = t15 * t82 * t128;
  t13 = t32 * t83 * t130;
  t14 = t32 * t57 * t128;
  t153 = t15 * t57 * t130;
  t154 = t82 * t83 * t145;
  t133 = ((((t150 + t13) + t14) + t153) + t154) - t97 * (t6 - t16 * t18 *
    (((((((((((((((t56 + t54) + t104) + t105) + t106) + t107) + t108) + t109) +
            t110) + t111) - var1[3] * var2[1] * t98 * 4.0) - var1[5] * t4 * t98)
        - var1[5] * t5 * t98) - var1[5] * var2[0] * t99 * t100 * 4.0) - var1[4] *
      t5 * t99 * t100) - var1[4] * t8 * t99 * t100) * 2.0);
  t7 = t15 * t15;
  t8 = t82 * t7;
  t6 = t32 * t32;
  t138 = t84 * t97;
  t148 = t82 * t83 * t84;
  t9 = (((t8 + t83 * t6) + t138) + t15 * t32 * t57 * 2.0) - t148;
  t141 = 1.0 / (t9 * t9);
  t157 = t15 * t82 * t145;
  t158 = t57 * t84 * t130;
  t161 = t82 * t84 * t128;
  t147 = ((((-(t128 * t6) + t157) + t158) + t32 * t57 * t145) + t15 * t32 * t130)
    + t161;
  t82 = t130 * t7;
  t4 = t57 * t84 * t128;
  t5 = t15 * t57 * t145;
  t7 = t83 * t84 * t130;
  t84 = ((((-t82 + t4) + t32 * t83 * t145) + t15 * t32 * t128) + t5) + t7;
  t16 = t97 * t145;
  t111 = ((((t150 + t13) + t14) + t153) + t154) - t16;
  t19 = t141 * (t147 * t147);
  t18 = t141 * (t84 * t84);
  t105 = 1.0 / t9;
  t9 = (t19 + t18) + t141 * (t111 * t111);
  st.site = &emlrtRSI;
  b_sqrt(&st, &t9);
  t106 = 1.0 / t9;
  t107 = var1[0] * t147 * t105 - var1[1] * t111 * t105;
  t108 = var1[0] * t84 * t105 - var1[2] * t111 * t105;
  t109 = var1[2] * t147 * t105 - var1[1] * t84 * t105;
  t110 = t98 + t84 * t105;
  t45 = t99 * t103;
  t104 = t45 + t111 * t105;
  t24 = t99 * t100;
  t56 = t24 + t147 * t105;
  t9 = (t110 * t110 + t104 * t104) + t56 * t56;
  st.site = &b_emlrtRSI;
  b_sqrt(&st, &t9);
  t54 = 1.0 / t9;
  t11 = var1[3] * t26;
  t22 = var1[4] * t28;
  t14 = (t11 + t22) - var1[5] * t30;
  t23 = t110 * t14 - t104 * ((t48 + t50) - t52);
  t9 = t90 + ((t27 + t29) - t31) * ((t48 + t50) - t52);
  t13 = t9 * t9;
  t6 = 1.0 / ((((t8 + t138) - t148) + t83 * t13) + t15 * t57 * t9 * 2.0);
  t7 = -(t98 + t6 * (((((-t82 + t4) + t5) + t7) + t15 * t128 * t9) + t83 * t145 *
                     t9)) * ((t86 - t87) + t88) + t56 * t197;
  t6 = (t45 + t6 * (((((t150 + t153) + t154) - t16) + t57 * t128 * t9) + t83 *
                    t130 * t9)) * ((t86 - t87) + t88) - t14 * (t24 + t6 *
    (((((t157 + t158) + t161) - t128 * t13) + t15 * t130 * t9) + t57 * t145 * t9));
  t9 = (t19 + t18) + t133 * t133 * t141;
  st.site = &c_emlrtRSI;
  b_sqrt(&st, &t9);
  A0[0] = -zz * (var1[0] + t111 * t105 / t9);
  A0[1] = -zz * (var1[1] + t147 * t105 * t106);
  A0[2] = -zz * (var1[2] + t84 * t105 * t106);
  A0[3] = (t107 * t107 + t108 * t108) + t109 * t109;
  st.site = &d_emlrtRSI;
  b_sqrt(&st, &A0[3]);
  A0[4] = zz * (((t11 + t22) - var1[5] * t30) - t104 * t54);
  A0[5] = zz * (((t86 - t87) + t88) - t56 * t54);
  A0[6] = zz * (((t48 + t50) - t52) - t110 * t54);
  A0[7] = (t23 * t23 + t7 * t7) + t6 * t6;
  st.site = &e_emlrtRSI;
  b_sqrt(&st, &A0[7]);
}

/* End of code generation (goodError.c) */
