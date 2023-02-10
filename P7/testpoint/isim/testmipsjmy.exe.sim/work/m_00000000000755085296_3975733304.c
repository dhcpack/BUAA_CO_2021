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
static int ng0[] = {12, 0};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {13, 0};
static int ng3[] = {14, 0};
static int ng4[] = {15, 0};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {0, 0};
static unsigned int ng8[] = {1997881672U, 0U};
static int ng9[] = {4, 0};



static void Cont_54_0(char *t0)
{
    char t3[8];
    char t7[8];
    char t49[8];
    char t81[8];
    char t92[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    int t116;
    int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;

LAB0:    t1 = (t0 + 5888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t6);
    t10 = (t8 & t9);
    *((unsigned int *)t7) = t10;
    t11 = (t4 + 4);
    t12 = (t6 + 4);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t11);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t3, 0, 8);
    t39 = (t7 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t7);
    t43 = (t42 & t41);
    t44 = (t43 & 63U);
    if (t44 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t39) != 0)
        goto LAB9;

LAB10:    t46 = (t0 + 4168);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    t50 = *((unsigned int *)t3);
    t51 = *((unsigned int *)t48);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t3 + 4);
    t54 = (t48 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB11;

LAB12:
LAB13:    t82 = (t0 + 4008);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    memset(t81, 0, 8);
    t85 = (t84 + 4);
    t86 = *((unsigned int *)t85);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (t88 & t87);
    t90 = (t89 & 1U);
    if (t90 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t85) == 0)
        goto LAB14;

LAB16:    t91 = (t81 + 4);
    *((unsigned int *)t81) = 1;
    *((unsigned int *)t91) = 1;

LAB17:    t93 = *((unsigned int *)t49);
    t94 = *((unsigned int *)t81);
    t95 = (t93 & t94);
    *((unsigned int *)t92) = t95;
    t96 = (t49 + 4);
    t97 = (t81 + 4);
    t98 = (t92 + 4);
    t99 = *((unsigned int *)t96);
    t100 = *((unsigned int *)t97);
    t101 = (t99 | t100);
    *((unsigned int *)t98) = t101;
    t102 = *((unsigned int *)t98);
    t103 = (t102 != 0);
    if (t103 == 1)
        goto LAB18;

LAB19:
LAB20:    t124 = (t0 + 7608);
    t125 = (t124 + 56U);
    t126 = *((char **)t125);
    t127 = (t126 + 56U);
    t128 = *((char **)t127);
    memset(t128, 0, 8);
    t129 = 1U;
    t130 = t129;
    t131 = (t92 + 4);
    t132 = *((unsigned int *)t92);
    t129 = (t129 & t132);
    t133 = *((unsigned int *)t131);
    t130 = (t130 & t133);
    t134 = (t128 + 4);
    t135 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t135 | t129);
    t136 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t136 | t130);
    xsi_driver_vfirst_trans(t124, 0, 0);
    t137 = (t0 + 7448);
    *((int *)t137) = 1;

LAB1:    return;
LAB4:    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t7) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t6);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & t33);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & t34);
    t37 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t37 & t33);
    t38 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t38 & t34);
    goto LAB6;

LAB7:    *((unsigned int *)t3) = 1;
    goto LAB10;

LAB9:    t45 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB10;

LAB11:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t3 + 4);
    t64 = (t48 + 4);
    t65 = *((unsigned int *)t3);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t48);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB13;

LAB14:    *((unsigned int *)t81) = 1;
    goto LAB17;

LAB18:    t104 = *((unsigned int *)t92);
    t105 = *((unsigned int *)t98);
    *((unsigned int *)t92) = (t104 | t105);
    t106 = (t49 + 4);
    t107 = (t81 + 4);
    t108 = *((unsigned int *)t49);
    t109 = (~(t108));
    t110 = *((unsigned int *)t106);
    t111 = (~(t110));
    t112 = *((unsigned int *)t81);
    t113 = (~(t112));
    t114 = *((unsigned int *)t107);
    t115 = (~(t114));
    t116 = (t109 & t111);
    t117 = (t113 & t115);
    t118 = (~(t116));
    t119 = (~(t117));
    t120 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t120 & t118);
    t121 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t121 & t119);
    t122 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t122 & t118);
    t123 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t123 & t119);
    goto LAB20;

}

