function A0=aJ(var0,var1,var2)


p1=var0(1);
p2=var0(2);
p3=var0(3);

q1=var1(1);
q2=var1(2);
q3=var1(3);

r1=var2(1);
r2=var2(2);
r3=var2(3);

t1=var2(4);
t2=var2(5);

t4 = r2*r2;
t5 = r1*r1;
t6 = t5*(1.0/4.0);
t7 = t4*(1.0/4.0);
t8 = r3*r3;
t9 = t8*(1.0/4.0);
t10 = t6+t7+t9+1.0;
t11 = 1.0/t10;
t12 = t6+t7+t9-1.0;
t13 = r3*t11;
t14 = r1*r2*t11*(1.0/2.0);
t20 = t11*t12;
t21 = r2*t11;
t22 = r1*r3*t11*(1.0/2.0);
t23 = r1*t11;
t24 = r2*r3*t11*(1.0/2.0);
t25 = t5*t11*(1.0/2.0);
t26 = t20-t25;
t27 = q1*t26*2.0;
t28 = t13-t14;
t29 = q2*t28*2.0;
t30 = t21+t22;
t31 = q3*t30*2.0;
t53 = t4*t11*(1.0/2.0);
t54 = t20-t53;
t55 = t13+t14;
t56 = t23-t24;
t85 = p1*p2*2.0;
t86 = q2*t54;
t87 = q1*t55;
t88 = q3*t56;
t195 = t27+t29-t31;
t196 = t86-t87+t88;
t89 = t195*t196;
t15 = t85+t89;
t35 = q1*4.0;
t36 = q2*r3*4.0;
t37 = q3*r2*4.0;
t38 = q1*t5;
t39 = q1*t4;
t40 = q1*t8;
t41 = q2*r1*r2*2.0;
t42 = q3*r1*r3*2.0;
t16 = t35-t36+t37+t38-t39-t40+t41+t42;
t17 = t4+t5+t8+4.0;
t18 = 1.0/(t17*t17);
t62 = q2*4.0;
t63 = q1*r3*4.0;
t64 = q3*r1*4.0;
t65 = q2*t5;
t66 = q2*t4;
t67 = q2*t8;
t68 = q1*r1*r2*2.0;
t69 = q3*r2*r3*2.0;
t19 = t62+t63-t64-t65+t66-t67+t68+t69;
t46 = t8*t11*(1.0/2.0);
t47 = t20-t46;
t48 = q3*t47;
t49 = t21-t22;
t50 = q1*t49;
t51 = t23+t24;
t52 = q2*t51;
t90 = p1*p3*2.0;
t163 = t48+t50-t52;
t91 = t163*(t27+t29-t31);
t32 = t90+t91;
t33 = p1*p1;
t34 = t33*2.0;
t43 = t16*t16;
t44 = t18*t43*2.0;
t72 = q3*4.0;
t73 = q1*r2*4.0;
t74 = q2*r1*4.0;
t75 = q3*t5;
t76 = q3*t4;
t77 = q3*t8;
t78 = q1*r1*r3*2.0;
t79 = q2*r2*r3*2.0;
t45 = t72-t73+t74-t75-t76+t77+t78+t79;
t92 = p2*p3*2.0;
t93 = q2*t54*2.0;
t94 = q1*t55*2.0;
t95 = q3*t56*2.0;
t166 = t93-t94+t95;
t96 = t166*(t48+t50-t52);
t57 = t92+t96;
t58 = p2*p2;
t59 = t58*2.0;
t60 = p3*p3;
t61 = t60*2.0;
t70 = t19*t19;
t71 = t18*t70*2.0;
t80 = t45*t45;
t81 = t18*t80*2.0;
t82 = t34+t44+t59+t71;
t83 = t34+t44+t61+t81;
t84 = t59+t61+t71+t81;
t97 = t57*t57;
t98 = sin(t1);
t99 = cos(t1);
t100 = sin(t2);
t101 = q3*t98*4.0;
t102 = q2*r1*t98*4.0;
t103 = cos(t2);
t104 = q3*t8*t98;
t105 = q2*t99*t100*4.0;
t106 = q1*r3*t99*t100*4.0;
t107 = q2*t4*t99*t100;
t108 = q1*r1*r3*t98*2.0;
t109 = q2*r2*r3*t98*2.0;
t110 = q1*r1*r2*t99*t100*2.0;
t111 = q3*r2*r3*t99*t100*2.0;
t112 = q1*t99*t103*4.0;
t113 = q1*t5*t99*t103;
t114 = q3*r2*t99*t103*4.0;
t115 = q2*r1*r2*t99*t103*2.0;
t116 = q3*r1*r3*t99*t103*2.0;
t119 = q1*r2*t98*4.0;
t120 = q3*t5*t98;
t121 = q3*t4*t98;
t122 = q3*r1*t99*t100*4.0;
t123 = q1*t4*t99*t103;
t124 = q1*t8*t99*t103;
t125 = q2*t5*t99*t100;
t126 = q2*t8*t99*t100;
t127 = q2*r3*t99*t103*4.0;
t117 = t101+t102+t104+t105+t106+t107+t108+t109+t110+t111+t112+t113+t114+t115+t116-t119-t120-t121-t122-t123-t124-t125-t126-t127;
t118 = t99*t100*2.0;
t142 = t18*t19*t117*2.0;
t128 = t118-t142;
t129 = t98*2.0;
t146 = t18*t45*t117*2.0;
t130 = t129-t146;
t131 = t71+t81;
t132 = t99*t103*t131;
t143 = t101+t102+t104+t105+t106+t107+t108+t109+t110+t111-t119-t120-t121-t122-t125-t126;
t144 = t16*t18*t143*2.0;
t145 = t132-t144;
t243 = t82*t83*t145;
t133 = t243-t97*(t132-t16*t18*(t101+t102+t104+t105+t106+t107+t108+t109+t110+t111-q1*r2*t98*4.0-q3*t4*t98-q3*t5*t98-q3*r1*t99*t100*4.0-q2*t5*t99*t100-q2*t8*t99*t100)*2.0)+t15*t57*t130+t32*t57*t128+t15*t82*t128+t32*t83*t130;
t134 = t15*t15;
t135 = t82*t134;
t136 = t32*t32;
t137 = t83*t136;
t138 = t84*t97;
t139 = t15*t32*t57*2.0;
t148 = t82*t83*t84;
t140 = t135+t137+t138+t139-t148;
t141 = 1.0/(t140*t140);
t253 = t82*t84*t128;
t147 = t253-t128*t136+t15*t32*t130+t32*t57*t145+t15*t82*t145+t57*t84*t130;
t255 = t83*t84*t130;
t149 = t255-t130*t134+t15*t32*t128+t15*t57*t145+t32*t83*t145+t57*t84*t128;
t150 = 1.0/(t17*t17*t17);
t151 = q2*r1*2.0;
t204 = q1*r2*2.0;
t152 = t72+t151-t204;
t153 = q2*t98*4.0;
t154 = q1*r3*t98*2.0;
t155 = q1*r2*t99*t100*2.0;
t156 = q1*r3*2.0;
t211 = q3*r1*2.0;
t157 = t62+t156-t211;
t158 = q1*r1*t99*t103*2.0;
t159 = q2*r2*t99*t103*2.0;
t160 = q3*r3*t99*t103*2.0;
t215 = q3*r1*t98*2.0;
t216 = q3*t99*t100*4.0;
t217 = q2*r1*t99*t100*2.0;
t161 = t153+t154+t155+t158+t159+t160-t215-t216-t217;
t162 = 1.0/(t10*t10);
t164 = r1*t11*(1.0/2.0);
t165 = r1*r2*r3*t162*(1.0/4.0);
t167 = t5*t162*(1.0/2.0);
t168 = r1*t4*t162*(1.0/4.0);
t175 = r1*t12*t162*(1.0/2.0);
t169 = t164+t168-t175;
t170 = q2*t169*2.0;
t171 = r1*r3*t162*(1.0/2.0);
t172 = r2*t5*t162*(1.0/4.0);
t184 = r2*t11*(1.0/2.0);
t173 = t171+t172-t184;
t174 = q1*t173*2.0;
t176 = r1*t8*t162*(1.0/4.0);
t177 = -t11+t165+t167;
t178 = q2*t177;
t179 = r3*t11*(1.0/2.0);
t180 = r1*r2*t162*(1.0/2.0);
t189 = r3*t5*t162*(1.0/4.0);
t181 = t179+t180-t189;
t182 = t11+t165-t167;
t183 = q3*t182*2.0;
t185 = t170+t174+t183;
t186 = t163*t185;
t187 = t164-t175+t176;
t188 = q3*t187;
t197 = q1*t181;
t190 = t178+t188-t197;
t191 = t166*t190;
t192 = t186+t191;
t193 = (t48+t50-t52)*(t93-t94+t95);
t194 = t92+t193;
t198 = t171-t172+t184;
t199 = q2*t198*2.0;
t200 = -t179+t180+t189;
t224 = r1*t5*t162*(1.0/4.0);
t201 = t164+t175-t224;
t202 = q1*t201*2.0;
t223 = q3*t200*2.0;
t203 = t199+t202-t223;
t205 = t18*t19*t152*4.0;
t206 = r1*t70*t150*8.0;
t207 = q1*r1*2.0;
t208 = q2*r2*2.0;
t209 = q3*r3*2.0;
t210 = t207+t208+t209;
t212 = r1*t43*t150*8.0;
t213 = r1*t80*t150*8.0;
t214 = t18*t117*t152*2.0;
t218 = r1*t19*t117*t150*8.0;
t291 = t18*t19*t161*2.0;
t219 = t214+t218-t291;
t220 = t18*t117*t157*2.0;
t221 = t18*t45*t161*2.0;
t292 = r1*t45*t117*t150*8.0;
t222 = t220+t221-t292;
t225 = t163*t203;
t265 = t190*t195;
t226 = t225-t265;
t227 = (t27+t29-t31)*(t86-t87+t88);
t228 = t85+t227;
t230 = t16*t18*t210*4.0;
t229 = t205+t206+t212-t230;
t231 = q3*t182;
t232 = q2*t169;
t233 = q1*t173;
t234 = t231+t232+t233;
t235 = t196*t203;
t264 = t195*t234;
t236 = t235-t264;
t237 = t18*t143*t210*2.0;
t263 = t18*t45*t157*4.0;
t238 = t205+t206+t213-t263;
t239 = t99*t103*t238;
t240 = (t27+t29-t31)*(t48+t50-t52);
t241 = t90+t240;
t242 = t194*t194;
t257 = t145*t242;
t258 = t82*t128*t228;
t259 = t83*t130*t241;
t260 = t128*t194*t241;
t261 = t130*t194*t228;
t244 = t243-t257+t258+t259+t260+t261;
t245 = t228*t228;
t246 = t82*t245;
t247 = t241*t241;
t248 = t83*t247;
t249 = t84*t242;
t250 = t194*t228*t241*2.0;
t251 = -t148+t246+t248+t249+t250;
t252 = 1.0/(t251*t251);
t268 = t128*t247;
t269 = t82*t145*t228;
t270 = t84*t130*t194;
t271 = t145*t194*t241;
t272 = t130*t228*t241;
t254 = t253-t268+t269+t270+t271+t272;
t280 = t130*t245;
t281 = t84*t128*t194;
t282 = t83*t145*t241;
t283 = t128*t228*t241;
t284 = t145*t194*t228;
t256 = t255-t280+t281+t282+t283+t284;
t262 = t244*t244;
t266 = t212+t213-t230-t263;
t267 = 1.0/(t251*t251*t251);
t273 = t254*t254;
t274 = t238*t242;
t275 = t229*t245;
t276 = t194*t236*t241*2.0;
t277 = t83*t226*t241*2.0;
t278 = t194*t226*t228*2.0;
t279 = t82*t228*t236*2.0;
t285 = t256*t256;
t286 = t247*(t212+t213-t230-t263);
t303 = t83*t84*t229;
t304 = t82*t83*t238;
t305 = t82*t84*t266;
t306 = t84*t192*t194*2.0;
t307 = t192*t228*t241*2.0;
t287 = t274+t275+t276+t277+t278+t279+t286-t303-t304-t305-t306-t307;
t288 = t153+t154+t155-t215-t216-t217;
t289 = t16*t18*t288*2.0;
t300 = r1*t16*t143*t150*8.0;
t290 = t237+t239+t289-t300;
t293 = t130*t194*t236;
t294 = t83*t130*t226;
t295 = t83*t145*t229;
t296 = t194*t222*t228;
t297 = t128*t194*t226;
t298 = t128*t228*t229;
t299 = t82*t128*t236;
t301 = t82*t83*t290;
t302 = t145*t192*t194*2.0;
t308 = t252*t262;
t309 = t252*t273;
t310 = t252*t285;
t311 = t308+t309+t310;
t312 = 1.0/sqrt(t311);
t313 = 1.0/t251;
t314 = q3*r2*2.0;
t348 = q2*r3*2.0;
t315 = t35+t314-t348;
t316 = q2*r3*t98*2.0;
t317 = q1*r1*t99*t100*2.0;
t318 = q2*r2*t99*t100*2.0;
t319 = q3*r3*t99*t100*2.0;
t320 = t4*t162*(1.0/2.0);
t321 = r2*t8*t162*(1.0/4.0);
t327 = r2*t12*t162*(1.0/2.0);
t322 = t184+t321-t327;
t323 = q3*t322;
t324 = r3*t4*t162*(1.0/4.0);
t325 = -t179+t180+t324;
t326 = q2*t325;
t328 = -t11+t165+t320;
t329 = q3*t328*2.0;
t330 = r2*r3*t162*(1.0/2.0);
t331 = t164-t168+t330;
t332 = t11+t165-t320;
t333 = q1*t332;
t334 = t323+t326+t333;
t335 = t172+t184-t327;
t336 = q1*t335*2.0;
t367 = q2*t331*2.0;
t337 = t329+t336-t367;
t338 = -t164+t168+t330;
t339 = t179+t180-t324;
t342 = r2*t4*t162*(1.0/4.0);
t340 = t184+t327-t342;
t341 = q3*t339*2.0;
t343 = q2*t340*2.0;
t356 = q1*t338*2.0;
t344 = t341+t343-t356;
t361 = q1*t98*4.0;
t362 = q3*r2*t98*2.0;
t345 = t316+t317+t318+t319-t361-t362;
t346 = t16*t18*t345*2.0;
t347 = t18*t143*t152*2.0;
t349 = t18*t45*t315*4.0;
t350 = r2*t70*t150*8.0;
t351 = r2*t80*t150*8.0;
t359 = t18*t19*t210*4.0;
t352 = t349+t350+t351-t359;
t353 = t99*t103*t352;
t386 = r2*t16*t143*t150*8.0;
t354 = t346+t347+t353-t386;
t355 = t166*t334;
t378 = t163*t344;
t357 = t355-t378;
t358 = r2*t43*t150*8.0;
t360 = t18*t117*t315*2.0;
t363 = q3*t99*t103*4.0;
t364 = q2*r1*t99*t103*2.0;
t365 = r2*t45*t117*t150*8.0;
t373 = q1*r2*t99*t103*2.0;
t366 = t316+t317+t318+t319-t361-t362+t363+t364-t373;
t368 = q3*t339;
t369 = q2*t340;
t393 = q1*t338;
t370 = t368+t369-t393;
t371 = t196*t337;
t394 = t195*t370;
t372 = t371-t394;
t374 = t18*t19*t366*2.0;
t375 = t18*t117*t210*2.0;
t398 = r2*t19*t117*t150*8.0;
t376 = t374+t375-t398;
t379 = t16*t18*t152*4.0;
t377 = t349+t351+t358-t379;
t380 = t350+t358-t359-t379;
t389 = t18*t45*t366*2.0;
t381 = t360+t365-t389;
t382 = t195*t334;
t383 = t163*t337;
t384 = t382+t383;
t385 = 1.0/power(t311,3.0/2.0);
t387 = t242*t354;
t388 = t83*t130*t384;
t390 = t83*t241*t381;
t391 = t128*t194*t384;
t392 = t128*t241*t357;
t395 = t82*t128*t372;
t396 = t130*t228*t357;
t397 = t194*t228*t381;
t399 = t130*t194*t372;
t613 = t82*t83*t354;
t614 = t130*t241*t377;
t615 = t82*t228*t376;
t616 = t194*t241*t376;
t617 = t82*t145*t377;
t618 = t145*t194*t357*2.0;
t619 = t83*t145*t380;
t620 = t128*t228*t380;
t400 = t387+t388+t390+t391+t392+t395+t396+t397+t399-t613-t614-t615-t616-t617-t618-t619-t620;
t401 = t194*t228*t384*2.0;
t402 = t228*t241*t357*2.0;
t403 = t82*t228*t372*2.0;
t404 = t82*t84*t377;
t405 = t194*t241*t372*2.0;
t406 = t83*t241*t384*2.0;
t407 = t84*t194*t357*2.0;
t408 = t83*t84*t380;
t409 = t82*t83*t352;
t411 = t242*t352;
t412 = t247*t377;
t413 = t245*t380;
t410 = t401+t402+t403+t404+t405+t406+t407+t408+t409-t411-t412-t413;
t414 = r3*t12*t162*(1.0/2.0);
t415 = q1*r1*t98*2.0;
t416 = q2*r2*t98*2.0;
t417 = q3*r3*t98*2.0;
t418 = q1*t99*t100*4.0;
t419 = q3*r2*t99*t100*2.0;
t420 = r3*t70*t150*8.0;
t441 = t8*t162*(1.0/2.0);
t421 = t11+t165-t441;
t422 = q2*t421*2.0;
t423 = t179+t189-t414;
t424 = q1*t423*2.0;
t425 = -t164+t176+t330;
t426 = q3*t425*2.0;
t427 = t422+t424+t426;
t428 = t163*t427;
t429 = t164-t176+t330;
t430 = q1*t429;
t431 = t171-t184+t321;
t452 = r3*t8*t162*(1.0/4.0);
t432 = t179+t414-t452;
t433 = q3*t432;
t451 = q2*t431;
t434 = t430+t433-t451;
t473 = t195*t434;
t435 = t428-t473;
t445 = q2*r3*t99*t100*2.0;
t436 = t415+t416+t417+t418+t419-t445;
t437 = t16*t18*t436*2.0;
t438 = r3*t80*t150*8.0;
t444 = t18*t45*t210*4.0;
t470 = t18*t19*t315*4.0;
t439 = t420+t438-t444-t470;
t440 = t99*t103*t439;
t442 = t16*t18*t157*4.0;
t443 = r3*t43*t150*8.0;
t446 = q3*r1*t99*t103*2.0;
t466 = q2*t99*t103*4.0;
t467 = q1*r3*t99*t103*2.0;
t447 = t415+t416+t417+t418+t419-t445+t446-t466-t467;
t448 = t179+t324-t414;
t449 = -t11+t165+t441;
t450 = t171+t184-t321;
t453 = q2*t448*2.0;
t454 = q1*t449*2.0;
t456 = q3*t450*2.0;
t455 = t453+t454-t456;
t457 = t163*t455;
t458 = t166*t434;
t459 = t438+t442+t443-t444;
t460 = t196*t427;
t461 = q2*t448;
t462 = q1*t449;
t472 = q3*t450;
t463 = t461+t462-t472;
t464 = t195*t463;
t465 = t460+t464;
t468 = t18*t45*t447*2.0;
t490 = r3*t45*t117*t150*8.0;
t469 = t375+t468-t490;
t471 = t420+t442+t443-t470;
t474 = t457-t458;
t475 = t194*t241*t465*2.0;
t476 = t194*t228*t435*2.0;
t477 = t84*t194*t474*2.0;
t478 = t83*t84*t471;
t479 = t228*t241*t474*2.0;
t480 = t82*t228*t465*2.0;
t481 = t83*t241*t435*2.0;
t482 = t82*t84*t459;
t483 = t82*t83*t439;
t485 = t245*t471;
t486 = t247*t459;
t487 = t242*t439;
t484 = t475+t476+t477+t478+t479+t480+t481+t482+t483-t485-t486-t487;
t488 = t18*t19*t447*2.0;
t491 = r3*t19*t117*t150*8.0;
t489 = t360+t488-t491;
t493 = t18*t143*t157*2.0;
t494 = r3*t16*t143*t150*8.0;
t492 = t437+t440-t493-t494;
t495 = t82*t145*t459;
t496 = t194*t241*t489;
t497 = t83*t241*t469;
t499 = t434*(t93-t94+t95);
t500 = t457-t499;
t498 = t145*t194*t500*2.0;
t501 = t130*t241*t459;
t502 = t194*t228*t469;
t503 = t83*t145*t471;
t504 = t82*t83*t492;
t505 = q3*t99*4.0;
t506 = q2*r1*t99*4.0;
t507 = q3*t8*t99;
t508 = q3*r1*t98*t100*4.0;
t509 = q2*t5*t98*t100;
t510 = q2*t8*t98*t100;
t511 = q1*r1*r3*t99*2.0;
t512 = q2*r2*r3*t99*2.0;
t513 = q1*r2*t99*4.0;
t514 = q3*t5*t99;
t515 = q3*t4*t99;
t516 = q1*t98*t103*4.0;
t517 = q2*t98*t100*4.0;
t518 = q3*r2*t98*t103*4.0;
t519 = q1*r3*t98*t100*4.0;
t520 = q1*t5*t98*t103;
t521 = q2*t4*t98*t100;
t522 = q2*r1*r2*t98*t103*2.0;
t523 = q3*r1*r3*t98*t103*2.0;
t524 = q1*r1*r2*t98*t100*2.0;
t525 = q3*r2*r3*t98*t100*2.0;
t528 = q2*r3*t98*t103*4.0;
t529 = q1*t4*t98*t103;
t530 = q1*t8*t98*t103;
t526 = -t505-t506-t507-t508-t509-t510-t511-t512+t513+t514+t515+t516+t517+t518+t519+t520+t521+t522+t523+t524+t525-t528-t529-t530;
t527 = t98*t100*2.0;
t540 = t18*t19*t526*2.0;
t531 = t527-t540;
t532 = t99*2.0;
t533 = t18*t45*t526*2.0;
t534 = t532+t533;
t535 = t98*t103*t131;
t536 = t505+t506+t507+t508+t509+t510+t511+t512-t513-t514-t515-t517-t519-t521-t524-t525;
t537 = t16*t18*t536*2.0;
t538 = t535+t537;
t539 = t242*t538;
t541 = t194*t228*t534;
t542 = t83*t241*t534;
t676 = t194*t241*t531;
t677 = t82*t228*t531;
t678 = t82*t83*t538;
t543 = t539+t541+t542-t676-t677-t678;
t544 = q2*t4*t99*t103;
t545 = q1*r3*t99*t103*4.0;
t546 = q1*r1*r2*t99*t103*2.0;
t547 = q3*r2*r3*t99*t103*2.0;
t548 = t99*t103*2.0;
t549 = q3*r2*t99*t100*4.0;
t550 = q2*t5*t99*t103;
t551 = q2*t8*t99*t103;
t552 = q1*t5*t99*t100;
t553 = q3*r1*t99*t103*4.0;
t554 = q2*r1*r2*t99*t100*2.0;
t555 = q3*r1*r3*t99*t100*2.0;
t559 = q2*r3*t99*t100*4.0;
t560 = q1*t4*t99*t100;
t561 = q1*t8*t99*t100;
t565 = t418-t466-t544-t545-t546-t547+t549+t550+t551+t552+t553+t554+t555-t559-t560-t561;
t556 = t18*t19*t565*2.0;
t557 = t548+t556;
t558 = t99*t100*t131;
t562 = t466+t544+t545+t546+t547-t550-t551-t553;
t563 = t16*t18*t562*2.0;
t564 = t558+t563;
t566 = t242*t564;
t567 = t18*t19*(t418-t466-t544-t545-t546-t547+t549+t550+t551+t552+t553+t554+t555-t559-t560-t561)*2.0;
t568 = t548+t567;
t569 = t219*t247;
t570 = t84*t194*t222;
t571 = t84*t128*t229;
t572 = t82*t228*t290;
t573 = t130*t194*t238;
t574 = t130*t236*t241;
t575 = t222*t228*t241;
t576 = t194*t241*t290;
t577 = t145*t194*t226;
t578 = t130*t226*t228;
t579 = t145*t228*t229;
t580 = t82*t128*t238;
t581 = t82*t145*t236;
t582 = t83*t222*t241;
t583 = t82*t145*t266;
t584 = t130*t241*t266;
t718 = t242*t290;
t719 = t82*t219*t228;
t720 = t128*t192*t241;
t721 = t130*t192*t228;
t722 = t194*t219*t241;
t585 = t293+t294+t295+t296+t297+t298+t299+t301+t302+t582+t583+t584-t718-t719-t720-t721-t722;
t586 = t244*t252*t585*2.0;
t587 = t128*t194*t238;
t588 = t128*t236*t241;
t589 = t83*t241*t290;
t590 = t145*t194*t236;
t591 = t83*t145*t226;
t592 = t128*t226*t228;
t593 = t194*t228*t290;
t594 = t83*t84*t222;
t595 = t83*t130*t238;
t596 = t84*t130*t266;
t597 = t145*t241*t266;
t710 = t222*t245;
t711 = t84*t194*t219;
t712 = t145*t192*t228;
t713 = t219*t228*t241;
t714 = t84*t128*t192;
t598 = t587+t588+t589+t590+t591+t592+t593+t594+t595+t596+t597-t710-t711-t712-t713-t714-t130*t228*t236*2.0;
t599 = t252*t256*t598*2.0;
t601 = t203*(t48+t50-t52);
t602 = t265-t601;
t600 = t128*t241*t602*2.0;
t603 = t247*t376;
t604 = t84*t130*t357;
t605 = t84*t194*t381;
t606 = t145*t194*t384;
t607 = t145*t241*t357;
t608 = t82*t145*t372;
t609 = t130*t228*t384;
t610 = t228*t241*t381;
t611 = t130*t241*t372;
t621 = t194*t241*t354;
t622 = t82*t84*t376;
t623 = t82*t128*t352;
t624 = t82*t228*t354;
t625 = t130*t194*t352;
t626 = t84*t128*t380;
t627 = t145*t228*t380;
t628 = t128*t241*t384*2.0;
t612 = t603+t604+t605+t606+t607+t608+t609+t610+t611-t621-t622-t623-t624-t625-t626-t627-t628;
t629 = t245*t381;
t630 = t194*t228*t354;
t631 = t145*t241*t377;
t632 = t83*t130*t352;
t633 = t84*t194*t376;
t634 = t128*t194*t352;
t635 = t83*t241*t354;
t636 = t228*t241*t376;
t637 = t84*t130*t377;
t638 = t262*t267*t410*2.0;
t639 = t267*t273*t410*2.0;
t640 = t267*t285*t410*2.0;
t641 = t130*t228*t372*2.0;
t729 = t128*t228*t384;
t730 = t145*t228*t357;
t731 = t128*t241*t372;
t732 = t83*t84*t381;
t733 = t145*t194*t372;
t734 = t84*t128*t357;
t735 = t83*t145*t384;
t642 = t629+t630+t631+t632+t633+t634+t635+t636+t637+t641-t729-t730-t731-t732-t733-t734-t735;
t643 = t252*t256*t642*2.0;
t736 = t244*t252*t400*2.0;
t737 = t252*t254*t612*2.0;
t644 = t638+t639+t640+t643-t736-t737;
t645 = t145*t228*t471;
t646 = t84*t194*t469;
t647 = t82*t84*t489;
t648 = t84*t128*t471;
t649 = t228*t241*t469;
t650 = t84*t194*t500*2.0;
t651 = t228*t241*t500*2.0;
t652 = t475+t476+t478+t480+t481+t482+t483-t485-t486-t487+t650+t651;
t653 = t194*t241*(t437+t440-t493-t494);
t656 = t434*(t27+t29-t31);
t657 = t428-t656;
t654 = t128*t241*t657*2.0;
t655 = t82*t128*(t420+t438-t444-t470);
t658 = t82*t228*(t437+t440-t493-t494);
t659 = t130*t194*(t420+t438-t444-t470);
t660 = t82*t228*t489;
t661 = t128*t228*t471;
t662 = t84*t194*t489;
t663 = t83*t84*t469;
t664 = t228*t241*t489;
t665 = t84*t130*t459;
t666 = t145*t241*t459;
t667 = t83*t130*t439;
t668 = t128*t194*t439;
t669 = t83*t241*t492;
t670 = t194*t228*t492;
t671 = t130*t228*t465*2.0;
t672 = t247*t531;
t673 = t228*t241*t534;
t674 = t84*t194*t534;
t680 = t82*t228*t538;
t681 = t82*t84*t531;
t682 = t194*t241*t538;
t675 = t672+t673+t674-t680-t681-t682;
t679 = t244*t252*t543*2.0;
t683 = t252*t254*t675*2.0;
t684 = t245*t534;
t685 = t228*t241*t531;
t686 = t83*t241*t538;
t687 = t194*t228*t538;
t688 = t84*t194*t531;
t755 = t83*t84*t534;
t689 = t684+t685+t686+t687+t688-t755;
t756 = t252*t256*t689*2.0;
t690 = t679+t683-t756;
t691 = t247*t568;
t692 = t194*t241*t564;
t693 = t82*t228*t564;
t701 = t82*t84*t568;
t702 = t18*t45*t84*t194*t565*2.0;
t703 = t18*t45*t228*t241*t565*2.0;
t694 = t691+t692+t693-t701-t702-t703;
t695 = t82*t228*t568;
t696 = t194*t241*t568;
t697 = t18*t45*t83*t241*(t418-t466-t544-t545-t546-t547+t549+t550+t551+t552+t553+t554+t555-t559-t560-t561)*2.0;
t698 = t18*t45*t194*t228*(t418-t466-t544-t545-t546-t547+t549+t550+t551+t552+t553+t554+t555-t559-t560-t561)*2.0;
t760 = t82*t83*t564;
t699 = t566+t695+t696+t697+t698-t760;
t700 = t244*t252*t699*2.0;
t704 = t84*t194*t568;
t705 = t228*t241*t568;
t706 = t18*t45*t83*t84*(t418-t466-t544-t545-t546-t547+t549+t550+t551+t552+t553+t554+t555-t559-t560-t561)*2.0;
t757 = t194*t228*t564;
t758 = t83*t241*t564;
t759 = t18*t45*t245*t565*2.0;
t707 = t704+t705+t706-t757-t758-t759;
t708 = t252*t256*t707*2.0;
t761 = t252*t254*t694*2.0;
t709 = t700+t708-t761;
t715 = t83*t241*t602*2.0;
t716 = t194*t228*t602*2.0;
t717 = -t274-t275-t276-t279-t286+t303+t304+t305+t306+t307+t715+t716;
t727 = t203*(t86-t87+t88);
t728 = t264-t727;
t723 = t130*t228*t728*2.0;
t724 = t84*t130*(t212+t213-t230-t263);
t725 = t145*t241*(t212+t213-t230-t263);
t770 = t83*t145*t602;
t771 = t128*t228*t602;
t726 = t587+t588+t589+t590+t593+t594+t595-t710-t711-t712-t713-t714+t723+t724+t725-t770-t771;
t740 = t370*(t27+t29-t31);
t741 = t371-t740;
t738 = t130*t228*t741*2.0;
t739 = t629+t630+t631+t632+t633+t634+t635+t636+t637-t729-t730-t731-t732-t733-t734-t735+t738;
t742 = t194*t228*t657*2.0;
t743 = t83*t241*t657*2.0;
t744 = t475+t478+t480+t482+t483-t485-t486-t487+t650+t651+t742+t743;
t803 = t247*t489;
t804 = t145*t194*t657;
t805 = t130*t241*t465;
t806 = t130*t228*t657;
t807 = t84*t130*t500;
t808 = t145*t241*t500;
t809 = t82*t145*t465;
t745 = t645+t646+t647+t648+t649+t653+t654+t655+t658+t659-t803-t804-t805-t806-t807-t808-t809;
t746 = t252*t254*t745*2.0;
t796 = t242*t492;
t797 = t83*t130*t657;
t798 = t128*t194*t657;
t799 = t130*t194*t465;
t800 = t128*t241*t500;
t801 = t130*t228*t500;
t802 = t82*t128*t465;
t747 = t495+t496+t497+t498+t501+t502+t503+t504+t660+t661-t796-t797-t798-t799-t800-t801-t802;
t748 = t244*t252*t747*2.0;
t749 = t194*t228*(t437+t440-t493-t494);
t750 = t130*t228*(t460+t464)*2.0;
t751 = t83*t130*(t420+t438-t444-t470);
t752 = t128*t194*(t420+t438-t444-t470);
t753 = t83*t241*(t437+t440-t493-t494);
t816 = t245*t469;
t817 = t128*t241*t465;
t818 = t128*t228*t657;
t819 = t84*t128*t500;
t820 = t145*t194*t465;
t821 = t145*t228*t500;
t822 = t83*t145*t657;
t754 = t662+t663+t664+t665+t666+t749+t750+t751+t752+t753-t816-t817-t818-t819-t820-t821-t822;
t762 = t194*t241*t728*2.0;
t763 = t82*t228*t728*2.0;
t772 = t256*t313;
t764 = t98+t772;
t768 = t99*t103;
t769 = t244*t313;
t765 = t768+t769;
t780 = t99*t100;
t781 = t254*t313;
t766 = t780+t781;
t767 = -t274-t275-t286+t303+t304+t305+t306+t307+t715+t716+t762+t763;
t773 = t130*t194*t728;
t774 = t83*t130*t602;
t775 = t128*t194*t602;
t776 = t82*t128*t728;
t777 = -t295-t296-t298-t301-t302-t582-t583-t584+t718+t719+t720+t721+t722+t773+t774+t775+t776;
t778 = t313*t777;
t839 = t244*t252*t767;
t779 = t778-t839;
t782 = t764*t764;
t783 = t765*t765;
t784 = t766*t766;
t785 = t782+t783+t784;
t786 = t82*t228*t741*2.0;
t787 = t194*t241*t741*2.0;
t788 = 1.0/sqrt(t785);
t789 = t82*t128*t741;
t790 = t130*t194*t741;
t791 = t387+t388+t390+t391+t392+t396+t397-t613-t614-t615-t616-t617-t618-t619-t620+t789+t790;
t792 = t313*t791;
t793 = t401+t402+t404+t406+t407+t408+t409-t411-t412-t413+t786+t787;
t853 = t244*t252*t793;
t794 = t792-t853;
t795 = 1.0/power(t785,3.0/2.0);
t810 = t82*t83*(t437+t440-t493-t494);
t811 = t145*t194*(t457-t499)*2.0;
t812 = t495+t496+t497+t501+t502+t503+t660+t661-t796-t797-t798-t799-t800-t801-t802+t810+t811;
t813 = t313*t812;
t823 = t242*(t420+t438-t444-t470);
t824 = t475+t478+t480+t482+t483-t485-t486+t650+t651+t742+t743-t823;
t814 = t244*t252*t824;
t815 = t813+t814;
t825 = t98*t103;
t875 = t313*t543;
t826 = t825-t875;
t881 = t313*t699;
t827 = t780-t881;
t828 = t128*t241*(t265-t601)*2.0;
t841 = t84*t130*t192;
t842 = t145*t192*t241;
t843 = t130*t241*t728;
t844 = t82*t84*t219;
t845 = t145*t194*t602;
t846 = t130*t228*t602;
t847 = t82*t145*t728;
t829 = t569+t570+t571+t572+t573+t575+t576+t579+t580+t828-t841-t842-t843-t844-t845-t846-t847;
t830 = t313*t829;
t831 = t252*t254*(-t274-t275-t286+t303+t304+t305+t306+t307+t715+t716+t762+t763);
t832 = t830+t831;
t833 = t128*t241*t728;
t834 = t145*t194*t728;
t835 = -t587-t589-t593-t594-t595+t710+t711+t712+t713+t714-t723-t724-t725+t770+t771+t833+t834;
t836 = t313*t835;
t886 = t252*t256*t767;
t837 = t836-t886;
t838 = t764*t837*2.0;
t840 = t765*t779*2.0;
t848 = t82*t145*t741;
t849 = t130*t241*t741;
t850 = t603+t604+t605+t606+t607+t609+t610-t621-t622-t623-t624-t625-t626-t627-t628+t848+t849;
t851 = t313*t850;
t855 = t252*t254*t793;
t852 = t851-t855;
t854 = t765*t794*2.0;
t856 = t766*t852*2.0;
t857 = t130*t228*(t371-t740)*2.0;
t887 = t128*t241*t741;
t888 = t145*t194*t741;
t858 = t629+t630+t631+t632+t633+t634+t635+t636+t637-t729-t730-t732-t734-t735+t857-t887-t888;
t859 = t313*t858;
t889 = t245*(t350+t358-t359-t379);
t890 = t401+t402+t404+t406+t407+t408+t409-t411-t412+t786+t787-t889;
t860 = t252*t256*t890;
t861 = t859+t860;
t862 = t128*t241*(t428-t656)*2.0;
t863 = t645+t646+t647+t648+t649+t653+t655+t658+t659-t803-t804-t805-t806-t807-t808-t809+t862;
t864 = t313*t863;
t865 = t252*t254*(t475+t478+t480+t482+t483-t485-t486+t650+t651+t742+t743-t823);
t866 = t864+t865;
t867 = t313*t754;
t868 = t765*t815*2.0;
t869 = t252*t256*t824;
t870 = t867+t869;
t871 = t764*t870*2.0;
t872 = t98*t100;
t877 = t313*t675;
t873 = t872-t877;
t894 = t313*t689;
t874 = t99-t894;
t876 = t765*t826*2.0;
t878 = t766*t873*2.0;
t895 = t764*t874*2.0;
t879 = t876+t878-t895;
t882 = t313*t694;
t880 = t768-t882;
t883 = t766*t880*2.0;
t884 = t313*t707*t764*2.0;
t896 = t765*t827*2.0;
t885 = t883+t884-t896;
t891 = t766*t866*2.0;
t892 = t252*t256*(t475+t478+t480+t482+t483-t485-t486+t650+t651+t742+t743-t823);
t893 = t867+t892;

