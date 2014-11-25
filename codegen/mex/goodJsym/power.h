/*
 * power.h
 *
 * Code generation for function 'power'
 *
 */

#ifndef __POWER_H__
#define __POWER_H__

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
extern real_T power(const emlrtStack *sp, real_T a);

#ifdef __WATCOMC__

#pragma aux power value [8087];

#endif
#endif

/* End of code generation (power.h) */