static void Cont_56_1(char *t0)
{
    char t3[8];
    char t11[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;

LAB0:    t1 = (t0 + 6136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 31U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t0 + 4008);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t11, 0, 8);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t14);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t15) == 0)
        goto LAB8;

LAB10:    t21 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t21) = 1;

LAB11:    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t11);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t26 = (t3 + 4);
    t27 = (t11 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB12;

LAB13:
LAB14:    t54 = (t0 + 7672);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memset(t58, 0, 8);
    t59 = 1U;
    t60 = t59;
    t61 = (t22 + 4);
    t62 = *((unsigned int *)t22);
    t59 = (t59 & t62);
    t63 = *((unsigned int *)t61);
    t60 = (t60 & t63);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t65 | t59);
    t66 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t66 | t60);
    xsi_driver_vfirst_trans(t54, 0, 0);
    t67 = (t0 + 7464);
    *((int *)t67) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t11) = 1;
    goto LAB11;

LAB12:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    t36 = (t3 + 4);
    t37 = (t11 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t36);
    t41 = (~(t40));
    t42 = *((unsigned int *)t11);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t51 & t49);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    t53 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t53 & t49);
    goto LAB14;

}

static void Cont_58_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 6384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t0 + 3448U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 | t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t32 = (t0 + 7736);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 1U;
    t38 = t37;
    t39 = (t5 + 4);
    t40 = *((unsigned int *)t5);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 0);
    t45 = (t0 + 7480);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = *((unsigned int *)t19);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (~(t23));
    t29 = (~(t27));
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t30 & t28);
    t31 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t31 & t29);
    goto LAB6;

}

static void Cont_60_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t33[8];
    char t49[8];
    char t50[8];
    char t53[8];
    char t80[8];
    char t97[8];
    char t98[8];
    char t101[8];
    char t128[8];
    char t136[8];
    char t137[8];
    char t139[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t51;
    char *t52;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t99;
    char *t100;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t138;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;
    char *t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    char *t174;
    char *t175;
    char *t176;
    char *t177;
    char *t178;
    char *t179;

LAB0:    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t45 = *((unsigned int *)t4);
    t46 = (~(t45));
    t47 = *((unsigned int *)t29);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t49, 8);

LAB20:    t174 = (t0 + 7800);
    t175 = (t174 + 56U);
    t176 = *((char **)t175);
    t177 = (t176 + 56U);
    t178 = *((char **)t177);
    memcpy(t178, t3, 8);
    xsi_driver_vfirst_trans(t174, 0, 31);
    t179 = (t0 + 7496);
    *((int *)t179) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 4168);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t0 + 4008);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 3848);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = ((char*)((ng1)));
    xsi_vlogtype_concat(t33, 32, 32, 5U, t44, 16, t43, 6, t40, 8, t39, 1, t36, 1);
    goto LAB13;

LAB14:    t51 = (t0 + 1048U);
    t52 = *((char **)t51);
    t51 = ((char*)((ng2)));
    memset(t53, 0, 8);
    t54 = (t52 + 4);
    t55 = (t51 + 4);
    t56 = *((unsigned int *)t52);
    t57 = *((unsigned int *)t51);
    t58 = (t56 ^ t57);
    t59 = *((unsigned int *)t54);
    t60 = *((unsigned int *)t55);
    t61 = (t59 ^ t60);
    t62 = (t58 | t61);
    t63 = *((unsigned int *)t54);
    t64 = *((unsigned int *)t55);
    t65 = (t63 | t64);
    t66 = (~(t65));
    t67 = (t62 & t66);
    if (t67 != 0)
        goto LAB24;

LAB21:    if (t65 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t53) = 1;

LAB24:    memset(t50, 0, 8);
    t69 = (t53 + 4);
    t70 = *((unsigned int *)t69);
    t71 = (~(t70));
    t72 = *((unsigned int *)t53);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t69) != 0)
        goto LAB27;

LAB28:    t76 = (t50 + 4);
    t77 = *((unsigned int *)t50);
    t78 = *((unsigned int *)t76);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB29;

LAB30:    t93 = *((unsigned int *)t50);
    t94 = (~(t93));
    t95 = *((unsigned int *)t76);
    t96 = (t94 || t95);
    if (t96 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t76) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t50) > 0)
        goto LAB35;

LAB36:    memcpy(t49, t97, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t49, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB23:    t68 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t50) = 1;
    goto LAB28;

LAB27:    t75 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB28;

