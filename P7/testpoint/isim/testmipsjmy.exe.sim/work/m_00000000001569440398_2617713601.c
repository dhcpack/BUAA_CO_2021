/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static int ng0[] = {0, 0};
static int ng1[] = {1, 0};
static int ng2[] = {2, 0};



static void Always_39_0(char *t0)
{
    char t6[8];
    char t20[8];
    char t35[8];
    char t43[8];
    char t75[8];
    char t89[8];
    char t105[8];
    char t113[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    int t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4768);
    *((int *)t2) = 1;
    t3 = (t0 + 4480);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t43, t6, 8);

LAB12:    memset(t75, 0, 8);
    t76 = (t43 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t76) != 0)
        goto LAB26;

LAB27:    t83 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t83);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB28;

LAB29:    memcpy(t113, t75, 8);

LAB30:    t145 = (t113 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB42;

LAB43:    t2 = ((char*)((ng0)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB44:    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t2) != 0)
        goto LAB47;

LAB48:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB49;

LAB50:    memcpy(t43, t6, 8);

LAB51:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t57) != 0)
        goto LAB65;

LAB66:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB67;

LAB68:    memcpy(t113, t75, 8);

LAB69:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB81;

LAB82:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB83:    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t2) != 0)
        goto LAB86;

LAB87:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB88;

LAB89:    memcpy(t43, t6, 8);

LAB90:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t57) != 0)
        goto LAB104;

LAB105:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB106;

LAB107:    memcpy(t113, t75, 8);

LAB108:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB120;

LAB121:    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t2) != 0)
        goto LAB125;

LAB126:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB127;

LAB128:    memcpy(t43, t6, 8);

LAB129:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB141;

LAB142:    if (*((unsigned int *)t57) != 0)
        goto LAB143;

LAB144:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB145;

LAB146:    memcpy(t113, t75, 8);

LAB147:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB159;

LAB160:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB161:
LAB122:    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB162;

LAB163:    if (*((unsigned int *)t2) != 0)
        goto LAB164;

LAB165:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB166;

LAB167:    memcpy(t43, t6, 8);

LAB168:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB180;

LAB181:    if (*((unsigned int *)t57) != 0)
        goto LAB182;

LAB183:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB184;

LAB185:    memcpy(t113, t75, 8);

LAB186:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB198;

LAB199:    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB201;

LAB202:    if (*((unsigned int *)t2) != 0)
        goto LAB203;

LAB204:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB205;

LAB206:    memcpy(t43, t6, 8);

LAB207:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB219;

LAB220:    if (*((unsigned int *)t57) != 0)
        goto LAB221;

LAB222:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB223;

LAB224:    memcpy(t113, t75, 8);

LAB225:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB237;

LAB238:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB239:
LAB200:    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB240;

LAB241:    if (*((unsigned int *)t2) != 0)
        goto LAB242;

LAB243:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB244;

LAB245:    memcpy(t43, t6, 8);

LAB246:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB258;

LAB259:    if (*((unsigned int *)t57) != 0)
        goto LAB260;

LAB261:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB262;

LAB263:    memcpy(t113, t75, 8);

LAB264:    t127 = (t113 + 4);
    t146 = *((unsigned int *)t127);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB276;

LAB277:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB278:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 1848U);
    t18 = *((char **)t17);
    t17 = (t0 + 1048U);
    t19 = *((char **)t17);
    memset(t20, 0, 8);
    t17 = (t18 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t18);
    t23 = *((unsigned int *)t19);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB16;

LAB13:    if (t31 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t20) = 1;

LAB16:    memset(t35, 0, 8);
    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t36) != 0)
        goto LAB19;

LAB20:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t6 + 4);
    t48 = (t35 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB12;

LAB15:    t34 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t35) = 1;
    goto LAB20;

LAB19:    t42 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB20;

LAB21:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t6 + 4);
    t58 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB23;

LAB24:    *((unsigned int *)t75) = 1;
    goto LAB27;

