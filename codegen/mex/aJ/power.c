/*
 * power.c
 *
 * Code generation for function 'power'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "aJ.h"
#include "power.h"
#include "eml_error.h"

/* Variable Definitions */
static emlrtRSInfo g_emlrtRSI = { 42, "power",
  "/usr/local/MATLAB/R2014a/toolbox/eml/lib/matlab/ops/power.m" };

static emlrtRSInfo h_emlrtRSI = { 56, "power",
  "/usr/local/MATLAB/R2014a/toolbox/eml/lib/matlab/ops/power.m" };

/* Function Definitions */
real_T power(const emlrtStack *sp, real_T a)
{
  emlrtStack st;
  emlrtStack b_st;
  st.prev = sp;
  st.tls = sp->tls;
  st.site = &g_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  if (a < 0.0) {
    b_st.site = &h_emlrtRSI;
    b_eml_error(&b_st);
  }

  return muDoubleScalarPower(a, 1.5);
}

/* End of code generation (power.c) */