LAB29:    t81 = ((char*)((ng1)));
    t82 = (t0 + 4488);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    t85 = ((char*)((ng1)));
    t86 = (t0 + 4328);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    t89 = ((char*)((ng1)));
    t90 = (t0 + 4648);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    xsi_vlogtype_concat(t80, 32, 32, 6U, t92, 1, t89, 15, t88, 6, t85, 3, t84, 5, t81, 2);
    goto LAB30;

LAB31:    t99 = (t0 + 1048U);
    t100 = *((char **)t99);
    t99 = ((char*)((ng3)));
    memset(t101, 0, 8);
    t102 = (t100 + 4);
    t103 = (t99 + 4);
    t104 = *((unsigned int *)t100);
    t105 = *((unsigned int *)t99);
    t106 = (t104 ^ t105);
    t107 = *((unsigned int *)t102);
    t108 = *((unsigned int *)t103);
    t109 = (t107 ^ t108);
    t110 = (t106 | t109);
    t111 = *((unsigned int *)t102);
    t112 = *((unsigned int *)t103);
    t113 = (t111 | t112);
    t114 = (~(t113));
    t115 = (t110 & t114);
    if (t115 != 0)
        goto LAB41;

LAB38:    if (t113 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t101) = 1;

LAB41:    memset(t98, 0, 8);
    t117 = (t101 + 4);
    t118 = *((unsigned int *)t117);
    t119 = (~(t118));
    t120 = *((unsigned int *)t101);
    t121 = (t120 & t119);
    t122 = (t121 & 1U);
    if (t122 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t117) != 0)
        goto LAB44;

LAB45:    t124 = (t98 + 4);
    t125 = *((unsigned int *)t98);
    t126 = *((unsigned int *)t124);
    t127 = (t125 || t126);
    if (t127 > 0)
        goto LAB46;

LAB47:    t132 = *((unsigned int *)t98);
    t133 = (~(t132));
    t134 = *((unsigned int *)t124);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t124) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t98) > 0)
        goto LAB52;

LAB53:    memcpy(t97, t136, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t49, 32, t80, 32, t97, 32);
    goto LAB37;

LAB35:    memcpy(t49, t80, 8);
    goto LAB37;

LAB40:    t116 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t98) = 1;
    goto LAB45;

LAB44:    t123 = (t98 + 4);
    *((unsigned int *)t98) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB45;

LAB46:    t129 = ((char*)((ng1)));
    t130 = (t0 + 2968U);
    t131 = *((char **)t130);
    xsi_vlogtype_concat(t128, 32, 32, 2U, t131, 30, t129, 2);
    goto LAB47;

LAB48:    t130 = (t0 + 1048U);
    t138 = *((char **)t130);
    t130 = ((char*)((ng4)));
    memset(t139, 0, 8);
    t140 = (t138 + 4);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t138);
    t143 = *((unsigned int *)t130);
    t144 = (t142 ^ t143);
    t145 = *((unsigned int *)t140);
    t146 = *((unsigned int *)t141);
    t147 = (t145 ^ t146);
    t148 = (t144 | t147);
    t149 = *((unsigned int *)t140);
    t150 = *((unsigned int *)t141);
    t151 = (t149 | t150);
    t152 = (~(t151));
    t153 = (t148 & t152);
    if (t153 != 0)
        goto LAB58;

LAB55:    if (t151 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t139) = 1;

LAB58:    memset(t137, 0, 8);
    t155 = (t139 + 4);
    t156 = *((unsigned int *)t155);
    t157 = (~(t156));
    t158 = *((unsigned int *)t139);
    t159 = (t158 & t157);
    t160 = (t159 & 1U);
    if (t160 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t155) != 0)
        goto LAB61;

LAB62:    t162 = (t137 + 4);
    t163 = *((unsigned int *)t137);
    t164 = *((unsigned int *)t162);
    t165 = (t163 || t164);
    if (t165 > 0)
        goto LAB63;

LAB64:    t169 = *((unsigned int *)t137);
    t170 = (~(t169));
    t171 = *((unsigned int *)t162);
    t172 = (t170 || t171);
    if (t172 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t162) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t137) > 0)
        goto LAB69;

LAB70:    memcpy(t136, t173, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t97, 32, t128, 32, t136, 32);
    goto LAB54;

LAB52:    memcpy(t97, t128, 8);
    goto LAB54;