LAB26:    t82 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB27;

LAB28:    t87 = (t0 + 1048U);
    t88 = *((char **)t87);
    t87 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t90 = (t88 + 4);
    t91 = (t87 + 4);
    t92 = *((unsigned int *)t88);
    t93 = *((unsigned int *)t87);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t90);
    t96 = *((unsigned int *)t91);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t90);
    t100 = *((unsigned int *)t91);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB32;

LAB31:    if (t101 != 0)
        goto LAB33;

LAB34:    memset(t105, 0, 8);
    t106 = (t89 + 4);
    t107 = *((unsigned int *)t106);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t106) != 0)
        goto LAB37;

LAB38:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t117 = (t75 + 4);
    t118 = (t105 + 4);
    t119 = (t113 + 4);
    t120 = *((unsigned int *)t117);
    t121 = *((unsigned int *)t118);
    t122 = (t120 | t121);
    *((unsigned int *)t119) = t122;
    t123 = *((unsigned int *)t119);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB30;

LAB32:    *((unsigned int *)t89) = 1;
    goto LAB34;

LAB33:    t104 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t105) = 1;
    goto LAB38;

LAB37:    t112 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB38;

LAB39:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t119);
    *((unsigned int *)t113) = (t125 | t126);
    t127 = (t75 + 4);
    t128 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t127);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t128);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t141 & t139);
    t142 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB41;

LAB42:    t151 = ((char*)((ng1)));
    t152 = (t0 + 2888);
    xsi_vlogvar_assign_value(t152, t151, 0, 0, 2);
    goto LAB44;

LAB45:    *((unsigned int *)t6) = 1;
    goto LAB48;

LAB47:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB48;

LAB49:    t12 = (t0 + 1848U);
    t13 = *((char **)t12);
    t12 = (t0 + 1208U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB55;

LAB52:    if (t31 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t20) = 1;

LAB55:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t21) != 0)
        goto LAB58;

LAB59:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB51;

LAB54:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB55;

LAB56:    *((unsigned int *)t35) = 1;
    goto LAB59;

LAB58:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB59;

LAB60:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB62;

LAB63:    *((unsigned int *)t75) = 1;
    goto LAB66;

LAB65:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB66;

LAB67:    t82 = (t0 + 1208U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB71;

LAB70:    if (t101 != 0)
        goto LAB72;

LAB73:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t91) != 0)
        goto LAB76;

LAB77:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB69;

LAB71:    *((unsigned int *)t89) = 1;
    goto LAB73;

LAB72:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t105) = 1;
    goto LAB77;

LAB76:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB77;

LAB78:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB80;

LAB81:    t128 = ((char*)((ng1)));
    t145 = (t0 + 3048);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 2);
    goto LAB83;

LAB84:    *((unsigned int *)t6) = 1;
    goto LAB87;

LAB86:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB87;

LAB88:    t12 = (t0 + 1848U);
    t13 = *((char **)t12);
    t12 = (t0 + 1368U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB94;

LAB91:    if (t31 != 0)
        goto LAB93;

LAB92:    *((unsigned int *)t20) = 1;

LAB94:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t21) != 0)
        goto LAB97;

LAB98:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB99;

LAB100:
LAB101:    goto LAB90;

LAB93:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB94;

LAB95:    *((unsigned int *)t35) = 1;
    goto LAB98;

LAB97:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB98;

LAB99:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB101;

LAB102:    *((unsigned int *)t75) = 1;
    goto LAB105;

LAB104:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB105;

LAB106:    t82 = (t0 + 1368U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB110;

LAB109:    if (t101 != 0)
        goto LAB111;

LAB112:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t91) != 0)
        goto LAB115;

LAB116:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB117;

LAB118:
LAB119:    goto LAB108;

LAB110:    *((unsigned int *)t89) = 1;
    goto LAB112;

LAB111:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB112;

LAB113:    *((unsigned int *)t105) = 1;
    goto LAB116;

