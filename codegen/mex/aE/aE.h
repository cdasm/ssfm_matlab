/*
 * aE.h
 *
 * Code generation for function 'aE'
 *
 */

#ifndef __AE_H__
#define __AE_H__

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
#include "aE_types.h"

/* Function Declarations */
extern void aE(const emlrtStack *sp, const real_T var0[3], const real_T var1[3],
               const real_T var2[5], real_T A0[6]);

#endif

/* End of code generation (aE.h) */