LAB57:    t154 = (t139 + 4);
    *((unsigned int *)t139) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t137) = 1;
    goto LAB62;

LAB61:    t161 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t161) = 1;
    goto LAB62;

LAB63:    t166 = (t0 + 4968);
    t167 = (t166 + 56U);
    t168 = *((char **)t167);
    goto LAB64;

LAB65:    t173 = ((char*)((ng1)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t136, 32, t168, 32, t173, 32);
    goto LAB71;

LAB69:    memcpy(t136, t168, 8);
    goto LAB71;

}

static void Cont_66_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t20[8];
    char t21[8];
    char t34[8];
    char t45[8];
    char t50[8];
    char t64[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;

LAB0:    t1 = (t0 + 6880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2808U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t5) != *((unsigned int *)t2))
        goto LAB6;

LAB4:    t7 = (t5 + 4);
    t8 = (t2 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB6:    memset(t4, 0, 8);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t6);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t9) != 0)
        goto LAB9;

LAB10:    t16 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB11;

LAB12:    t60 = *((unsigned int *)t4);
    t61 = (~(t60));
    t62 = *((unsigned int *)t16);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t16) > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) > 0)
        goto LAB17;

LAB18:    memcpy(t3, t64, 8);

LAB19:    t76 = (t0 + 7864);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    memset(t80, 0, 8);
    t81 = 1073741823U;
    t82 = t81;
    t83 = (t3 + 4);
    t84 = *((unsigned int *)t3);
    t81 = (t81 & t84);
    t85 = *((unsigned int *)t83);
    t82 = (t82 & t85);
    t86 = (t80 + 4);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t87 | t81);
    t88 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t88 | t82);
    xsi_driver_vfirst_trans(t76, 0, 29);
    t89 = (t0 + 7512);
    *((int *)t89) = 1;

LAB1:    return;
LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB9:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB10;

LAB11:    t22 = (t0 + 2008U);
    t23 = *((char **)t22);
    memset(t21, 0, 8);
    t22 = (t23 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t23);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t22) != 0)
        goto LAB22;

LAB23:    t30 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB24;

LAB25:    t46 = *((unsigned int *)t21);
    t47 = (~(t46));
    t48 = *((unsigned int *)t30);
    t49 = (t47 || t48);
    if (t49 > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t30) > 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t21) > 0)
        goto LAB30;

LAB31:    memcpy(t20, t50, 8);

LAB32:    goto LAB12;

LAB13:    t65 = (t0 + 4808);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memset(t64, 0, 8);
    t68 = (t64 + 4);
    t69 = (t67 + 4);
    t70 = *((unsigned int *)t67);
    t71 = (t70 >> 2);
    *((unsigned int *)t64) = t71;
    t72 = *((unsigned int *)t69);
    t73 = (t72 >> 2);
    *((unsigned int *)t68) = t73;
    t74 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t74 & 1073741823U);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t75 & 1073741823U);
    goto LAB14;

LAB15:    xsi_vlog_unsigned_bit_combine(t3, 32, t20, 32, t64, 32);
    goto LAB19;

LAB17:    memcpy(t3, t20, 8);
    goto LAB19;

LAB20:    *((unsigned int *)t21) = 1;
    goto LAB23;

LAB22:    t29 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB23;

LAB24:    t35 = (t0 + 1528U);
    t36 = *((char **)t35);
    memset(t34, 0, 8);
    t35 = (t34 + 4);
    t37 = (t36 + 4);
    t38 = *((unsigned int *)t36);
    t39 = (t38 >> 2);
    *((unsigned int *)t34) = t39;
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 2);
    *((unsigned int *)t35) = t41;
    t42 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t42 & 1073741823U);
    t43 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t43 & 1073741823U);
    t44 = ((char*)((ng6)));
    memset(t45, 0, 8);
    xsi_vlog_unsigned_minus(t45, 32, t34, 32, t44, 32);
    goto LAB25;

LAB26:    t51 = (t0 + 1528U);
    t52 = *((char **)t51);
    memset(t50, 0, 8);
    t51 = (t50 + 4);
    t53 = (t52 + 4);
    t54 = *((unsigned int *)t52);
    t55 = (t54 >> 2);
    *((unsigned int *)t50) = t55;
    t56 = *((unsigned int *)t53);
    t57 = (t56 >> 2);
    *((unsigned int *)t51) = t57;
    t58 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t58 & 1073741823U);
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 1073741823U);
    goto LAB27;