LAB115:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB116;

LAB117:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB119;

LAB120:    t128 = ((char*)((ng2)));
    t145 = (t0 + 3208);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 2);
    goto LAB122;

LAB123:    *((unsigned int *)t6) = 1;
    goto LAB126;

LAB125:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB126;

LAB127:    t12 = (t0 + 2008U);
    t13 = *((char **)t12);
    t12 = (t0 + 1368U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB133;

LAB130:    if (t31 != 0)
        goto LAB132;

LAB131:    *((unsigned int *)t20) = 1;

LAB133:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB134;

LAB135:    if (*((unsigned int *)t21) != 0)
        goto LAB136;

LAB137:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB138;

LAB139:
LAB140:    goto LAB129;

LAB132:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB133;

LAB134:    *((unsigned int *)t35) = 1;
    goto LAB137;

LAB136:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB137;

LAB138:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB140;

LAB141:    *((unsigned int *)t75) = 1;
    goto LAB144;

LAB143:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB144;

LAB145:    t82 = (t0 + 1368U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB149;

LAB148:    if (t101 != 0)
        goto LAB150;

LAB151:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB152;

LAB153:    if (*((unsigned int *)t91) != 0)
        goto LAB154;

LAB155:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB156;

LAB157:
LAB158:    goto LAB147;

LAB149:    *((unsigned int *)t89) = 1;
    goto LAB151;

LAB150:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB151;

LAB152:    *((unsigned int *)t105) = 1;
    goto LAB155;

LAB154:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB155;

LAB156:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB158;

LAB159:    t128 = ((char*)((ng1)));
    t145 = (t0 + 3208);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 2);
    goto LAB161;

LAB162:    *((unsigned int *)t6) = 1;
    goto LAB165;

LAB164:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB165;

LAB166:    t12 = (t0 + 1848U);
    t13 = *((char **)t12);
    t12 = (t0 + 1528U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB172;

LAB169:    if (t31 != 0)
        goto LAB171;

LAB170:    *((unsigned int *)t20) = 1;

LAB172:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB173;

LAB174:    if (*((unsigned int *)t21) != 0)
        goto LAB175;

LAB176:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB177;

LAB178:
LAB179:    goto LAB168;

LAB171:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB172;

LAB173:    *((unsigned int *)t35) = 1;
    goto LAB176;

LAB175:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB176;

LAB177:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB179;

LAB180:    *((unsigned int *)t75) = 1;
    goto LAB183;

LAB182:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB183;

LAB184:    t82 = (t0 + 1528U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB188;

LAB187:    if (t101 != 0)
        goto LAB189;

LAB190:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB191;

LAB192:    if (*((unsigned int *)t91) != 0)
        goto LAB193;

LAB194:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB195;

LAB196:
LAB197:    goto LAB186;

LAB188:    *((unsigned int *)t89) = 1;
    goto LAB190;

LAB189:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB190;

LAB191:    *((unsigned int *)t105) = 1;
    goto LAB194;

LAB193:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB194;

LAB195:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB197;

LAB198:    t128 = ((char*)((ng2)));
    t145 = (t0 + 3368);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 2);
    goto LAB200;

LAB201:    *((unsigned int *)t6) = 1;
    goto LAB204;

LAB203:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB204;

LAB205:    t12 = (t0 + 2008U);
    t13 = *((char **)t12);
    t12 = (t0 + 1528U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB211;

LAB208:    if (t31 != 0)
        goto LAB210;

LAB209:    *((unsigned int *)t20) = 1;

LAB211:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB212;

LAB213:    if (*((unsigned int *)t21) != 0)
        goto LAB214;

LAB215:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB216;

LAB217:
LAB218:    goto LAB207;

LAB210:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB211;

LAB212:    *((unsigned int *)t35) = 1;
    goto LAB215;

LAB214:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB215;

LAB216:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB218;

LAB219:    *((unsigned int *)t75) = 1;
    goto LAB222;

LAB221:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB222;

LAB223:    t82 = (t0 + 1528U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB227;

LAB226:    if (t101 != 0)
        goto LAB228;

LAB229:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB230;

LAB231:    if (*((unsigned int *)t91) != 0)
        goto LAB232;

LAB233:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB234;

LAB235:
LAB236:    goto LAB225;

LAB227:    *((unsigned int *)t89) = 1;
    goto LAB229;

LAB228:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB229;

LAB230:    *((unsigned int *)t105) = 1;
    goto LAB233;

LAB232:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB233;

LAB234:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB236;

LAB237:    t128 = ((char*)((ng1)));
    t145 = (t0 + 3368);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 2);
    goto LAB239;

LAB240:    *((unsigned int *)t6) = 1;
    goto LAB243;

LAB242:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB243;

LAB244:    t12 = (t0 + 2008U);
    t13 = *((char **)t12);
    t12 = (t0 + 1848U);
    t17 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t13 + 4);
    t18 = (t17 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB250;

LAB247:    if (t31 != 0)
        goto LAB249;

LAB248:    *((unsigned int *)t20) = 1;

LAB250:    memset(t35, 0, 8);
    t21 = (t20 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB251;

LAB252:    if (*((unsigned int *)t21) != 0)
        goto LAB253;

LAB254:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB255;

LAB256:
LAB257:    goto LAB246;

LAB249:    t19 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB250;

LAB251:    *((unsigned int *)t35) = 1;
    goto LAB254;

LAB253:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB254;

LAB255:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB257;

LAB258:    *((unsigned int *)t75) = 1;
    goto LAB261;

LAB260:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB261;

LAB262:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng0)));
    memset(t89, 0, 8);
    t87 = (t83 + 4);
    t88 = (t82 + 4);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t82);
    t94 = (t92 ^ t93);
    t95 = *((unsigned int *)t87);
    t96 = *((unsigned int *)t88);
    t97 = (t95 ^ t96);
    t98 = (t94 | t97);
    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t88);
    t101 = (t99 | t100);
    t102 = (~(t101));
    t103 = (t98 & t102);
    if (t103 != 0)
        goto LAB266;

