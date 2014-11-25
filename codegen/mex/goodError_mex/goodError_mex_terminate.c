/*
 * goodError_mex_terminate.c
 *
 * Code generation for function 'goodError_mex_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "goodError.h"
#include "goodJsym.h"
#include "goodError_mex_terminate.h"

/* Function Definitions */
void goodError_mex_atexit(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void goodError_mex_terminate(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (goodError_mex_terminate.c) */
