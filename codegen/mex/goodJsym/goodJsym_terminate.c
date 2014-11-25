/*
 * goodJsym_terminate.c
 *
 * Code generation for function 'goodJsym_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "goodJsym.h"
#include "goodJsym_terminate.h"

/* Function Definitions */
void goodJsym_atexit(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void goodJsym_terminate(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (goodJsym_terminate.c) */
