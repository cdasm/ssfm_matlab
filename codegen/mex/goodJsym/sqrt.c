/*
 * sqrt.c
 *
 * Code generation for function 'sqrt'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "goodJsym.h"
#include "sqrt.h"
#include "eml_error.h"

/* Variable Definitions */
static emlrtRSInfo q_emlrtRSI = { 14, "sqrt",
  "/usr/local/MATLAB/R2014a/toolbox/eml/lib/matlab/elfun/sqrt.m" };

/* Function Definitions */
real_T b_sqrt(const emlrtStack *sp, real_T x)
{
  real_T b_x;
  b_x = x;
  c_sqrt(sp, &b_x);
  return b_x;
}

void c_sqrt(const emlrtStack *sp, real_T *x)
{
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  if (*x < 0.0) {
    st.site = &q_emlrtRSI;
    eml_error(&st);
  }

  *x = muDoubleScalarSqrt(*x);
}

/* End of code generation (sqrt.c) */