A0=zeros(6,5);
A0(1,1) = (1.0/sqrt((t133*t133)*t141+t141*(t147*t147)+t141*(t149*t149))*(t293+t294+t295+t296+t297+t298+t299+t301+t302-t97*(t237+t239+t16*t18*(t153+t154+t155-q3*r1*t98*2.0-q3*t99*t100*4.0-q2*r1*t99*t100*2.0)*2.0-r1*t16*t143*t150*8.0)+t82*t145*(t212+t213-t18*t45*t157*4.0-t16*t18*t210*4.0)+t130*t241*(t212+t213-t230-t18*t45*t157*4.0)-t194*t219*(t90+t163*t195)-t15*t82*t219-t15*t130*t192+t32*t83*t222-t32*t128*(t163*(t170+t174+q3*(t11+t165-t5*t162*(1.0/2.0))*2.0)+t166*(t178-q1*t181+q3*(t164+t176-r1*t12*t162*(1.0/2.0))))))/t140-t244*t252*t287*t312-t244*t313*t385*(t586+t599+t252*t254*(t569+t570+t571+t572+t573+t574+t575+t576+t577+t578+t579+t580+t581-t82*t84*t219-t84*t130*t192-t145*t192*t241-t128*t226*t241*2.0)*2.0-t267*t273*t287*2.0-t267*t285*t287*2.0-t262*t267*(t274+t275+t276+t277+t278+t279-t303-t304-t305-t306-t307+t247*t266)*2.0)*(1.0/2.0);
A0(1,2) = -t312*t313*t400-t244*t313*t385*t644*(1.0/2.0)+t244*t252*t312*(t401+t402+t403+t404+t405+t406+t407+t408+t409-t411-t412-t245*(t350+t358-t359-t379));
A0(1,3) = t312*t313*(t495+t496+t497+t498+t501+t502+t503+t504-t242*t492+t128*t241*(t458-t163*t455)+t82*t228*(t360+t18*t19*(t415+t416+t417+t418+t419+t446-q2*t99*t103*4.0-q2*r3*t99*t100*2.0-q1*r3*t99*t103*2.0)*2.0-r3*t19*t117*t150*8.0)-t83*t130*t435-t82*t128*t465-t128*t194*t435-t130*t194*t465-t130*t228*t474+t128*t228*(t420+t442+t443-t18*t19*t315*4.0))-t244*t313*t385*(t252*t254*(t645+t646+t647+t648+t649-t247*t489+t82*t128*t439-t84*t130*t474-t82*t145*t465+t130*t194*t439-t145*t194*t435-t130*t228*t435+t82*t228*t492+t128*t241*t435*2.0-t130*t241*t465-t145*t241*t474+t194*t241*t492)*2.0+t262*t267*t484*2.0+t267*t273*t484*2.0+t267*t285*t484*2.0+t244*t252*(t495+t496+t497+t498+t501+t502+t503+t504+t660+t661-t242*t492-t83*t130*t435-t82*t128*t465-t128*t194*t435-t130*t194*t465-t128*t241*t474-t130*t228*t500)*2.0+t252*t256*(t662+t663+t664+t665+t666+t667+t668+t669+t670+t671-t245*t469-t83*t145*t435-t84*t128*t500-t128*t228*t435-t145*t194*t465-t128*t241*t465-t145*t228*t500)*2.0)*(1.0/2.0)+t244*t252*t312*(t475+t476+t478+t480+t481+t482+t483-t485-t486+t650+t651-t242*(t420+t438-t444-t470));
A0(1,4) = -t312*t313*t543+t244*t313*t385*t690*(1.0/2.0);
A0(1,5) = -t312*t313*(t566-t82*t83*t564+t82*t228*t557+t194*t241*t557+t18*t45*t83*t241*t565*2.0+t18*t45*t194*t228*t565*2.0)+t244*t313*t385*t709*(1.0/2.0);
A0(2,1) = t312*t313*(t569+t570+t571+t572+t573+t574+t575+t576+t577+t578+t579+t580+t581+t600-t82*t84*t219-t84*t130*t192-t145*t192*t241)+t252*t254*t312*t717-t254*t313*t385*(t586+t599-t262*t267*t287*2.0-t267*t273*t287*2.0-t267*t285*t287*2.0+t252*t254*(t569+t570+t571+t572+t573+t574+t575+t576+t579+t580+t581+t600-t82*t84*t219-t84*t130*t192-t145*t192*t241-t145*t194*t602-t130*t228*t602)*2.0)*(1.0/2.0);
A0(2,2) = -t312*t313*t612-t254*t313*t385*t644*(1.0/2.0)+t252*t254*t312*(t401+t402+t403+t404+t405+t406+t407+t408+t409-t411-t412-t245*(t350+t358-t359-t379));
A0(2,3) = t312*t313*(t645+t646+t647+t648+t649+t653+t654+t655+t658+t659-t247*t489-t82*t145*t465-t84*t130*t500-t145*t194*t435-t130*t228*t435-t130*t241*t465-t145*t241*t500)-t254*t313*t385*(t746+t748+t262*t267*t652*2.0+t267*t273*t652*2.0+t267*t285*t652*2.0+t252*t256*(t662+t663+t664+t665+t666+t667+t668+t669+t670+t671-t245*t469-t84*t128*t500-t145*t194*t465-t128*t241*t465-t145*t228*t500-t83*t145*t657-t128*t228*t657)*2.0)*(1.0/2.0)+t252*t254*t312*(t475+t478+t480+t482+t483-t485-t486+t650+t651+t742+t743-t242*(t420+t438-t444-t470));
A0(2,4) = -t312*t313*t675+t254*t313*t385*t690*(1.0/2.0);
A0(2,5) = t312*t313*t694+t254*t313*t385*t709*(1.0/2.0);
A0(3,1) = t312*t313*t726-t256*t313*t385*(t252*t254*(t569+t570+t571+t572+t573+t575+t576+t579+t580+t600-t82*t84*t219-t84*t130*t192-t145*t192*t241-t145*t194*t602-t82*t145*t728-t130*t228*t602-t130*t241*t728)*2.0+t252*t256*t726*2.0+t262*t267*t717*2.0+t267*t273*t717*2.0+t267*t285*t717*2.0+t244*t252*(t293+t295+t296+t298+t299+t301+t302+t582+t583+t584-t718-t719-t720-t721-t722-t83*t130*t602-t128*t194*t602)*2.0)*(1.0/2.0)+t252*t256*t312*t767;
A0(3,2) = t312*t313*t739+t252*t256*t312*(t401+t402+t404+t406+t407+t408+t409-t411-t412+t786+t787-t245*(t350+t358-t359-t379))-t256*t313*t385*(t638+t639+t640-t736-t737+t252*t256*t739*2.0)*(1.0/2.0);
A0(3,3) = t312*t313*t754+t252*t256*t312*(t475+t478+t480+t482+t483-t485-t486+t650+t651+t742+t743-t242*(t420+t438-t444-t470))-t256*t313*t385*(t746+t748+t252*t256*t754*2.0+t262*t267*t744*2.0+t267*t273*t744*2.0+t267*t285*t744*2.0)*(1.0/2.0);
A0(3,4) = t312*t313*t689+t256*t313*t385*t690*(1.0/2.0);
A0(3,5) = -t312*t313*t707+t256*t313*t385*t709*(1.0/2.0);
A0(4,1) = -q2*t198-q1*t201+q3*t200-t779*t788+t765*t795*(t838+t840-t766*t832*2.0)*(1.0/2.0);
A0(4,2) = q3*t328-q2*t331+q1*t335-t788*t794+t765*t795*(t854+t856-t764*t861*2.0)*(1.0/2.0);
A0(4,3) = q2*t421+q1*t423+q3*t425+t788*t815-t765*t795*(t868+t871+t766*(t313*t745+t252*t254*t744)*2.0)*(1.0/2.0);
A0(4,4) = t788*t826-t765*t795*t879*(1.0/2.0);
A0(4,5) = t788*t827+t765*t795*t885*(1.0/2.0);
A0(5,1) = t231+t232+t233+t788*t832+t766*t795*(t838+t840-t766*t832*2.0)*(1.0/2.0);
A0(5,2) = -t368-t369+t393-t788*t852+t766*t795*(t854+t856-t764*t861*2.0)*(1.0/2.0);
A0(5,3) = t461+t462-t472+t788*t866-t766*t795*(t868+t871+t891)*(1.0/2.0);
A0(5,4) = t788*t873-t766*t795*t879*(1.0/2.0);
A0(5,5) = -t788*t880+t766*t795*t885*(1.0/2.0);
A0(6,1) = t178+t188-t197-t788*t837+t764*t795*(t838+t840-t766*t832*2.0)*(1.0/2.0);
A0(6,2) = t323+t326+t333+t788*t861+t764*t795*(t765*(t792-t244*t252*t890)*2.0+t766*(t851-t252*t254*t890)*2.0-t764*(t859+t252*t256*(t401+t402+t404+t406+t407+t408+t409-t411-t412+t786+t787-t889))*2.0)*(1.0/2.0);
A0(6,3) = -t430-t433+t451+t788*t893-t764*t795*(t868+t891+t764*t893*2.0)*(1.0/2.0);
A0(6,4) = -t788*t874-t764*t795*t879*(1.0/2.0);
A0(6,5) = -t313*t707*t788+t764*t795*t885*(1.0/2.0);