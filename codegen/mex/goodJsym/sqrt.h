/*
 * sqrt.h
 *
 * Code generation for function 'sqrt'
 *
 */

#ifndef __SQRT_H__
#define __SQRT_H__

/* Include files */
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "mwmathutil.h"
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "blas.h"
#include "rtwtypes.h"
#include "goodJsym_types.h"

/* Function Declarations */
extern real_T b_sqrt(const emlrtStack *sp, real_T x);

#ifdef __WATCOMC__

#pragma aux b_sqrt value [8087];

#endif

extern void c_sqrt(const emlrtStack *sp, real_T *x);

#endif

/* End of code generation (sqrt.h) */
