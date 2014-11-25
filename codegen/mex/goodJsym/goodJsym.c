/*
 * goodJsym.c
 *
 * Code generation for function 'goodJsym'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "goodJsym.h"
#include "sqrt.h"
#include "power.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 331, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo b_emlrtRSI = { 403, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo c_emlrtRSI = { 715, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo d_emlrtRSI = { 787, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo e_emlrtRSI = { 1223, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo f_emlrtRSI = { 1246, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo g_emlrtRSI = { 1257, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo h_emlrtRSI = { 1818, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo i_emlrtRSI = { 1841, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo j_emlrtRSI = { 1852, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo k_emlrtRSI = { 1981, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo l_emlrtRSI = { 2016, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo m_emlrtRSI = { 2017, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo n_emlrtRSI = { 2018, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo o_emlrtRSI = { 2019, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

static emlrtRSInfo p_emlrtRSI = { 2020, "goodJsym",
  "/home/pitybea/ssfm_matlab/goodJsym.m" };

/* Function Definitions */
void goodJsym(const emlrtStack *sp, const real_T var1[6], const real_T var2[5],
              real_T zz, real_T A0[40])
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
  real_T t23;
  real_T t24;
  real_T t27;
  real_T t29;
  real_T t31;
  real_T t54;
  real_T t16;
  real_T t17;
  real_T t18;
  real_T t19;
  real_T t48;
  real_T t50;
  real_T t52;
  real_T t34;
  real_T t45;
  real_T t59;
  real_T t61;
  real_T t82;
  real_T t83;
  real_T t84;
  real_T t98;
  real_T t99;
  real_T t100;
  real_T t101;
  real_T t102;
  real_T t103;
  real_T t104;
  real_T t105;
  real_T t106;
  real_T t107;
  real_T t108;
  real_T t109;
  real_T t110;
  real_T t111;
  real_T t121;
  real_T t122;
  real_T t125;
  real_T t126;
  real_T t117;
  real_T t128;
  real_T t130;
  real_T t145;
  real_T t194;
  real_T t228;
  real_T t241;
  real_T t242;
  real_T t244;
  real_T t245;
  real_T t247;
  real_T t252;
  real_T t254;
  real_T t256;
  real_T t10;
  real_T t12;
  real_T t26;
  real_T t28;
  real_T t30;
  real_T t85;
  real_T t86;
  real_T t87;
  real_T t88;
  real_T t195;
  real_T t196;
  real_T t15;
  real_T t35;
  real_T t62;
  real_T t90;
  real_T t163;
  real_T t32;
  real_T t43;
  real_T t72;
  real_T t92;
  real_T t93;
  real_T t94;
  real_T t95;
  real_T t166;
  real_T t70;
  real_T t80;
  real_T t97;
  real_T t131;
  real_T t143;
  real_T t243;
  real_T t133;
  real_T t148;
  real_T t140;
  real_T t141;
  real_T t253;
  real_T t147;
  real_T t255;
  real_T t149;
  real_T t150;
  real_T t157;
  real_T t178;
  real_T t188;
  real_T t197;
  real_T t190;
  real_T t192;
  real_T t198;
  real_T t200;
  real_T t201;
  real_T t203;
  real_T t212;
  real_T t213;
  real_T t219;
  real_T t222;
  real_T t265;
  real_T t226;
  real_T t230;
  real_T t231;
  real_T t232;
  real_T t233;
  real_T t234;
  real_T t264;
  real_T t236;
  real_T t263;
  real_T t238;
  real_T t257;
  real_T t259;
  real_T t260;
  real_T t248;
  real_T t249;
  real_T t268;
  real_T t270;
  real_T t271;
  real_T t281;
  real_T t282;
  real_T t262;
  real_T t266;
  real_T t267;
  real_T t273;
  real_T t274;
  real_T t275;
  real_T t276;
  real_T t277;
  real_T t278;
  real_T t279;
  real_T t285;
  real_T t286;
  real_T t303;
  real_T t304;
  real_T t305;
  real_T t306;
  real_T t307;
  real_T t287;
  real_T t290;
  real_T t293;
  real_T t294;
  real_T t295;
  real_T t296;
  real_T t297;
  real_T t298;
  real_T t299;
  real_T t301;
  real_T t302;
  real_T t312;
  real_T t313;
  real_T B;
  real_T t314;
  real_T t315;
  real_T t317;
  real_T t325;
  real_T t328;
  real_T t330;
  real_T t333;
  real_T t335;
  real_T t336;
  real_T t337;
  real_T t346;
  real_T t352;
  real_T t361;
  real_T t354;
  real_T t356;
  real_T t357;
  real_T t359;
  real_T t360;
  real_T t362;
  real_T t370;
  real_T t371;
  real_T t390;
  real_T t372;
  real_T t373;
  real_T t374;
  real_T t378;
  real_T t393;
  real_T t379;
  real_T t380;
  real_T t382;
  real_T t383;
  real_T t760;
  real_T t761;
  real_T t762;
  real_T t828;
  real_T t829;
  real_T t830;
  real_T t384;
  real_T t385;
  real_T t387;
  real_T t389;
  real_T t394;
  real_T t396;
  real_T t400;
  real_T t401;
  real_T t402;
  real_T t403;
  real_T t404;
  real_T t405;
  real_T t406;
  real_T t407;
  real_T t408;
  real_T t410;
  real_T t411;
  real_T t412;
  real_T t409;
  real_T t413;
  real_T t414;
  real_T t617;
  real_T t618;
  real_T t619;
  real_T t620;
  real_T t621;
  real_T t622;
  real_T t623;
  real_T t624;
  real_T t415;
  real_T t417;
  real_T t418;
  real_T t419;
  real_T t420;
  real_T t421;
  real_T t422;
  real_T t423;
  real_T t425;
  real_T t427;
  real_T t430;
  real_T t432;
  real_T t435;
  real_T t453;
  real_T t436;
  real_T t437;
  real_T t440;
  real_T t446;
  real_T t472;
  real_T t441;
  real_T t444;
  real_T t445;
  real_T t448;
  real_T t468;
  real_T t457;
  real_T t459;
  real_T t460;
  real_T t462;
  real_T t463;
  real_T t464;
  real_T t474;
  real_T t465;
  real_T t466;
  real_T t467;
  real_T t471;
  real_T t476;
  real_T t477;
  real_T t478;
  real_T t480;
  real_T t482;
  real_T t483;
  real_T t484;
  real_T t485;
  real_T t487;
  real_T t488;
  real_T t489;
  real_T t486;
  real_T t491;
  real_T t495;
  real_T t496;
  real_T t494;
  real_T t497;
  real_T t498;
  real_T t499;
  real_T t501;
  real_T t502;
  real_T t500;
  real_T t503;
  real_T t504;
  real_T t505;
  real_T t506;
  real_T t545;
  real_T t571;
  real_T t559;
  real_T t566;
  real_T t569;
  real_T t573;
  real_T t574;
  real_T t698;
  real_T t575;
  real_T t576;
  real_T t577;
  real_T t578;
  real_T t579;
  real_T t580;
  real_T t581;
  real_T t582;
  real_T t583;
  real_T t584;
  real_T t585;
  real_T t586;
  real_T t587;
  real_T t588;
  real_T t589;
  real_T t711;
  real_T t712;
  real_T t713;
  real_T t714;
  real_T t715;
  real_T t591;
  real_T t594;
  real_T t598;
  real_T t599;
  real_T t604;
  real_T t606;
  real_T t607;
  real_T t605;
  real_T t608;
  real_T t609;
  real_T t610;
  real_T t611;
  real_T t612;
  real_T t613;
  real_T t614;
  real_T t615;
  real_T t616;
  real_T t635;
  real_T t636;
  real_T t637;
  real_T t638;
  real_T t639;
  real_T t640;
  real_T t641;
  real_T t642;
  real_T t625;
  real_T t626;
  real_T t627;
  real_T t628;
  real_T t629;
  real_T t630;
  real_T t631;
  real_T t632;
  real_T t633;
  real_T t723;
  real_T t647;
  real_T t729;
  real_T t730;
  real_T t649;
  real_T t650;
  real_T t651;
  real_T t652;
  real_T t653;
  real_T t654;
  real_T t655;
  real_T t656;
  real_T t657;
  real_T t658;
  real_T t662;
  real_T t659;
  real_T t660;
  real_T t663;
  real_T t664;
  real_T t665;
  real_T t666;
  real_T t667;
  real_T t668;
  real_T t669;
  real_T t670;
  real_T t671;
  real_T t672;
  real_T t673;
  real_T t674;
  real_T t675;
  real_T t676;
  real_T t680;
  real_T t694;
  real_T t695;
  real_T t696;
  real_T t697;
  real_T t699;
  real_T t752;
  real_T t753;
  real_T t700;
  real_T t701;
  real_T t702;
  real_T t710;
  real_T t719;
  real_T t731;
  real_T t732;
  real_T t733;
  real_T t735;
  real_T t737;
  real_T t743;
  real_T t746;
  real_T t756;
  real_T t747;
  real_T t749;
  real_T t750;
  real_T t759;
  real_T t765;
  real_T t768;
  real_T t786;
  real_T t789;
  real_T t794;
  real_T t795;
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;

  /* p1 p2 p3 q1 q2 q3 t1 t2 r1 r2 r3 */
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
  t6 = t11 * (((t6 + t7) + t9) - 1.0);
  t7 = var2[1] * t11;
  t9 = var2[0] * var2[2] * t11 * 0.5;
  t23 = var2[0] * t11;
  t24 = var2[1] * var2[2] * t11 * 0.5;
  t27 = var1[3] * (t6 - t5 * t11 * 0.5) * 2.0;
  t29 = var1[4] * (t13 - t14) * 2.0;
  t31 = var1[5] * (t7 + t9) * 2.0;
  t54 = t6 - t4 * t11 * 0.5;
  t13 += t14;
  t14 = t23 - t24;
  t16 = ((((((var1[3] * 4.0 - var1[4] * var2[2] * 4.0) + var1[5] * var2[1] * 4.0)
            + var1[3] * t5) - var1[3] * t4) - var1[3] * t8) + var1[4] * var2[0] *
         var2[1] * 2.0) + var1[5] * var2[0] * var2[2] * 2.0;
  t17 = ((t4 + t5) + t8) + 4.0;
  t18 = 1.0 / (t17 * t17);
  t19 = ((((((var1[4] * 4.0 + var1[3] * var2[2] * 4.0) - var1[5] * var2[0] * 4.0)
            - var1[4] * t5) + var1[4] * t4) - var1[4] * t8) + var1[3] * var2[0] *
         var2[1] * 2.0) + var1[5] * var2[1] * var2[2] * 2.0;
  t48 = var1[5] * (t6 - t8 * t11 * 0.5);
  t50 = var1[3] * (t7 - t9);
  t52 = var1[4] * (t23 + t24);
  t34 = var1[0] * var1[0] * 2.0;
  t6 = t18 * (t16 * t16) * 2.0;
  t45 = ((((((var1[5] * 4.0 - var1[3] * var2[1] * 4.0) + var1[4] * var2[0] * 4.0)
            - var1[5] * t5) - var1[5] * t4) + var1[5] * t8) + var1[3] * var2[0] *
         var2[2] * 2.0) + var1[4] * var2[1] * var2[2] * 2.0;
  t59 = var1[1] * var1[1] * 2.0;
  t61 = var1[2] * var1[2] * 2.0;
  t7 = t18 * (t19 * t19) * 2.0;
  t9 = t18 * (t45 * t45) * 2.0;
  t82 = ((t34 + t6) + t59) + t7;
  t83 = ((t34 + t6) + t61) + t9;
  t84 = ((t59 + t61) + t7) + t9;
  t98 = muDoubleScalarSin(var2[3]);
  t99 = muDoubleScalarCos(var2[3]);
  t100 = muDoubleScalarSin(var2[4]);
  t101 = var1[5] * t98 * 4.0;
  t102 = var1[4] * var2[0] * t98 * 4.0;
  t103 = muDoubleScalarCos(var2[4]);
  t104 = var1[5] * t8 * t98;
  t105 = var1[4] * t99 * t100 * 4.0;
  t106 = var1[3] * var2[2] * t99 * t100 * 4.0;
  t107 = var1[4] * t4 * t99 * t100;
  t108 = var1[3] * var2[0] * var2[2] * t98 * 2.0;
  t109 = var1[4] * var2[1] * var2[2] * t98 * 2.0;
  t110 = var1[3] * var2[0] * var2[1] * t99 * t100 * 2.0;
  t111 = var1[5] * var2[1] * var2[2] * t99 * t100 * 2.0;
  t23 = var1[3] * var2[1] * t98 * 4.0;
  t24 = var1[5] * t5 * t98;
  t121 = var1[5] * t4 * t98;
  t122 = var1[5] * var2[0] * t99 * t100 * 4.0;
  t125 = var1[4] * t5 * t99 * t100;
  t126 = var1[4] * t8 * t99 * t100;
  t117 = ((((((((((((((((((((((t101 + t102) + t104) + t105) + t106) + t107) +
    t108) + t109) + t110) + t111) + var1[3] * t99 * t103 * 4.0) + var1[3] * t5 *
                     t99 * t103) + var1[5] * var2[1] * t99 * t103 * 4.0) + var1
                   [4] * var2[0] * var2[1] * t99 * t103 * 2.0) + var1[5] * var2
                  [0] * var2[2] * t99 * t103 * 2.0) - t23) - t24) - t121) - t122)
             - var1[3] * t4 * t99 * t103) - var1[3] * t8 * t99 * t103) - t125) -
          t126) - var1[4] * var2[2] * t99 * t103 * 4.0;
  t128 = t99 * t100 * 2.0 - t18 * t19 * t117 * 2.0;
  t130 = t98 * 2.0 - t18 * t45 * t117 * 2.0;
  t145 = t99 * t103 * (t7 + t9) - t16 * t18 * (((((((((((((((t101 + t102) + t104)
    + t105) + t106) + t107) + t108) + t109) + t110) + t111) - t23) - t24) - t121)
    - t122) - t125) - t126) * 2.0;
  t194 = var1[1] * var1[2] * 2.0 + ((t48 + t50) - t52) * ((var1[4] * t54 * 2.0 -
    var1[3] * t13 * 2.0) + var1[5] * t14 * 2.0);
  t228 = var1[0] * var1[1] * 2.0 + ((t27 + t29) - t31) * ((var1[4] * t54 - var1
    [3] * t13) + var1[5] * t14);
  t241 = var1[0] * var1[2] * 2.0 + ((t27 + t29) - t31) * ((t48 + t50) - t52);
  t242 = t194 * t194;
  t244 = ((((t82 * t83 * t145 - t145 * t242) + t82 * t128 * t228) + t83 * t130 *
           t241) + t128 * t194 * t241) + t130 * t194 * t228;
  t245 = t228 * t228;
  t247 = t241 * t241;
  t6 = (((-(t82 * t83 * t84) + t82 * t245) + t83 * t247) + t84 * t242) + t194 *
    t228 * t241 * 2.0;
  t252 = 1.0 / (t6 * t6);
  t254 = ((((t82 * t84 * t128 - t128 * t247) + t82 * t145 * t228) + t84 * t130 *
           t194) + t145 * t194 * t241) + t130 * t228 * t241;
  t256 = ((((t83 * t84 * t130 - t130 * t245) + t84 * t128 * t194) + t83 * t145 *
           t241) + t128 * t228 * t241) + t145 * t194 * t228;
  t126 = (t252 * (t244 * t244) + t252 * (t254 * t254)) + t252 * (t256 * t256);
  st.site = &emlrtRSI;
  b_sqrt(&st, t126);
  st.site = &b_emlrtRSI;
  power(&st, t126);
  t6 = t5 * 0.25;
  t7 = t4 * 0.25;
  t9 = t8 * 0.25;
  t10 = ((t6 + t7) + t9) + 1.0;
  t11 = 1.0 / t10;
  t12 = ((t6 + t7) + t9) - 1.0;
  t13 = var2[2] * t11;
  t14 = var2[0] * var2[1] * t11 * 0.5;
  t6 = t11 * t12;
  t7 = var2[1] * t11;
  t9 = var2[0] * var2[2] * t11 * 0.5;
  t23 = var2[0] * t11;
  t24 = var2[1] * var2[2] * t11 * 0.5;
  t26 = t6 - t5 * t11 * 0.5;
  t27 = var1[3] * t26 * 2.0;
  t28 = t13 - t14;
  t29 = var1[4] * t28 * 2.0;
  t30 = t7 + t9;
  t31 = var1[5] * t30 * 2.0;
  t54 = t6 - t4 * t11 * 0.5;
  t13 += t14;
  t14 = t23 - t24;
  t85 = var1[0] * var1[1] * 2.0;
  t86 = var1[4] * t54;
  t87 = var1[3] * t13;
  t88 = var1[5] * t14;
  t195 = (t27 + t29) - t31;
  t196 = (t86 - t87) + t88;
  t15 = t85 + t195 * t196;
  t35 = var1[3] * 4.0;
  t16 = ((((((t35 - var1[4] * var2[2] * 4.0) + var1[5] * var2[1] * 4.0) + var1[3]
            * t5) - var1[3] * t4) - var1[3] * t8) + var1[4] * var2[0] * var2[1] *
         2.0) + var1[5] * var2[0] * var2[2] * 2.0;
  t17 = ((t4 + t5) + t8) + 4.0;
  t18 = 1.0 / (t17 * t17);
  t62 = var1[4] * 4.0;
  t19 = ((((((t62 + var1[3] * var2[2] * 4.0) - var1[5] * var2[0] * 4.0) - var1[4]
            * t5) + var1[4] * t4) - var1[4] * t8) + var1[3] * var2[0] * var2[1] *
         2.0) + var1[5] * var2[1] * var2[2] * 2.0;
  t48 = var1[5] * (t6 - t8 * t11 * 0.5);
  t50 = var1[3] * (t7 - t9);
  t52 = var1[4] * (t23 + t24);
  t90 = var1[0] * var1[2] * 2.0;
  t163 = (t48 + t50) - t52;
  t32 = t90 + t163 * ((t27 + t29) - t31);
  t43 = t16 * t16;
  t6 = t18 * t43 * 2.0;
  t72 = var1[5] * 4.0;
  t45 = ((((((t72 - var1[3] * var2[1] * 4.0) + var1[4] * var2[0] * 4.0) - var1[5]
            * t5) - var1[5] * t4) + var1[5] * t8) + var1[3] * var2[0] * var2[2] *
         2.0) + var1[4] * var2[1] * var2[2] * 2.0;
  t92 = var1[1] * var1[2] * 2.0;
  t93 = var1[4] * t54 * 2.0;
  t94 = var1[3] * t13 * 2.0;
  t95 = var1[5] * t14 * 2.0;
  t166 = (t93 - t94) + t95;
  t13 = t92 + t166 * ((t48 + t50) - t52);
  t70 = t19 * t19;
  t7 = t18 * t70 * 2.0;
  t80 = t45 * t45;
  t9 = t18 * t80 * 2.0;
  t82 = ((t34 + t6) + t59) + t7;
  t83 = ((t34 + t6) + t61) + t9;
  t84 = ((t59 + t61) + t7) + t9;
  t97 = t13 * t13;
  t101 = var1[5] * t98 * 4.0;
  t102 = var1[4] * var2[0] * t98 * 4.0;
  t104 = var1[5] * t8 * t98;
  t105 = var1[4] * t99 * t100 * 4.0;
  t106 = var1[3] * var2[2] * t99 * t100 * 4.0;
  t107 = var1[4] * t4 * t99 * t100;
  t108 = var1[3] * var2[0] * var2[2] * t98 * 2.0;
  t109 = var1[4] * var2[1] * var2[2] * t98 * 2.0;
  t110 = var1[3] * var2[0] * var2[1] * t99 * t100 * 2.0;
  t111 = var1[5] * var2[1] * var2[2] * t99 * t100 * 2.0;
  t23 = var1[3] * var2[1] * t98 * 4.0;
  t24 = var1[5] * t5 * t98;
  t121 = var1[5] * t4 * t98;
  t122 = var1[5] * var2[0] * t99 * t100 * 4.0;
  t125 = var1[4] * t5 * t99 * t100;
  t126 = var1[4] * t8 * t99 * t100;
  t117 = ((((((((((((((((((((((t101 + t102) + t104) + t105) + t106) + t107) +
    t108) + t109) + t110) + t111) + var1[3] * t99 * t103 * 4.0) + var1[3] * t5 *
                     t99 * t103) + var1[5] * var2[1] * t99 * t103 * 4.0) + var1
                   [4] * var2[0] * var2[1] * t99 * t103 * 2.0) + var1[5] * var2
                  [0] * var2[2] * t99 * t103 * 2.0) - t23) - t24) - t121) - t122)
             - var1[3] * t4 * t99 * t103) - var1[3] * t8 * t99 * t103) - t125) -
          t126) - var1[4] * var2[2] * t99 * t103 * 4.0;
  t128 = t99 * t100 * 2.0 - t18 * t19 * t117 * 2.0;
  t130 = t98 * 2.0 - t18 * t45 * t117 * 2.0;
  t131 = t7 + t9;
  t6 = t99 * t103 * t131;
  t143 = ((((((((((((((t101 + t102) + t104) + t105) + t106) + t107) + t108) +
                 t109) + t110) + t111) - t23) - t24) - t121) - t122) - t125) -
    t126;
  t145 = t6 - t16 * t18 * t143 * 2.0;
  t243 = t82 * t83 * t145;
  t133 = ((((t243 - t97 * (t6 - t16 * t18 * (((((((((((((((t101 + t102) + t104)
    + t105) + t106) + t107) + t108) + t109) + t110) + t111) - var1[3] * var2[1] *
    t98 * 4.0) - var1[5] * t4 * t98) - var1[5] * t5 * t98) - var1[5] * var2[0] *
    t99 * t100 * 4.0) - var1[4] * t5 * t99 * t100) - var1[4] * t8 * t99 * t100) *
              2.0)) + t15 * t13 * t130) + t32 * t13 * t128) + t15 * t82 * t128)
    + t32 * t83 * t130;
  t7 = t15 * t15;
  t6 = t32 * t32;
  t148 = t82 * t83 * t84;
  t140 = (((t82 * t7 + t83 * t6) + t84 * t97) + t15 * t32 * t13 * 2.0) - t148;
  t141 = 1.0 / (t140 * t140);
  t253 = t82 * t84 * t128;
  t147 = ((((t253 - t128 * t6) + t15 * t32 * t130) + t32 * t13 * t145) + t15 *
          t82 * t145) + t13 * t84 * t130;
  t255 = t83 * t84 * t130;
  t149 = ((((t255 - t130 * t7) + t15 * t32 * t128) + t15 * t13 * t145) + t32 *
          t83 * t145) + t13 * t84 * t128;
  t150 = 1.0 / (t17 * t17 * t17);
  t105 = (t72 + var1[4] * var2[0] * 2.0) - var1[3] * var2[1] * 2.0;
  t122 = var1[4] * t98 * 4.0;
  t125 = var1[3] * var2[2] * t98 * 2.0;
  t126 = var1[3] * var2[1] * t99 * t100 * 2.0;
  t157 = (t62 + var1[3] * var2[2] * 2.0) - var1[5] * var2[0] * 2.0;
  t24 = var1[5] * var2[0] * t98 * 2.0;
  t54 = var1[5] * t99 * t100 * 4.0;
  t121 = var1[4] * var2[0] * t99 * t100 * 2.0;
  t9 = (((((((t122 + t125) + t126) + var1[3] * var2[0] * t99 * t103 * 2.0) +
           var1[4] * var2[1] * t99 * t103 * 2.0) + var1[5] * var2[2] * t99 *
          t103 * 2.0) - t24) - t54) - t121;
  t111 = 1.0 / (t10 * t10);
  t108 = var2[0] * t11 * 0.5;
  t59 = var2[0] * var2[1] * var2[2] * t111 * 0.25;
  t6 = t5 * t111 * 0.5;
  t102 = var2[0] * t4 * t111 * 0.25;
  t7 = var2[0] * t12 * t111 * 0.5;
  t13 = (t108 + t102) - t7;
  t61 = var2[0] * var2[2] * t111 * 0.5;
  t101 = var2[1] * t5 * t111 * 0.25;
  t62 = var2[1] * t11 * 0.5;
  t14 = (t61 + t101) - t62;
  t109 = var2[0] * t8 * t111 * 0.25;
  t178 = var1[4] * ((-t11 + t59) + t6);
  t34 = var2[2] * t11 * 0.5;
  t104 = var2[0] * var2[1] * t111 * 0.5;
  t107 = var2[2] * t5 * t111 * 0.25;
  t6 = (t11 + t59) - t6;
  t188 = var1[5] * ((t108 - t7) + t109);
  t197 = var1[3] * ((t34 + t104) - t107);
  t190 = (t178 + t188) - t197;
  t192 = t163 * ((var1[4] * t13 * 2.0 + var1[3] * t14 * 2.0) + var1[5] * t6 *
                 2.0) + t166 * t190;
  t194 = t92 + ((t48 + t50) - t52) * ((t93 - t94) + t95);
  t198 = (t61 - t101) + t62;
  t200 = (-t34 + t104) + t107;
  t201 = (t108 + t7) - var2[0] * t5 * t111 * 0.25;
  t203 = (var1[4] * t198 * 2.0 + var1[3] * t201 * 2.0) - var1[5] * t200 * 2.0;
  t7 = t18 * t19 * t105 * 4.0;
  t23 = var2[0] * t70 * t150 * 8.0;
  t17 = (var1[3] * var2[0] * 2.0 + var1[4] * var2[1] * 2.0) + var1[5] * var2[2] *
    2.0;
  t212 = var2[0] * t43 * t150 * 8.0;
  t213 = var2[0] * t80 * t150 * 8.0;
  t219 = (t18 * t117 * t105 * 2.0 + var2[0] * t19 * t117 * t150 * 8.0) - t18 *
    t19 * t9 * 2.0;
  t222 = (t18 * t117 * t157 * 2.0 + t18 * t45 * t9 * 2.0) - var2[0] * t45 * t117
    * t150 * 8.0;
  t265 = t190 * t195;
  t226 = t163 * t203 - t265;
  t228 = t85 + ((t27 + t29) - t31) * ((t86 - t87) + t88);
  t230 = t16 * t18 * t17 * 4.0;
  t92 = ((t7 + t23) + t212) - t230;
  t231 = var1[5] * t6;
  t232 = var1[4] * t13;
  t233 = var1[3] * t14;
  t234 = (t231 + t232) + t233;
  t264 = t195 * t234;
  t236 = t196 * t203 - t264;
  t263 = t18 * t45 * t157 * 4.0;
  t238 = ((t7 + t23) + t213) - t263;
  t241 = t90 + ((t27 + t29) - t31) * ((t48 + t50) - t52);
  t242 = t194 * t194;
  t257 = t145 * t242;
  t259 = t83 * t130 * t241;
  t260 = t128 * t194 * t241;
  t244 = ((((t243 - t257) + t82 * t128 * t228) + t259) + t260) + t130 * t194 *
    t228;
  t245 = t228 * t228;
  t247 = t241 * t241;
  t248 = t83 * t247;
  t249 = t84 * t242;
  t6 = (((-t148 + t82 * t245) + t248) + t249) + t194 * t228 * t241 * 2.0;
  t252 = 1.0 / (t6 * t6);
  t268 = t128 * t247;
  t270 = t84 * t130 * t194;
  t271 = t145 * t194 * t241;
  t254 = ((((t253 - t268) + t82 * t145 * t228) + t270) + t271) + t130 * t228 *
    t241;
  t281 = t84 * t128 * t194;
  t282 = t83 * t145 * t241;
  t256 = ((((t255 - t130 * t245) + t281) + t282) + t128 * t228 * t241) + t145 *
    t194 * t228;
  t262 = t244 * t244;
  t266 = ((t212 + t213) - t230) - t263;
  t267 = 1.0 / (t6 * t6 * t6);
  t273 = t254 * t254;
  t274 = t238 * t242;
  t275 = t92 * t245;
  t276 = t194 * t236 * t241 * 2.0;
  t277 = t83 * t226 * t241 * 2.0;
  t278 = t194 * t226 * t228 * 2.0;
  t279 = t82 * t228 * t236 * 2.0;
  t285 = t256 * t256;
  t286 = t247 * (((t212 + t213) - t230) - t263);
  t303 = t83 * t84 * t92;
  t304 = t82 * t83 * t238;
  t305 = t82 * t84 * t266;
  t306 = t84 * t192 * t194 * 2.0;
  t307 = t192 * t228 * t241 * 2.0;
  t287 = ((((((((((t274 + t275) + t276) + t277) + t278) + t279) + t286) - t303)
            - t304) - t305) - t306) - t307;
  t290 = ((t18 * t143 * t17 * 2.0 + t99 * t103 * t238) + t16 * t18 * (((((t122 +
    t125) + t126) - t24) - t54) - t121) * 2.0) - var2[0] * t16 * t143 * t150 *
    8.0;
  t293 = t130 * t194 * t236;
  t294 = t83 * t130 * t226;
  t295 = t83 * t145 * t92;
  t296 = t194 * t222 * t228;
  t297 = t128 * t194 * t226;
  t298 = t128 * t228 * t92;
  t299 = t82 * t128 * t236;
  t301 = t82 * t83 * t290;
  t302 = t145 * t192 * t194 * 2.0;
  t126 = (t252 * t262 + t252 * t273) + t252 * t285;
  t312 = t82 * t145 * t266;
  t313 = t130 * t241 * t266;
  B = t126;
  st.site = &c_emlrtRSI;
  c_sqrt(&st, &B);
  t314 = 1.0 / B;
  t315 = 1.0 / t6;
  t317 = (t35 + var1[5] * var2[1] * 2.0) - var1[4] * var2[2] * 2.0;
  t14 = var1[4] * var2[2] * t98 * 2.0;
  t23 = var1[3] * var2[0] * t99 * t100 * 2.0;
  t24 = var1[4] * var2[1] * t99 * t100 * 2.0;
  t54 = var1[5] * var2[2] * t99 * t100 * 2.0;
  t6 = t4 * t111 * 0.5;
  t72 = var2[1] * t8 * t111 * 0.25;
  t7 = var2[1] * t12 * t111 * 0.5;
  t325 = var1[5] * ((t62 + t72) - t7);
  t110 = var2[2] * t4 * t111 * 0.25;
  t328 = var1[4] * ((-t34 + t104) + t110);
  t330 = (-t11 + t59) + t6;
  t106 = var2[1] * var2[2] * t111 * 0.5;
  t333 = (t108 - t102) + t106;
  t335 = var1[3] * ((t11 + t59) - t6);
  t336 = (t325 + t328) + t335;
  t337 = (t101 + t62) - t7;
  t101 = (var1[5] * t330 * 2.0 + var1[3] * t337 * 2.0) - var1[4] * t333 * 2.0;
  t121 = (-t108 + t102) + t106;
  t9 = (t34 + t104) - t110;
  t13 = (t62 + t7) - var2[1] * t4 * t111 * 0.25;
  t346 = (var1[5] * t9 * 2.0 + var1[4] * t13 * 2.0) - var1[3] * t121 * 2.0;
  t6 = var1[3] * t98 * 4.0;
  t7 = var1[5] * var2[1] * t98 * 2.0;
  t122 = t18 * t45 * t317 * 4.0;
  t352 = var2[1] * t70 * t150 * 8.0;
  t125 = var2[1] * t80 * t150 * 8.0;
  t361 = t18 * t19 * t17 * 4.0;
  t354 = ((t122 + t352) + t125) - t361;
  t356 = ((t16 * t18 * (((((t14 + t23) + t24) + t54) - t6) - t7) * 2.0 + t18 *
           t143 * t105 * 2.0) + t99 * t103 * t354) - var2[1] * t16 * t143 * t150
    * 8.0;
  t357 = t166 * t336;
  t359 = t357 - t163 * t346;
  t360 = var2[1] * t43 * t150 * 8.0;
  t362 = t18 * t117 * t317 * 2.0;
  t6 = (((((((t14 + t23) + t24) + t54) - t6) - t7) + var1[5] * t99 * t103 * 4.0)
        + var1[4] * var2[0] * t99 * t103 * 2.0) - var1[3] * var2[1] * t99 * t103
    * 2.0;
  t370 = var1[5] * t9;
  t371 = var1[4] * t13;
  t390 = var1[3] * t121;
  t372 = (t370 + t371) - t390;
  t373 = t196 * t101;
  t374 = t373 - t195 * t372;
  t24 = t18 * t117 * t17 * 2.0;
  t378 = (t18 * t19 * t6 * 2.0 + t24) - var2[1] * t19 * t117 * t150 * 8.0;
  t393 = t16 * t18 * t105 * 4.0;
  t379 = ((t122 + t125) + t360) - t393;
  st.site = &d_emlrtRSI;
  B = power(&st, t126);
  t380 = 1.0 / B;
  t382 = t242 * t356;
  t383 = t195 * t336;
  t760 = var1[1] * t244 * t315 - var1[0] * t254 * t315;
  t761 = var1[2] * t244 * t315 - var1[0] * t256 * t315;
  t762 = var1[2] * t254 * t315 - var1[1] * t256 * t315;
  st.site = &e_emlrtRSI;
  b_sqrt(&st, (t760 * t760 + t761 * t761) + t762 * t762);
  t828 = t98 + t256 * t315;
  t829 = t99 * t103 + t244 * t315;
  t830 = t99 * t100 + t254 * t315;
  t9 = (t828 * t828 + t829 * t829) + t830 * t830;
  st.site = &f_emlrtRSI;
  b_sqrt(&st, t9);
  st.site = &g_emlrtRSI;
  power(&st, t9);
  t384 = t163 * t101;
  t385 = t383 + t384;
  t35 = (t362 + var2[1] * t45 * t117 * t150 * 8.0) - t18 * t45 * t6 * 2.0;
  t387 = t128 * t194 * t385;
  t389 = t128 * t241 * t359;
  t394 = t130 * t228 * t359;
  t396 = t194 * t228 * t35;
  t10 = ((t352 + t360) - t361) - t393;
  t400 = t194 * t228 * t385 * 2.0;
  t401 = t228 * t241 * t359 * 2.0;
  t402 = t82 * t228 * t374 * 2.0;
  t403 = t82 * t84 * t379;
  t404 = t194 * t241 * t374 * 2.0;
  t405 = t83 * t241 * t385 * 2.0;
  t406 = t84 * t194 * t359 * 2.0;
  t407 = t83 * t84 * t10;
  t408 = t82 * t83 * t354;
  t410 = t242 * t354;
  t411 = t247 * t379;
  t412 = t245 * t10;
  t409 = ((((((((((t400 + t401) + t402) + t403) + t404) + t405) + t406) + t407)
            + t408) - t410) - t411) - t412;
  t413 = t83 * t130 * t385;
  t414 = t83 * t241 * t35;
  t617 = t82 * t83 * t356;
  t618 = t130 * t241 * t379;
  t619 = t82 * t228 * t378;
  t620 = t194 * t241 * t378;
  t621 = t82 * t145 * t379;
  t622 = t145 * t194 * t359 * 2.0;
  t623 = t83 * t145 * t10;
  t624 = t128 * t228 * t10;
  t415 = (((((((((((((((t382 + t387) + t389) + t82 * t128 * t374) + t394) + t396)
                   + t130 * t194 * t374) + t413) + t414) - t617) - t618) - t619)
             - t620) - t621) - t622) - t623) - t624;
  t7 = var2[2] * t12 * t111 * 0.5;
  t417 = var1[3] * var2[0] * t98 * 2.0;
  t418 = var1[4] * var2[1] * t98 * 2.0;
  t419 = var1[5] * var2[2] * t98 * 2.0;
  t420 = var1[3] * t99 * t100 * 4.0;
  t421 = var1[5] * var2[1] * t99 * t100 * 2.0;
  t422 = var2[2] * t70 * t150 * 8.0;
  t13 = t8 * t111 * 0.5;
  t423 = (t11 + t59) - t13;
  t425 = (t34 + t107) - t7;
  t427 = (-t108 + t109) + t106;
  t14 = (var1[4] * t423 * 2.0 + var1[3] * t425 * 2.0) + var1[5] * t427 * 2.0;
  t430 = t163 * t14;
  t432 = var1[3] * ((t108 - t109) + t106);
  t435 = var1[5] * ((t34 + t7) - var2[2] * t8 * t111 * 0.25);
  t453 = var1[4] * ((t61 - t62) + t72);
  t436 = (t432 + t435) - t453;
  t437 = t430 - t195 * t436;
  t6 = var1[4] * var2[2] * t99 * t100 * 2.0;
  t830 = t16 * t18 * (((((t417 + t418) + t419) + t420) + t421) - t6) * 2.0;
  t440 = var2[2] * t80 * t150 * 8.0;
  t446 = t18 * t45 * t17 * 4.0;
  t472 = t18 * t19 * t317 * 4.0;
  t441 = ((t422 + t440) - t446) - t472;
  t829 = t99 * t103 * t441;
  t444 = t16 * t18 * t157 * 4.0;
  t445 = var2[2] * t43 * t150 * 8.0;
  t448 = var1[5] * var2[0] * t99 * t103 * 2.0;
  t468 = var1[4] * t99 * t103 * 4.0;
  t23 = (((((((t417 + t418) + t419) + t420) + t421) - t6) + t448) - t468) -
    var1[3] * var2[2] * t99 * t103 * 2.0;
  t9 = (t34 + t110) - t7;
  t7 = (-t11 + t59) + t13;
  t6 = (t61 + t62) - t72;
  t457 = (var1[4] * t9 * 2.0 + var1[3] * t7 * 2.0) - var1[5] * t6 * 2.0;
  t459 = t163 * t457;
  t460 = t166 * t436;
  t110 = ((t440 + t444) + t445) - t446;
  t462 = t196 * t14;
  t463 = var1[4] * t9;
  t464 = var1[3] * t7;
  t474 = var1[5] * t6;
  t465 = (t463 + t464) - t474;
  t466 = t195 * t465;
  t467 = t462 + t466;
  t471 = (t24 + t18 * t45 * t23 * 2.0) - var2[2] * t45 * t117 * t150 * 8.0;
  t107 = ((t422 + t444) + t445) - t472;
  t476 = t459 - t460;
  t477 = t194 * t241 * t467 * 2.0;
  t478 = t194 * t228 * t437 * 2.0;
  t480 = t83 * t84 * t107;
  t482 = t82 * t228 * t467 * 2.0;
  t483 = t83 * t241 * t437 * 2.0;
  t484 = t82 * t84 * t110;
  t485 = t82 * t83 * t441;
  t487 = t245 * t107;
  t488 = t247 * t110;
  t489 = t242 * t441;
  t486 = ((((((((((t477 + t478) + t84 * t194 * t476 * 2.0) + t480) + t228 * t241
                * t476 * 2.0) + t482) + t483) + t484) + t485) - t487) - t488) -
    t489;
  t491 = (t362 + t18 * t19 * t23 * 2.0) - var2[2] * t19 * t117 * t150 * 8.0;
  t495 = t18 * t143 * t157 * 2.0;
  t496 = var2[2] * t16 * t143 * t150 * 8.0;
  t494 = ((t830 + t829) - t495) - t496;
  t497 = t82 * t145 * t110;
  t498 = t194 * t241 * t491;
  t499 = t83 * t241 * t471;
  t501 = t436 * ((t93 - t94) + t95);
  t502 = t459 - t501;
  t500 = t145 * t194 * t502 * 2.0;
  t503 = t130 * t241 * t110;
  t504 = t194 * t228 * t471;
  t505 = t83 * t145 * t107;
  t506 = t82 * t83 * t494;
  t7 = var1[5] * t99 * 4.0;
  t9 = var1[4] * var2[0] * t99 * 4.0;
  t13 = var1[5] * t8 * t99;
  t14 = var1[5] * var2[0] * t98 * t100 * 4.0;
  t23 = var1[4] * t5 * t98 * t100;
  t24 = var1[4] * t8 * t98 * t100;
  t54 = var1[3] * var2[0] * var2[2] * t99 * 2.0;
  t121 = var1[4] * var2[1] * var2[2] * t99 * 2.0;
  t122 = var1[3] * var2[1] * t99 * 4.0;
  t125 = var1[5] * t5 * t99;
  t126 = var1[5] * t4 * t99;
  t101 = var1[4] * t98 * t100 * 4.0;
  t102 = var1[3] * var2[2] * t98 * t100 * 4.0;
  t104 = var1[4] * t4 * t98 * t100;
  t105 = var1[3] * var2[0] * var2[1] * t98 * t100 * 2.0;
  t106 = var1[5] * var2[1] * var2[2] * t98 * t100 * 2.0;
  t6 = ((((((((((((((((((((((-t7 - t9) - t13) - t14) - t23) - t24) - t54) - t121)
                      + t122) + t125) + t126) + var1[3] * t98 * t103 * 4.0) +
                  t101) + var1[5] * var2[1] * t98 * t103 * 4.0) + t102) + var1[3]
               * t5 * t98 * t103) + t104) + var1[4] * var2[0] * var2[1] * t98 *
             t103 * 2.0) + var1[5] * var2[0] * var2[2] * t98 * t103 * 2.0) +
           t105) + t106) - var1[4] * var2[2] * t98 * t103 * 4.0) - var1[3] * t4 *
        t98 * t103) - var1[3] * t8 * t98 * t103;
  t109 = t98 * t100 * 2.0 - t18 * t19 * t6 * 2.0;
  t108 = t99 * 2.0 + t18 * t45 * t6 * 2.0;
  t7 = t98 * t103 * t131 + t16 * t18 * (((((((((((((((t7 + t9) + t13) + t14) +
    t23) + t24) + t54) + t121) - t122) - t125) - t126) - t101) - t102) - t104) -
    t105) - t106) * 2.0;
  t545 = ((((t194 * t228 * t108 + t83 * t241 * t108) + t242 * t7) - t194 * t241 *
           t109) - t82 * t228 * t109) - t82 * t83 * t7;
  t12 = var1[4] * t4 * t99 * t103;
  t80 = var1[3] * var2[2] * t99 * t103 * 4.0;
  t43 = var1[3] * var2[0] * var2[1] * t99 * t103 * 2.0;
  t157 = var1[5] * var2[1] * var2[2] * t99 * t103 * 2.0;
  t6 = t99 * t103 * 2.0;
  t166 = var1[5] * var2[1] * t99 * t100 * 4.0;
  t11 = var1[4] * t5 * t99 * t103;
  t143 = var1[4] * t8 * t99 * t103;
  t17 = var1[3] * t5 * t99 * t100;
  t34 = var1[5] * var2[0] * t99 * t103 * 4.0;
  t59 = var1[4] * var2[0] * var2[1] * t99 * t100 * 2.0;
  t61 = var1[5] * var2[0] * var2[2] * t99 * t100 * 2.0;
  t62 = var1[4] * var2[2] * t99 * t100 * 4.0;
  t72 = var1[3] * t4 * t99 * t100;
  t111 = var1[3] * t8 * t99 * t100;
  t571 = ((((((((((((((t420 - t468) - t12) - t80) - t43) - t157) + t166) + t11)
                + t143) + t17) + t34) + t59) + t61) - t62) - t72) - t111;
  t559 = t6 + t18 * t19 * t571 * 2.0;
  t566 = t99 * t100 * t131 + t16 * t18 * (((((((t468 + t12) + t80) + t43) + t157)
    - t11) - t143) - t34) * 2.0;
  t569 = t18 * t45 * t83 * t241 * (((((((((((((((t420 - t468) - t12) - t80) -
    t43) - t157) + t166) + t11) + t143) + t17) + t34) + t59) + t61) - t62) - t72)
    - t111) * 2.0;
  t70 = t18 * t45 * t194 * t228 * (((((((((((((((t420 - t468) - t12) - t80) -
    t43) - t157) + t166) + t11) + t143) + t17) + t34) + t59) + t61) - t62) - t72)
    - t111) * 2.0;
  t573 = t6 + t18 * t19 * (((((((((((((((t420 - t468) - t12) - t80) - t43) -
    t157) + t166) + t11) + t143) + t17) + t34) + t59) + t61) - t62) - t72) -
    t111) * 2.0;
  t574 = t242 * t566;
  t698 = t82 * t83 * t566;
  t575 = ((((t82 * t228 * t559 + t194 * t241 * t559) + t569) + t70) + t574) -
    t698;
  t576 = t219 * t247;
  t577 = t84 * t194 * t222;
  t578 = t84 * t128 * t92;
  t579 = t82 * t228 * t290;
  t580 = t130 * t194 * t238;
  t581 = t130 * t236 * t241;
  t582 = t222 * t228 * t241;
  t583 = t194 * t241 * t290;
  t584 = t145 * t194 * t226;
  t585 = t130 * t226 * t228;
  t586 = t145 * t228 * t92;
  t587 = t82 * t128 * t238;
  t588 = t82 * t145 * t236;
  t589 = t83 * t222 * t241;
  t711 = t242 * t290;
  t712 = t82 * t219 * t228;
  t713 = t128 * t192 * t241;
  t714 = t130 * t192 * t228;
  t715 = t194 * t219 * t241;
  t591 = t244 * t252 * ((((((((((((((((t293 + t294) + t295) + t296) + t297) +
    t298) + t299) + t301) + t302) + t312) + t313) + t589) - t711) - t712) - t713)
    - t714) - t715) * 2.0;
  t8 = t128 * t194 * t238;
  t6 = t128 * t236 * t241;
  t594 = t83 * t241 * t290;
  t9 = t145 * t194 * t236;
  t598 = t194 * t228 * t290;
  t599 = t83 * t84 * t222;
  t93 = t83 * t130 * t238;
  t131 = t222 * t245;
  t238 = t84 * t194 * t219;
  t5 = t145 * t192 * t228;
  t16 = t219 * t228 * t241;
  t4 = t84 * t128 * t192;
  t604 = t252 * t256 * ((((((((((((((((t8 + t6) + t594) + t9) + t83 * t145 *
    t226) + t128 * t226 * t228) + t598) + t599) + t93) + t84 * t130 * t266) +
    t145 * t241 * t266) - t131) - t238) - t5) - t16) - t4) - t130 * t228 * t236 *
                        2.0) * 2.0;
  t606 = t203 * ((t48 + t50) - t52);
  t607 = t265 - t606;
  t605 = t128 * t241 * t607 * 2.0;
  t608 = t247 * t378;
  t609 = t84 * t130 * t359;
  t610 = t84 * t194 * t35;
  t611 = t145 * t194 * t385;
  t612 = t145 * t241 * t359;
  t613 = t82 * t145 * t374;
  t614 = t130 * t228 * t385;
  t615 = t228 * t241 * t35;
  t616 = t130 * t241 * t374;
  t635 = t84 * t128 * t10;
  t636 = t145 * t228 * t10;
  t637 = t128 * t241 * t385 * 2.0;
  t638 = t82 * t84 * t378;
  t639 = t82 * t128 * t354;
  t640 = t82 * t228 * t356;
  t641 = t130 * t194 * t354;
  t642 = t194 * t241 * t356;
  t625 = (((((((((((((((t608 + t609) + t610) + t611) + t612) + t613) + t614) +
                  t615) + t616) - t635) - t636) - t637) - t638) - t639) - t640)
          - t641) - t642;
  t626 = t245 * t35;
  t627 = t194 * t228 * t356;
  t628 = t145 * t241 * t379;
  t629 = t83 * t130 * t354;
  t630 = t84 * t194 * t378;
  t631 = t128 * t194 * t354;
  t632 = t83 * t241 * t356;
  t633 = t228 * t241 * t378;
  t354 = t84 * t130 * t379;
  t356 = t128 * t228 * t385;
  t723 = t145 * t228 * t359;
  t95 = t128 * t241 * t374;
  t378 = t83 * t84 * t35;
  t35 = t145 * t194 * t374;
  t379 = t84 * t128 * t359;
  t236 = t83 * t145 * t385;
  t647 = (((((((((((((((t626 + t627) + t628) + t629) + t630) + t631) + t632) +
                  t633) + t354) + t130 * t228 * t374 * 2.0) - t356) - t723) -
             t95) - t378) - t35) - t379) - t236;
  t729 = t244 * t252 * t415 * 2.0;
  t730 = t252 * t254 * t625 * 2.0;
  t649 = ((((t262 * t267 * t409 * 2.0 + t267 * t273 * t409 * 2.0) + t267 * t285 *
            t409 * 2.0) + t252 * t256 * t647 * 2.0) - t729) - t730;
  t650 = t145 * t228 * t107;
  t651 = t84 * t194 * t471;
  t652 = t82 * t84 * t491;
  t653 = t84 * t128 * t107;
  t654 = t228 * t241 * t471;
  t655 = t84 * t194 * t502 * 2.0;
  t656 = t228 * t241 * t502 * 2.0;
  t657 = ((((((((((t477 + t478) + t480) + t482) + t483) + t484) + t485) - t487)
            - t488) - t489) + t655) + t656;
  t658 = t194 * t241 * (((t830 + t829) - t495) - t496);
  t94 = t436 * ((t27 + t29) - t31);
  t662 = t430 - t94;
  t659 = t128 * t241 * t662 * 2.0;
  t660 = t82 * t128 * (((t422 + t440) - t446) - t472);
  t663 = t82 * t228 * (((t830 + t829) - t495) - t496);
  t664 = t130 * t194 * (((t422 + t440) - t446) - t472);
  t665 = t82 * t228 * t491;
  t666 = t128 * t228 * t107;
  t667 = t84 * t194 * t491;
  t668 = t83 * t84 * t471;
  t669 = t228 * t241 * t491;
  t670 = t84 * t130 * t110;
  t671 = t145 * t241 * t110;
  t672 = t83 * t130 * t441;
  t673 = t128 * t194 * t441;
  t674 = t83 * t241 * t494;
  t675 = t194 * t228 * t494;
  t676 = t130 * t228 * t467 * 2.0;
  t680 = ((((t247 * t109 + t228 * t241 * t108) + t84 * t194 * t108) - t82 * t228
           * t7) - t82 * t84 * t109) - t194 * t241 * t7;
  t694 = ((((t245 * t108 + t228 * t241 * t109) + t83 * t241 * t7) + t194 * t228 *
           t7) + t84 * t194 * t109) - t83 * t84 * t108;
  t695 = (t244 * t252 * t545 * 2.0 + t252 * t254 * t680 * 2.0) - t252 * t256 *
    t694 * 2.0;
  t696 = t194 * t241 * t566;
  t697 = t82 * t228 * t566;
  t699 = t247 * t573;
  t752 = t82 * t84 * t573;
  t753 = t18 * t45 * t84 * t194 * t571 * 2.0;
  t700 = ((((t696 + t697) + t699) - t752) - t753) - t18 * t45 * t228 * t241 *
    t571 * 2.0;
  t701 = t84 * t194 * t573;
  t702 = t228 * t241 * t573;
  t385 = t83 * t241 * t607 * 2.0;
  t374 = t194 * t228 * t607 * 2.0;
  t710 = ((((((((((-t274 - t275) - t276) - t279) - t286) + t303) + t304) + t305)
            + t306) + t307) + t385) + t374;
  t23 = t264 - t203 * ((t86 - t87) + t88);
  t24 = t130 * t228 * t23 * 2.0;
  t54 = t84 * t130 * (((t212 + t213) - t230) - t263);
  t7 = t145 * t241 * (((t212 + t213) - t230) - t263);
  t13 = t83 * t145 * t607;
  t14 = t128 * t228 * t607;
  t719 = (((((((((((((((t8 + t6) + t594) + t9) + t598) + t599) + t93) - t131) -
                 t238) - t5) - t16) - t4) + t24) + t54) + t7) - t13) - t14;
  t731 = t194 * t228 * t662 * 2.0;
  t732 = t83 * t241 * t662 * 2.0;
  t733 = ((((((((((t477 + t480) + t482) + t484) + t485) - t487) - t488) - t489)
            + t655) + t656) + t731) + t732;
  t9 = t247 * t491;
  t121 = t145 * t194 * t662;
  t122 = t130 * t241 * t467;
  t125 = t130 * t228 * t662;
  t126 = t84 * t130 * t502;
  t101 = t145 * t241 * t502;
  t102 = t82 * t145 * t467;
  t735 = t252 * t254 * ((((((((((((((((t650 + t651) + t652) + t653) + t654) +
    t658) + t659) + t660) + t663) + t664) - t9) - t121) - t122) - t125) - t126)
    - t101) - t102) * 2.0;
  t104 = t242 * t494;
  t105 = t83 * t130 * t662;
  t106 = t128 * t194 * t662;
  t107 = t130 * t194 * t467;
  t108 = t128 * t241 * t502;
  t109 = t130 * t228 * t502;
  t110 = t82 * t128 * t467;
  t737 = t244 * t252 * ((((((((((((((((t497 + t498) + t499) + t500) + t503) +
    t504) + t505) + t506) + t665) + t666) - t104) - t105) - t106) - t107) - t108)
    - t109) - t110) * 2.0;
  t743 = (((((((((((((((t667 + t668) + t669) + t670) + t671) + t194 * t228 *
                    (((t830 + t829) - t495) - t496)) + t130 * t228 * (t462 +
    t466) * 2.0) + t83 * t130 * (((t422 + t440) - t446) - t472)) + t128 * t194 *
                 (((t422 + t440) - t446) - t472)) + t83 * t241 * (((t830 + t829)
    - t495) - t496)) - t245 * t471) - t128 * t241 * t467) - t128 * t228 * t662)
            - t84 * t128 * t502) - t145 * t194 * t467) - t145 * t228 * t502) -
    t83 * t145 * t662;
  t746 = t18 * t45 * t83 * t84 * (((((((((((((((t420 - t468) - t12) - t80) - t43)
    - t157) + t166) + t11) + t143) + t17) + t34) + t59) + t61) - t62) - t72) -
    t111) * 2.0;
  t756 = t83 * t241 * t566;
  t747 = ((((t701 + t702) + t746) - t194 * t228 * t566) - t756) - t18 * t45 *
    t245 * t571 * 2.0;
  t749 = t194 * t241 * t573;
  t750 = ((((t569 + t70) + t574) - t698) + t82 * t228 * t573) + t749;
  t759 = (t244 * t252 * t750 * 2.0 + t252 * t256 * t747 * 2.0) - t252 * t254 *
    t700 * 2.0;
  t111 = t84 * t130 * t192;
  t72 = t145 * t192 * t241;
  t17 = t130 * t241 * t23;
  t34 = t82 * t84 * t219;
  t59 = t145 * t194 * t607;
  t61 = t130 * t228 * t607;
  t62 = t82 * t145 * t23;
  t765 = (((((((((((((((t576 + t577) + t578) + t579) + t580) + t582) + t583) +
                  t586) + t587) + t605) - t111) - t72) - t17) - t34) - t59) -
          t61) - t62;
  t10 = t194 * t241 * t23 * 2.0;
  t92 = t82 * t228 * t23 * 2.0;
  t768 = ((((((((((-t274 - t275) - t286) + t303) + t304) + t305) + t306) + t307)
            + t385) + t374) + t10) + t92;
  t786 = (((((((((((((((-t295 - t296) - t298) - t301) - t302) - t312) - t313) -
                  t589) + t711) + t712) + t713) + t714) + t715) + t130 * t194 *
            t23) + t83 * t130 * t607) + t128 * t194 * t607) + t82 * t128 * t23;
  t789 = (((((((((((((((-t8 - t594) - t598) - t599) - t93) + t131) + t238) + t5)
                 + t16) + t4) - t24) - t54) - t7) + t13) + t14) + t128 * t241 *
          t23) + t145 * t194 * t23;
  t6 = t372 * ((t27 + t29) - t31);
  t7 = t373 - t6;
  t31 = (((((((((((((((t626 + t627) + t628) + t629) + t630) + t631) + t632) +
                 t633) + t354) - t356) - t723) - t95) - t378) - t35) - t379) -
         t236) + t130 * t228 * t7 * 2.0;
  t794 = t82 * t228 * t7 * 2.0;
  t795 = t194 * t241 * t7 * 2.0;
  t27 = ((((((((((t400 + t401) + t403) + t405) + t406) + t407) + t408) - t410) -
           t411) - t412) + t794) + t795;
  B = (t760 * t760 + t761 * t761) + t762 * t762;
  st.site = &h_emlrtRSI;
  c_sqrt(&st, &B);
  t29 = 1.0 / B;
  t412 = (((((((((((((((t650 + t651) + t652) + t653) + t654) + t658) + t660) +
                  t663) + t664) - t9) - t121) - t122) - t125) - t126) - t101) -
          t102) + t128 * t241 * (t430 - t94) * 2.0;
  t264 = (((((((((((((((t497 + t498) + t499) + t503) + t504) + t505) + t665) +
                  t666) - t104) - t105) - t106) - t107) - t108) - t109) - t110)
          + t82 * t83 * (((t830 + t829) - t495) - t496)) + t145 * t194 * (t459 -
    t501) * 2.0;
  t459 = t99 * t103;
  t829 = t459 + t244 * t315;
  t263 = t99 * t100;
  t830 = t263 + t254 * t315;
  t9 = (t828 * t828 + t829 * t829) + t830 * t830;
  t203 = t315 * t786 - t244 * t252 * t768;
  t230 = t82 * t128 * t7;
  t212 = t130 * t194 * t7;
  B = t9;
  st.site = &i_emlrtRSI;
  c_sqrt(&st, &B);
  t213 = 1.0 / B;
  t468 = t315 * ((((((((((((((((t382 + t387) + t389) + t394) + t396) + t413) +
    t414) - t617) - t618) - t619) - t620) - t621) - t622) - t623) - t624) + t230)
                 + t212);
  t501 = t468 - t244 * t252 * t27;
  t496 = t82 * t145 * t7;
  t495 = t130 * t241 * t7;
  t628 = (((((((((((((((t626 + t627) + t628) + t629) + t630) + t631) + t632) +
                  t633) + t354) - t356) - t723) - t378) - t379) - t236) + t130 *
           t228 * (t373 - t6) * 2.0) - t128 * t241 * t7) - t145 * t194 * t7;
  st.site = &j_emlrtRSI;
  B = power(&st, t9);
  t462 = 1.0 / B;
  t23 = t315 * t264;
  t24 = t242 * (((t422 + t440) - t446) - t472);
  t6 = ((((((((((t477 + t480) + t482) + t484) + t485) - t487) - t488) + t655) +
          t656) + t731) + t732) - t24;
  t723 = t23 + t244 * t252 * t6;
  t633 = t98 * t103 - t315 * t545;
  t632 = t263 - t315 * t750;
  t631 = t315 * t789 - t252 * t256 * t768;
  t626 = t828 * t631 * 2.0;
  t627 = t829 * t203 * 2.0;
  t466 = t315 * ((((((((((((((((t576 + t577) + t578) + t579) + t580) + t582) +
    t583) + t586) + t587) - t111) - t72) - t17) - t34) - t59) - t61) - t62) +
                 t128 * t241 * (t265 - t606) * 2.0) + t252 * t254 *
    (((((((((((-t274 - t275) - t286) + t303) + t304) + t305) + t306) + t307) +
        t385) + t374) + t10) + t92);
  t7 = t315 * ((((((((((((((((t608 + t609) + t610) + t611) + t612) + t614) +
    t615) - t635) - t636) - t637) - t638) - t639) - t640) - t641) - t642) + t496)
               + t495);
  t356 = t7 - t252 * t254 * t27;
  t13 = t315 * t628;
  t374 = t245 * (((t352 + t360) - t361) - t393);
  t9 = ((((((((((t400 + t401) + t403) + t405) + t406) + t407) + t408) - t410) -
          t411) + t794) + t795) - t374;
  t359 = t13 + t252 * t256 * t9;
  t489 = (t829 * t501 * 2.0 + t830 * t356 * 2.0) - t828 * t359 * 2.0;
  t594 = t315 * t412;
  t598 = t594 + t252 * t254 * (((((((((((t477 + t480) + t482) + t484) + t485) -
    t487) - t488) + t655) + t656) + t731) + t732) - t24);
  t599 = t829 * t723 * 2.0;
  t5 = t315 * t743 + t252 * t256 * t6;
  t379 = t828 * t5 * 2.0;
  t385 = t98 * t100 - t315 * t680;
  t378 = t99 - t315 * t694;
  t16 = (t829 * t633 * 2.0 + t830 * t385 * 2.0) - t828 * t378 * 2.0;
  t4 = t459 - t315 * t700;
  t8 = (t830 * t4 * 2.0 + t315 * t747 * t828 * 2.0) - t829 * t632 * 2.0;
  t354 = (t599 + t379) + t830 * t598 * 2.0;
  t236 = var1[3] * t26;
  t238 = var1[4] * t28;
  t43 = var1[5] * t30;
  t157 = (t236 + t238) - t43;
  t166 = t828 * t157;
  t11 = t829 * ((t48 + t50) - t52);
  t143 = t166 - t11;
  t6 = t163 * t830;
  t14 = t828 * ((t86 - t87) + t88);
  t95 = t6 - t14;
  t94 = t830 * t157;
  t93 = t829 * ((t86 - t87) + t88);
  t131 = t94 - t93;
  t80 = var1[4] * t198;
  t62 = var1[3] * t201;
  t10 = (t80 + t62) - var1[5] * t200;
  t92 = t166 - t11;
  t35 = t6 - t14;
  t70 = t94 - t93;
  t12 = t468 - t244 * t252 * t9;
  t61 = var1[3] * t337;
  t59 = var1[5] * t330;
  t17 = t7 - t252 * t254 * t9;
  t34 = (t61 + t59) - var1[4] * t333;
  t109 = t13 + t252 * t256 * (((((((((((t400 + t401) + t403) + t405) + t406) +
    t407) + t408) - t410) - t411) + t794) + t795) - t374);
  t110 = t166 - t11;
  t111 = t6 - t14;
  t72 = t94 - t93;
  t108 = var1[4] * t423;
  t107 = var1[3] * t425;
  t106 = var1[5] * t427;
  t102 = t23 + t244 * t252 * (((((((((((t477 + t480) + t482) + t484) + t485) -
    t487) - t488) + t655) + t656) + t731) + t732) - t24);
  t104 = (t108 + t107) + t106;
  t105 = t166 - t11;
  t126 = t6 - t14;
  t101 = t94 - t93;
  t125 = (-t86 + t87) - t88;
  t121 = t85 - t195 * t125;
  t122 = t121 * t121;
  t54 = 1.0 / ((((-t148 + t248) + t249) + t82 * t122) + t194 * t241 * t121 * 2.0);
  t9 = t263 + t54 * (((((t253 - t268) + t270) + t271) + t82 * t145 * t121) +
                     t130 * t241 * t121);
  t7 = t98 + t54 * (((((t255 + t281) + t282) + t128 * t241 * t121) + t145 * t194
                     * t121) - t130 * t122);
  t6 = t459 + t54 * (((((t243 - t257) + t259) + t260) + t82 * t128 * t121) +
                     t130 * t194 * t121);
  t23 = t157 * t7 - t6 * ((t48 + t50) - t52);
  t24 = t163 * t9;
  t13 = t125 * t7;
  t14 = t24 + t13;
  t9 *= t157;
  t6 *= t125;
  t7 = t9 + t6;
  B = (t133 * t133 * t141 + t141 * (t147 * t147)) + t141 * (t149 * t149);
  st.site = &k_emlrtRSI;
  c_sqrt(&st, &B);
  A0[0] = -zz * ((-(1.0 / B * ((((((((((((((((t293 + t294) + t295) + t296) +
    t297) + t298) + t299) + t301) + t302) + t312) + t313) - t97 * t290) - t194 *
    t219 * (t90 + t163 * t195)) - t15 * t82 * t219) - t15 * t130 * t192) + t32 *
    t83 * t222) - t32 * t128 * t192)) / t140 + t244 * t252 * t287 * t314) + t244
                 * t315 * t380 * (((((t591 + t604) + t252 * t254 *
                     ((((((((((((((((t576 + t577) + t578) + t579) + t580) + t581)
    + t582) + t583) + t584) + t585) + t586) + t587) + t588) - t82 * t84 * t219)
                        - t84 * t130 * t192) - t145 * t192 * t241) - t128 * t226
                      * t241 * 2.0) * 2.0) - t267 * t273 * t287 * 2.0) - t267 *
    t285 * t287 * 2.0) - t262 * t267 * (((((((((((t274 + t275) + t276) + t277) +
    t278) + t279) - t303) - t304) - t305) - t306) - t307) + t247 * t266) * 2.0) *
                 0.5);
  A0[8] = -zz * ((t314 * t315 * t415 - t244 * t252 * t314 * t409) + t244 * t315 *
                 t380 * t649 * 0.5);
  A0[16] = zz * ((t314 * t315 * ((((((((((((((((t497 + t498) + t499) + t500) +
    t503) + t504) + t505) + t506) - t242 * t494) + t128 * t241 * (t460 - t163 *
    t457)) + t82 * t228 * ((t362 + t18 * t19 * ((((((((t417 + t418) + t419) +
    t420) + t421) + t448) - var1[4] * t99 * t103 * 4.0) - var1[4] * var2[2] *
    t99 * t100 * 2.0) - var1[3] * var2[2] * t99 * t103 * 2.0) * 2.0) - var2[2] *
    t19 * t117 * t150 * 8.0)) - t83 * t130 * t437) - t82 * t128 * t467) - t128 *
    t194 * t437) - t130 * t194 * t467) - t130 * t228 * t476) + t128 * t228 *
    (((t422 + t444) + t445) - t18 * t19 * t317 * 4.0)) - t244 * t315 * t380 *
                  (((((t252 * t254 * ((((((((((((((((t650 + t651) + t652) + t653)
    + t654) - t247 * t491) + t82 * t128 * t441) - t84 * t130 * t476) - t82 *
    t145 * t467) + t130 * t194 * t441) - t145 * t194 * t437) - t130 * t228 *
    t437) + t82 * t228 * t494) + t128 * t241 * t437 * 2.0) - t130 * t241 * t467)
    - t145 * t241 * t476) + t194 * t241 * t494) * 2.0 + t262 * t267 * t486 * 2.0)
                      + t267 * t273 * t486 * 2.0) + t267 * t285 * t486 * 2.0) +
                    t244 * t252 * ((((((((((((((((t497 + t498) + t499) + t500) +
    t503) + t504) + t505) + t506) + t665) + t666) - t242 * t494) - t83 * t130 *
    t437) - t82 * t128 * t467) - t128 * t194 * t437) - t130 * t194 * t467) -
    t128 * t241 * t476) - t130 * t228 * t502) * 2.0) + t252 * t256 *
                   ((((((((((((((((t667 + t668) + t669) + t670) + t671) + t672)
    + t673) + t674) + t675) + t676) - t245 * t471) - t83 * t145 * t437) - t84 *
                        t128 * t502) - t128 * t228 * t437) - t145 * t194 * t467)
                     - t128 * t241 * t467) - t145 * t228 * t502) * 2.0) * 0.5) +
                 t244 * t252 * t314 * (((((((((((t477 + t478) + t480) + t482) +
    t483) + t484) + t485) - t487) - t488) + t655) + t656) - t242 * (((t422 +
    t440) - t446) - t472)));
  A0[24] = -zz * (t314 * t315 * t545 - t244 * t315 * t380 * t695 * 0.5);
  A0[32] = -zz * (t314 * t315 * t575 - t244 * t315 * t380 * ((t244 * t252 * t575
    * 2.0 - t252 * t254 * (((((t696 + t697) + t247 * t559) - t82 * t84 * t559) -
    t18 * t45 * t84 * t194 * t571 * 2.0) - t18 * t45 * t228 * t241 * t571 * 2.0)
    * 2.0) + t252 * t256 * (((((t701 + t702) - t83 * t241 * t566) - t194 * t228 *
    t566) - t18 * t45 * t245 * t571 * 2.0) + t18 * t45 * t83 * t84 * t571 * 2.0)
    * 2.0) * 0.5);
  A0[1] = zz * ((t314 * t315 * ((((((((((((((((t576 + t577) + t578) + t579) +
    t580) + t581) + t582) + t583) + t584) + t585) + t586) + t587) + t588) + t605)
    - t82 * t84 * t219) - t84 * t130 * t192) - t145 * t192 * t241) + t252 * t254
                 * t314 * t710) - t254 * t315 * t380 * (((((t591 + t604) - t262 *
    t267 * t287 * 2.0) - t267 * t273 * t287 * 2.0) - t267 * t285 * t287 * 2.0) +
    t252 * t254 * ((((((((((((((((t576 + t577) + t578) + t579) + t580) + t581) +
    t582) + t583) + t586) + t587) + t588) + t605) - t82 * t84 * t219) - t84 *
                      t130 * t192) - t145 * t192 * t241) - t145 * t194 * t607) -
                   t130 * t228 * t607) * 2.0) * 0.5);
  A0[9] = -zz * ((t314 * t315 * t625 - t252 * t254 * t314 * t409) + t254 * t315 *
                 t380 * t649 * 0.5);
  A0[17] = zz * ((t314 * t315 * ((((((((((((((((t650 + t651) + t652) + t653) +
    t654) + t658) + t659) + t660) + t663) + t664) - t247 * t491) - t82 * t145 *
    t467) - t84 * t130 * t502) - t145 * t194 * t437) - t130 * t228 * t437) -
    t130 * t241 * t467) - t145 * t241 * t502) - t254 * t315 * t380 * (((((t735 +
    t737) + t262 * t267 * t657 * 2.0) + t267 * t273 * t657 * 2.0) + t267 * t285 *
    t657 * 2.0) + t252 * t256 * ((((((((((((((((t667 + t668) + t669) + t670) +
    t671) + t672) + t673) + t674) + t675) + t676) - t245 * t471) - t84 * t128 *
    t502) - t145 * t194 * t467) - t128 * t241 * t467) - t145 * t228 * t502) -
    t83 * t145 * t662) - t128 * t228 * t662) * 2.0) * 0.5) + t252 * t254 * t314 *
                 (((((((((((t477 + t480) + t482) + t484) + t485) - t487) - t488)
                      + t655) + t656) + t731) + t732) - t242 * (((t422 + t440) -
    t446) - t472)));
  A0[25] = -zz * (t314 * t315 * t680 - t254 * t315 * t380 * t695 * 0.5);
  A0[33] = zz * (t314 * t315 * t700 + t254 * t315 * t380 * t759 * 0.5);
  A0[2] = zz * ((t314 * t315 * t719 + t252 * t256 * t314 * t768) - t256 * t315 *
                t380 * (((((t252 * t256 * t719 * 2.0 + t262 * t267 * t710 * 2.0)
    + t267 * t273 * t710 * 2.0) + t267 * t285 * t710 * 2.0) + t252 * t254 * t765
    * 2.0) + t244 * t252 * ((((((((((((((((t293 + t295) + t296) + t298) + t299)
    + t301) + t302) + t312) + t313) + t589) - t711) - t712) - t713) - t714) -
    t715) - t83 * t130 * t607) - t128 * t194 * t607) * 2.0) * 0.5);
  A0[10] = zz * ((t314 * t315 * t647 + t252 * t256 * t314 * t409) - t256 * t315 *
                 t380 * (((((-t729 - t730) + t262 * t267 * (((((((((((t400 +
    t401) + t402) + t403) + t404) + t405) + t406) + t407) + t408) - t410) - t411)
    - t245 * (((t352 + t360) - t361) - t393)) * 2.0) + t267 * t273 *
    (((((((((((t400 + t401) + t402) + t403) + t404) + t405) + t406) + t407) +
        t408) - t410) - t411) - t245 * (((t352 + t360) - t361) - t393)) * 2.0) +
    t267 * t285 * (((((((((((t400 + t401) + t402) + t403) + t404) + t405) + t406)
                       + t407) + t408) - t410) - t411) - t245 * (((t352 + t360)
    - t361) - t393)) * 2.0) + t252 * t256 * t31 * 2.0) * 0.5);
  A0[18] = zz * ((t314 * t315 * t743 + t252 * t256 * t314 * (((((((((((t477 +
    t480) + t482) + t484) + t485) - t487) - t488) + t655) + t656) + t731) + t732)
    - t242 * (((t422 + t440) - t446) - t472))) - t256 * t315 * t380 * (((((t735
    + t737) + t252 * t256 * t743 * 2.0) + t262 * t267 * t733 * 2.0) + t267 *
    t273 * t733 * 2.0) + t267 * t285 * t733 * 2.0) * 0.5);
  A0[26] = zz * (t314 * t315 * t694 + t256 * t315 * t380 * t695 * 0.5);
  A0[34] = -zz * (t314 * t315 * t747 - t256 * t315 * t380 * t759 * 0.5);
  A0[3] = t29 * ((t760 * (((var1[0] * t315 * t765 + var1[1] * t315 * t786) -
    var1[1] * t244 * t252 * t768) + var1[0] * t252 * t254 * t768) * 2.0 - t762 *
                  (((var1[2] * t315 * t765 + var1[1] * t315 * t789) + var1[2] *
                    t252 * t254 * t768) - var1[1] * t252 * t256 * t768) * 2.0) +
                 t761 * (((var1[2] * t315 * t786 - var1[0] * t315 * t789) -
    var1[2] * t244 * t252 * t768) + var1[0] * t252 * t256 * t768) * 2.0) * 0.5;
  A0[11] = t29 * ((t760 * (((var1[1] * t315 * t415 - var1[0] * t315 *
                      ((((((((((((((((t608 + t609) + t610) + t611) + t612) +
    t613) + t614) + t615) + t616) - t638) - t639) - t640) - t641) - t642) - t84 *
    t128 * (((t352 + t360) - t361) - t393)) - t145 * t228 * (((t352 + t360) -
    t361) - t393)) - t128 * t241 * (t383 + t384) * 2.0)) + var1[0] * t252 * t254
    * t409) - var1[1] * t244 * t252 * (((((((((((t400 + t401) + t402) + t403) +
    t404) + t405) + t406) + t407) + t408) - t410) - t411) - t245 * (((t352 +
    t360) - t361) - t393))) * 2.0 + t762 * (((var1[1] * t315 * t628 + var1[2] *
    t315 * ((((((((((((((((t608 + t609) + t610) + t611) + t612) + t614) + t615)
                     - t638) - t639) - t640) - t641) - t642) + t496) + t495) -
              t84 * t128 * (((t352 + t360) - t361) - t393)) - t145 * t228 *
             (((t352 + t360) - t361) - t393)) - t128 * t241 * (t383 + t384) *
            2.0)) - var1[2] * t252 * t254 * t27) + var1[1] * t252 * t256 *
                    (((((((((((t400 + t401) + t403) + t405) + t406) + t407) +
    t408) - t410) - t411) + t794) + t795) - t245 * (((t352 + t360) - t361) -
    t393))) * 2.0) + t761 * (((var1[2] * t315 * ((((((((((((((((t382 + t387) +
    t389) + t394) + t396) + t413) + t414) - t617) - t618) - t619) - t620) - t621)
    + t230) + t212) - t145 * t194 * (t357 - t346 * ((t48 + t50) - t52)) * 2.0) -
    t83 * t145 * (((t352 + t360) - t361) - t393)) - t128 * t228 * (((t352 + t360)
    - t361) - t393)) + var1[0] * t315 * t31) - var1[2] * t244 * t252 * t27) +
    var1[0] * t252 * t256 * (((((((((((t400 + t401) + t403) + t405) + t406) +
    t407) + t408) - t410) - t411) + t794) + t795) - t245 * (((t352 + t360) -
    t361) - t393))) * 2.0) * 0.5;
  A0[19] = t29 * ((t761 * (((var1[0] * t315 * t743 - var1[2] * t315 * t264) +
    var1[0] * t252 * t256 * t733) - var1[2] * t244 * t252 * (((((((((((t477 +
    t480) + t482) + t484) + t485) - t487) - t488) + t655) + t656) + t731) + t732)
    - t242 * (((t422 + t440) - t446) - t472))) * 2.0 + t762 * (((var1[1] * t315 *
    t743 - var1[2] * t315 * t412) + var1[1] * t252 * t256 * t733) - var1[2] *
    t252 * t254 * (((((((((((t477 + t480) + t482) + t484) + t485) - t487) - t488)
                       + t655) + t656) + t731) + t732) - t242 * (((t422 + t440)
    - t446) - t472))) * 2.0) + t760 * (((var1[0] * t315 * t412 - var1[1] * t315 *
    t264) - var1[1] * t244 * t252 * t733) + var1[0] * t252 * t254 * t733) * 2.0)
    * 0.5;
  A0[27] = t29 * ((t760 * (var1[1] * t315 * t545 - var1[0] * t315 * t680) * 2.0
                   + t761 * (var1[2] * t315 * t545 + var1[0] * t315 * t694) *
                   2.0) + t762 * (var1[2] * t315 * t680 + var1[1] * t315 * t694)
                  * 2.0) * 0.5;
  A0[35] = t29 * ((t760 * (var1[0] * t315 * t700 + var1[1] * t315 * t750) * -2.0
                   + t762 * (var1[2] * t315 * t700 + var1[1] * t315 * t747) *
                   2.0) + t761 * (var1[0] * t315 * t747 - var1[2] * t315 * t750)
                  * 2.0) * -0.5;
  A0[4] = -zz * ((((t80 + t62) - var1[5] * t200) + t203 * t213) - t829 * t462 *
                 ((t626 + t627) - t830 * (t315 * t765 + t252 * t254 * t768) *
                  2.0) * 0.5);
  A0[12] = zz * ((((t61 + t59) - var1[4] * t333) - t213 * t501) + t829 * t462 *
                 t489 * 0.5);
  A0[20] = zz * ((((t108 + t107) + t106) + t213 * t723) - t829 * t462 * ((t599 +
    t379) + t830 * (t594 + t252 * t254 * t733) * 2.0) * 0.5);
  A0[28] = zz * (t213 * t633 - t829 * t462 * t16 * 0.5);
  A0[36] = zz * (t213 * t632 + t829 * t462 * t8 * 0.5);
  A0[5] = zz * ((((t231 + t232) + t233) + t213 * t466) + t830 * t462 * ((t626 +
    t627) - t830 * t466 * 2.0) * 0.5);
  A0[13] = -zz * ((((t370 + t371) - t390) + t213 * t356) - t830 * t462 * t489 *
                  0.5);
  A0[21] = zz * ((((t463 + t464) - t474) + t213 * t598) - t830 * t462 * t354 *
                 0.5);
  A0[29] = zz * (t213 * t385 - t830 * t462 * t16 * 0.5);
  A0[37] = -zz * (t213 * t4 - t830 * t462 * t8 * 0.5);
  A0[6] = zz * ((((t178 + t188) - t197) - t213 * t631) + t828 * t462 * ((t626 +
    t627) - t830 * t466 * 2.0) * 0.5);
  A0[14] = zz * ((((t325 + t328) + t335) + t213 * t359) + t828 * t462 * ((t829 *
    t12 * 2.0 + t830 * t17 * 2.0) - t828 * t109 * 2.0) * 0.5);
  A0[22] = -zz * ((((t432 + t435) - t453) - t213 * t5) + t828 * t462 * t354 *
                  0.5);
  A0[30] = -zz * (t213 * t378 + t828 * t462 * t16 * 0.5);
  A0[38] = -zz * (t315 * t747 * t213 - t828 * t462 * t8 * 0.5);
  B = (t143 * t143 + t95 * t95) + t131 * t131;
  st.site = &l_emlrtRSI;
  c_sqrt(&st, &B);
  A0[7] = ((t95 * (((-t190 * t830 + t163 * t466) + t196 * t631) + t234 * t828) *
            2.0 + t143 * (((t163 * t203 + t190 * t829) + t828 * t10) - t631 *
             t157) * 2.0) + t131 * (((t196 * t203 + t234 * t829) + t830 * t10) +
            t466 * t157) * 2.0) / B * -0.5;
  B = (t92 * t92 + t35 * t35) + t70 * t70;
  st.site = &m_emlrtRSI;
  c_sqrt(&st, &B);
  A0[15] = ((t95 * (((t163 * t17 + t196 * t109) + t336 * t830) + t372 * t828) *
             2.0 + t131 * (((-t196 * t12 + t372 * t829) + t830 * t34) + t157 *
              t17) * 2.0) - (t166 - t11) * (((t336 * t829 - t828 * t34) + (t468
    - t244 * t252 * (((((((((((t400 + t401) + t403) + t405) + t406) + t407) +
    t408) - t410) - t411) + t794) + t795) - t374)) * ((t48 + t50) - t52)) + t109
             * ((t236 + t238) - t43)) * 2.0) / B * 0.5;
  B = (t110 * t110 + t111 * t111) + t72 * t72;
  st.site = &n_emlrtRSI;
  c_sqrt(&st, &B);
  A0[23] = ((t95 * (((t163 * t598 - t196 * t5) + t436 * t830) + t465 * t828) *
             -2.0 + t143 * (((t163 * t102 + t436 * t829) + t828 * t104) - t5 *
              t157) * 2.0) + t131 * (((t196 * t102 - t465 * t829) + t830 * t104)
             - t598 * t157) * 2.0) / B * 0.5;
  B = (t105 * t105 + t126 * t126) + t101 * t101;
  st.site = &o_emlrtRSI;
  c_sqrt(&st, &B);
  A0[31] = (((t196 * t633 - t385 * ((t236 + t238) - t43)) * (t94 - t93) * 2.0 -
             t95 * (t163 * t385 + t196 * t378) * 2.0) + (t166 - t11) * (t163 *
             t633 + t378 * t157) * 2.0) / B * 0.5;
  B = (t23 * t23 + t14 * t14) + t7 * t7;
  st.site = &p_emlrtRSI;
  c_sqrt(&st, &B);
  A0[39] = (((t9 + t6) * (t125 * (t263 - t54 * (((((t569 + t574) - t698) + t749)
    + t82 * t573 * t121) + t18 * t45 * t194 * t571 * t121 * 2.0)) - t157 * (t459
    - t54 * (((((t696 + t699) - t752) - t753) + t82 * t566 * t121) - t18 * t45 *
             t241 * t571 * t121 * 2.0))) * -2.0 + (t24 + t13) * (t163 * t4 +
              t125 * t54 * (((((t701 + t746) - t756) - t194 * t566 * t121) +
    t241 * t573 * t121) - t18 * t45 * t571 * t122 * 2.0)) * 2.0) + (t163 * t632
             + t315 * t747 * t157) * (t166 - t11) * 2.0) / B * 0.5;
}

/* End of code generation (goodJsym.c) */