LAB28:    xsi_vlog_unsigned_bit_combine(t20, 32, t45, 32, t50, 32);
    goto LAB32;

LAB30:    memcpy(t20, t45, 8);
    goto LAB32;

}

static void Always_69_5(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t17[8];
    char t38[8];
    char t39[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
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
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;

LAB0:    t1 = (t0 + 7128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 7528);
    *((int *)t2) = 1;
    t3 = (t0 + 7160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB10:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 6, 0LL);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t13, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB13;

LAB11:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB13:    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:
LAB16:    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t13, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB19;

LAB17:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB19;

LAB18:    *((unsigned int *)t13) = 1;

LAB19:    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB20;

LAB21:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB69;

LAB70:
LAB71:
LAB22:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng7)));
    t12 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 6, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB14:    t12 = ((char*)((ng1)));
    t14 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, 0, 1, 0LL);
    goto LAB16;

LAB20:
LAB23:    t12 = (t0 + 3288U);
    t14 = *((char **)t12);
    t12 = ((char*)((ng5)));
    memset(t17, 0, 8);
    if (*((unsigned int *)t14) != *((unsigned int *)t12))
        goto LAB26;

LAB24:    t18 = (t14 + 4);
    t19 = (t12 + 4);
    if (*((unsigned int *)t18) != *((unsigned int *)t19))
        goto LAB26;

LAB25:    *((unsigned int *)t17) = 1;

LAB26:    memset(t16, 0, 8);
    t20 = (t17 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t17);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t20) != 0)
        goto LAB29;

LAB30:    t27 = (t16 + 4);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t27);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB31;

LAB32:    t32 = *((unsigned int *)t16);
    t33 = (~(t32));
    t34 = *((unsigned int *)t27);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t27) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t16) > 0)
        goto LAB37;

LAB38:    memcpy(t15, t38, 8);

LAB39:    t36 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t36, t15, 0, 0, 5, 0LL);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t16, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB42;

LAB40:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB42;

LAB41:    *((unsigned int *)t16) = 1;

LAB42:    memset(t15, 0, 8);
    t11 = (t16 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t16);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t11) != 0)
        goto LAB45;

LAB46:    t14 = (t15 + 4);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t14);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB47;

LAB48:    t43 = *((unsigned int *)t15);
    t44 = (~(t43));
    t45 = *((unsigned int *)t14);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t14) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t15) > 0)
        goto LAB53;

LAB54:    memcpy(t13, t48, 8);

LAB55:    t49 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t49, t13, 0, 0, 32, 0LL);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB22;

LAB27:    *((unsigned int *)t16) = 1;
    goto LAB30;

LAB29:    t26 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB30;

LAB31:    t31 = ((char*)((ng7)));
    goto LAB32;

LAB33:    t36 = (t0 + 1688U);
    t37 = *((char **)t36);
    memcpy(t38, t37, 8);
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t15, 32, t31, 32, t38, 32);
    goto LAB39;

LAB37:    memcpy(t15, t31, 8);
    goto LAB39;

LAB43:    *((unsigned int *)t15) = 1;
    goto LAB46;

LAB45:    t12 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB46;

LAB47:    t18 = (t0 + 2008U);
    t19 = *((char **)t18);
    memset(t38, 0, 8);
    t18 = (t19 + 4);
    t24 = *((unsigned int *)t18);
    t25 = (~(t24));
    t28 = *((unsigned int *)t19);
    t29 = (t28 & t25);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t18) != 0)
        goto LAB58;

LAB59:    t26 = (t38 + 4);
    t32 = *((unsigned int *)t38);
    t33 = *((unsigned int *)t26);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB60;

LAB61:    t35 = *((unsigned int *)t38);
    t40 = (~(t35));
    t41 = *((unsigned int *)t26);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t26) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t38) > 0)
        goto LAB66;

LAB67:    memcpy(t17, t37, 8);

LAB68:    goto LAB48;

LAB49:    t36 = (t0 + 4808);
    t47 = (t36 + 56U);
    t48 = *((char **)t47);
    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t13, 32, t17, 32, t48, 32);
    goto LAB55;

LAB53:    memcpy(t13, t17, 8);
    goto LAB55;

LAB56:    *((unsigned int *)t38) = 1;
    goto LAB59;

LAB58:    t20 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB59;