LAB265:    if (t101 != 0)
        goto LAB267;

LAB268:    memset(t105, 0, 8);
    t91 = (t89 + 4);
    t107 = *((unsigned int *)t91);
    t108 = (~(t107));
    t109 = *((unsigned int *)t89);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB269;

LAB270:    if (*((unsigned int *)t91) != 0)
        goto LAB271;

LAB272:    t114 = *((unsigned int *)t75);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t106 = (t75 + 4);
    t112 = (t105 + 4);
    t117 = (t113 + 4);
    t120 = *((unsigned int *)t106);
    t121 = *((unsigned int *)t112);
    t122 = (t120 | t121);
    *((unsigned int *)t117) = t122;
    t123 = *((unsigned int *)t117);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB273;

LAB274:
LAB275:    goto LAB264;

LAB266:    *((unsigned int *)t89) = 1;
    goto LAB268;

LAB267:    t90 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB268;

LAB269:    *((unsigned int *)t105) = 1;
    goto LAB272;

LAB271:    t104 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB272;

LAB273:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t113) = (t125 | t126);
    t118 = (t75 + 4);
    t119 = (t105 + 4);
    t129 = *((unsigned int *)t75);
    t130 = (~(t129));
    t131 = *((unsigned int *)t118);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t119);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t141 & t139);
    t142 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB275;

LAB276:    t128 = ((char*)((ng1)));
    t145 = (t0 + 3528);
    xsi_vlogvar_assign_value(t145, t128, 0, 0, 1);
    goto LAB278;

}


extern void work_m_00000000001569440398_2617713601_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000001569440398_2617713601", "isim/testmipsjmy.exe.sim/work/m_00000000001569440398_2617713601.didat");
	xsi_register_executes(pe);
}
