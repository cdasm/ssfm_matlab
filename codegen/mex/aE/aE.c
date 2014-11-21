/*
 * aE.c
 *
 * Code generation for function 'aE'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "aE.h"
#include "sqrt.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 197, "aE", "/home/pitybea/ssfm_matlab/aE.m" };

static emlrtRSInfo b_emlrtRSI = { 210, "aE", "/home/pitybea/ssfm_matlab/aE.m" };

static emlrtRSInfo c_emlrtRSI = { 214, "aE", "/home/pitybea/ssfm_matlab/aE.m" };

/* Function Definitions */
void aE(const emlrtStack *sp, const real_T var0[3], const real_T var1[3], const
        real_T var2[5], real_T A0[6])
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
  real_T t20;
  real_T t23;
  real_T t24;
  real_T t25;
  real_T t27;
  real_T t28;
  real_T t29;
  real_T t30;
  real_T t31;
  real_T t53;
  real_T t54;
  real_T t56;
  real_T t87;
  real_T t88;
  real_T t15;
  real_T t16;
  real_T t18;
  real_T t19;
  real_T t46;
  real_T t50;
  real_T t52;
  real_T t32;
  real_T t57;
  real_T t82;
  real_T t83;
  real_T t84;
  real_T t97;
  real_T t98;
  real_T t99;
  real_T t100;
  real_T t103;
  real_T t105;
  real_T t106;
  real_T t107;
  real_T t108;
  real_T t109;
  real_T t110;
  real_T t111;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;

  /* UNTITLED Summary of this function goes here */
  /*    Detailed explanation goes here */
  t4 = var2[1] * var2[1];
  t5 = var2[0] * var2[0];
  t6 = t5 * 0.25;
  t7 = t4 * 0.25;
  t8 = var2[2] * var2[2];
  t9 = t8 * 0.25;
  t11 = 1.0 / (((t6 + t7) + t9) + 1.0);
  t13 = var2[2] * t11;
  t14 = var2[0] * var2[1] * t11 * 0.5;
  t20 = t11 * (((t6 + t7) + t9) - 1.0);
  t7 = var2[1] * t11;
  t9 = var2[0] * var2[2] * t11 * 0.5;
  t23 = var2[0] * t11;
  t24 = var2[1] * var2[2] * t11 * 0.5;
  t25 = t5 * t11 * 0.5;
  t27 = var1[0] * (t20 - t25) * 2.0;
  t28 = t13 - t14;
  t29 = var1[1] * t28 * 2.0;
  t30 = t7 + t9;
  t31 = var1[2] * t30 * 2.0;
  t53 = t4 * t11 * 0.5;
  t54 = t20 - t53;
  t14 += t13;
  t56 = t23 - t24;
  t87 = var1[0] * t14;
  t88 = var1[2] * t56;
  t15 = var0[0] * var0[1] * 2.0 + ((t27 + t29) - t31) * ((var1[1] * t54 - t87) +
    t88);
  t16 = ((((((var1[0] * 4.0 - var1[1] * var2[2] * 4.0) + var1[2] * var2[1] * 4.0)
            + var1[0] * t5) - var1[0] * t4) - var1[0] * t8) + var1[1] * var2[0] *
         var2[1] * 2.0) + var1[2] * var2[0] * var2[2] * 2.0;
  t6 = ((t4 + t5) + t8) + 4.0;
  t18 = 1.0 / (t6 * t6);
  t19 = ((((((var1[1] * 4.0 + var1[0] * var2[2] * 4.0) - var1[2] * var2[0] * 4.0)
            - var1[1] * t5) + var1[1] * t4) - var1[1] * t8) + var1[0] * var2[0] *
         var2[1] * 2.0) + var1[2] * var2[1] * var2[2] * 2.0;
  t46 = t8 * t11 * 0.5;
  t6 = var1[2] * (t20 - t46);
  t50 = var1[0] * (t7 - t9);
  t52 = var1[1] * (t23 + t24);
  t32 = var0[0] * var0[2] * 2.0 + ((t27 + t29) - t31) * ((t6 + t50) - t52);
  t9 = var0[0] * var0[0] * 2.0;
  t13 = t18 * (t16 * t16) * 2.0;
  t29 = ((((((var1[2] * 4.0 - var1[0] * var2[1] * 4.0) + var1[1] * var2[0] * 4.0)
            - var1[2] * t5) - var1[2] * t4) + var1[2] * t8) + var1[0] * var2[0] *
         var2[2] * 2.0) + var1[1] * var2[1] * var2[2] * 2.0;
  t57 = var0[1] * var0[2] * 2.0 + ((t6 + t50) - t52) * ((var1[1] * t54 * 2.0 -
    var1[0] * t14 * 2.0) + var1[2] * t56 * 2.0);
  t6 = var0[1] * var0[1] * 2.0;
  t7 = var0[2] * var0[2] * 2.0;
  t24 = t18 * (t19 * t19) * 2.0;
  t27 = t18 * (t29 * t29) * 2.0;
  t82 = ((t9 + t13) + t6) + t24;
  t83 = ((t9 + t13) + t7) + t27;
  t84 = ((t6 + t7) + t24) + t27;
  t97 = t57 * t57;
  t98 = muDoubleScalarSin(var2[3]);
  t99 = muDoubleScalarCos(var2[3]);
  t100 = muDoubleScalarSin(var2[4]);
  t31 = var1[2] * t98 * 4.0;
  t56 = var1[1] * var2[0] * t98 * 4.0;
  t103 = muDoubleScalarCos(var2[4]);
  t54 = var1[2] * t8 * t98;
  t105 = var1[1] * t99 * t100 * 4.0;
  t106 = var1[0] * var2[2] * t99 * t100 * 4.0;
  t107 = var1[1] * t4 * t99 * t100;
  t108 = var1[0] * var2[0] * var2[2] * t98 * 2.0;
  t109 = var1[1] * var2[1] * var2[2] * t98 * 2.0;
  t110 = var1[0] * var2[0] * var2[1] * t99 * t100 * 2.0;
  t111 = var1[2] * var2[1] * var2[2] * t99 * t100 * 2.0;
  t7 = var1[0] * var2[1] * t98 * 4.0;
  t9 = var1[2] * t5 * t98;
  t13 = var1[2] * t4 * t98;
  t14 = var1[2] * var2[0] * t99 * t100 * 4.0;
  t11 = var1[1] * t5 * t99 * t100;
  t23 = var1[1] * t8 * t99 * t100;
  t6 = ((((((((((((((((((((((t31 + t56) + t54) + t105) + t106) + t107) + t108) +
                       t109) + t110) + t111) + var1[0] * t99 * t103 * 4.0) +
                   var1[0] * t5 * t99 * t103) + var1[2] * var2[1] * t99 * t103 *
                  4.0) + var1[1] * var2[0] * var2[1] * t99 * t103 * 2.0) + var1
                [2] * var2[0] * var2[2] * t99 * t103 * 2.0) - t7) - t9) - t13) -
            t14) - var1[0] * t4 * t99 * t103) - var1[0] * t8 * t99 * t103) - t11)
        - t23) - var1[1] * var2[2] * t99 * t103 * 4.0;
  t19 = t99 * t100 * 2.0 - t18 * t19 * t6 * 2.0;
  t29 = t98 * 2.0 - t18 * t29 * t6 * 2.0;
  t6 = t99 * t103 * (t24 + t27);
  t13 = t6 - t16 * t18 * (((((((((((((((t31 + t56) + t54) + t105) + t106) + t107)
    + t108) + t109) + t110) + t111) - t7) - t9) - t13) - t14) - t11) - t23) *
    2.0;
  t14 = t15 * t82 * t19;
  t11 = t32 * t83 * t29;
  t23 = t32 * t57 * t19;
  t24 = t15 * t57 * t29;
  t27 = t82 * t83 * t13;
  t54 = ((((t14 + t11) + t23) + t24) + t27) - t97 * (t6 - t16 * t18 *
    (((((((((((((((t31 + t56) + t54) + t105) + t106) + t107) + t108) + t109) +
            t110) + t111) - var1[0] * var2[1] * t98 * 4.0) - var1[2] * t4 * t98)
        - var1[2] * t5 * t98) - var1[2] * var2[0] * t99 * t100 * 4.0) - var1[1] *
      t5 * t99 * t100) - var1[1] * t8 * t99 * t100) * 2.0);
  t7 = t15 * t15;
  t6 = t32 * t32;
  t9 = (((t82 * t7 + t83 * t6) + t84 * t97) + t15 * t32 * t57 * 2.0) - t82 * t83
    * t84;
  t105 = 1.0 / (t9 * t9);
  t56 = ((((-(t19 * t6) + t15 * t82 * t13) + t57 * t84 * t29) + t32 * t57 * t13)
         + t15 * t32 * t29) + t82 * t84 * t19;
  t31 = ((((-(t29 * t7) + t57 * t84 * t19) + t32 * t83 * t13) + t15 * t32 * t19)
         + t15 * t57 * t13) + t83 * t84 * t29;
  t24 = ((((t14 + t11) + t23) + t24) + t27) - t97 * t13;
  t27 = t105 * (t56 * t56);
  t29 = t105 * (t31 * t31);
  t14 = 1.0 / t9;
  t11 = (t27 + t29) + t105 * (t24 * t24);
  st.site = &emlrtRSI;
  b_sqrt(&st, &t11);
  t23 = 1.0 / t11;
  t13 = t98 + t31 * t14;
  t9 = t99 * t103 + t24 * t14;
  t6 = t99 * t100 + t56 * t14;
  t11 = (t13 * t13 + t9 * t9) + t6 * t6;
  st.site = &b_emlrtRSI;
  b_sqrt(&st, &t11);
  t7 = 1.0 / t11;
  t11 = (t27 + t29) + t54 * t54 * t105;
  st.site = &c_emlrtRSI;
  b_sqrt(&st, &t11);
  A0[0] = -var0[0] - t24 * t14 / t11;
  A0[1] = -var0[1] - t56 * t14 * t23;
  A0[2] = -var0[2] - t31 * t14 * t23;
  A0[3] = ((var1[1] * t28 - var1[2] * t30) - t9 * t7) + var1[0] * (t20 - t25);
  A0[4] = ((-t87 + t88) - t6 * t7) + var1[1] * (t20 - t53);
  A0[5] = ((t50 - t52) - t13 * t7) + var1[2] * (t20 - t46);
}

/* End of code generation (aE.c) */