LAB60:    t27 = (t0 + 1528U);
    t31 = *((char **)t27);
    t27 = ((char*)((ng9)));
    memset(t39, 0, 8);
    xsi_vlog_unsigned_minus(t39, 32, t31, 32, t27, 32);
    goto LAB61;

LAB62:    t36 = (t0 + 1528U);
    t37 = *((char **)t36);
    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t17, 32, t39, 32, t37, 32);
    goto LAB68;

LAB66:    memcpy(t17, t39, 8);
    goto LAB68;

LAB69:
LAB72:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng0)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t4);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t12);
    t28 = (t24 ^ t25);
    t29 = (t23 | t28);
    t30 = *((unsigned int *)t11);
    t32 = *((unsigned int *)t12);
    t33 = (t30 | t32);
    t34 = (~(t33));
    t35 = (t29 & t34);
    if (t35 != 0)
        goto LAB76;

LAB73:    if (t33 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t13) = 1;

LAB76:    t18 = (t13 + 4);
    t40 = *((unsigned int *)t18);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB77;

LAB78:    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t21 = (t9 ^ t10);
    t22 = (t8 | t21);
    t23 = *((unsigned int *)t4);
    t24 = *((unsigned int *)t5);
    t25 = (t23 | t24);
    t28 = (~(t25));
    t29 = (t22 & t28);
    if (t29 != 0)
        goto LAB84;

LAB81:    if (t25 != 0)
        goto LAB83;

LAB82:    *((unsigned int *)t13) = 1;

LAB84:    t12 = (t13 + 4);
    t30 = *((unsigned int *)t12);
    t32 = (~(t30));
    t33 = *((unsigned int *)t13);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB85;

LAB86:
LAB87:
LAB79:    goto LAB71;

LAB75:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB76;

LAB77:
LAB80:    t19 = (t0 + 1368U);
    t20 = *((char **)t19);
    memset(t16, 0, 8);
    t19 = (t16 + 4);
    t26 = (t20 + 4);
    t45 = *((unsigned int *)t20);
    t46 = (t45 >> 0);
    t50 = (t46 & 1);
    *((unsigned int *)t16) = t50;
    t51 = *((unsigned int *)t26);
    t52 = (t51 >> 0);
    t53 = (t52 & 1);
    *((unsigned int *)t19) = t53;
    t27 = (t0 + 1368U);
    t31 = *((char **)t27);
    memset(t17, 0, 8);
    t27 = (t17 + 4);
    t36 = (t31 + 4);
    t54 = *((unsigned int *)t31);
    t55 = (t54 >> 1);
    t56 = (t55 & 1);
    *((unsigned int *)t17) = t56;
    t57 = *((unsigned int *)t36);
    t58 = (t57 >> 1);
    t59 = (t58 & 1);
    *((unsigned int *)t27) = t59;
    t37 = (t0 + 1368U);
    t47 = *((char **)t37);
    memset(t38, 0, 8);
    t37 = (t38 + 4);
    t48 = (t47 + 4);
    t60 = *((unsigned int *)t47);
    t61 = (t60 >> 10);
    *((unsigned int *)t38) = t61;
    t62 = *((unsigned int *)t48);
    t63 = (t62 >> 10);
    *((unsigned int *)t37) = t63;
    t64 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t64 & 63U);
    t65 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t65 & 63U);
    xsi_vlogtype_concat(t15, 8, 8, 3U, t38, 6, t17, 1, t16, 1);
    t49 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t49, t15, 0, 0, 1, 0LL);
    t66 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t66, t15, 1, 0, 1, 0LL);
    t67 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t67, t15, 2, 0, 6, 0LL);
    goto LAB79;

LAB83:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB84;

LAB85:
LAB88:    t14 = (t0 + 1368U);
    t18 = *((char **)t14);
    t14 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t14, t18, 0, 0, 32, 0LL);
    goto LAB87;

}


extern void work_m_00000000000755085296_3975733304_init()
{
	static char *pe[] = {(void *)Cont_54_0,(void *)Cont_56_1,(void *)Cont_58_2,(void *)Cont_60_3,(void *)Cont_66_4,(void *)Always_69_5};
	xsi_register_didat("work_m_00000000000755085296_3975733304", "isim/testmipsjmy.exe.sim/work/m_00000000000755085296_3975733304.didat");
	xsi_register_executes(pe);
}
