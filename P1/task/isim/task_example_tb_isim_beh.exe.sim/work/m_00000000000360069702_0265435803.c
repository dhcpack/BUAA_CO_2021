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
static const char *ng0 = "E:/ISE/P1/task/task_example.v";



static int sp_ADD(char *t1, char *t2)
{
    char t11[8];
    char t28[8];
    char t80[8];
    char t114[8];
    char t146[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    int t72;
    int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    int t138;
    int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t5 = (t1 + 3160);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t1 + 3320);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t10);
    t14 = (t12 ^ t13);
    *((unsigned int *)t11) = t14;
    t15 = (t7 + 4);
    t16 = (t10 + 4);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t15);
    t19 = *((unsigned int *)t16);
    t20 = (t18 | t19);
    *((unsigned int *)t17) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB6;

LAB7:
LAB8:    t25 = (t1 + 3480);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t29 = *((unsigned int *)t11);
    t30 = *((unsigned int *)t27);
    t31 = (t29 ^ t30);
    *((unsigned int *)t28) = t31;
    t32 = (t11 + 4);
    t33 = (t27 + 4);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t32);
    t36 = *((unsigned int *)t33);
    t37 = (t35 | t36);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB9;

LAB10:
LAB11:    t42 = (t1 + 3800);
    xsi_vlogvar_assign_value(t42, t28, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t4 = (t1 + 3160);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t9);
    t14 = (t12 & t13);
    *((unsigned int *)t11) = t14;
    t10 = (t6 + 4);
    t15 = (t9 + 4);
    t16 = (t11 + 4);
    t18 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t15);
    t20 = (t18 | t19);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t16);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB12;

LAB13:
LAB14:    t26 = (t1 + 3160);
    t27 = (t26 + 56U);
    t32 = *((char **)t27);
    t33 = (t1 + 3480);
    t34 = (t33 + 56U);
    t42 = *((char **)t34);
    t49 = *((unsigned int *)t32);
    t50 = *((unsigned int *)t42);
    t51 = (t49 & t50);
    *((unsigned int *)t28) = t51;
    t52 = (t32 + 4);
    t53 = (t42 + 4);
    t54 = (t28 + 4);
    t55 = *((unsigned int *)t52);
    t56 = *((unsigned int *)t53);
    t57 = (t55 | t56);
    *((unsigned int *)t54) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 != 0);
    if (t59 == 1)
        goto LAB15;

LAB16:
LAB17:    t81 = *((unsigned int *)t11);
    t82 = *((unsigned int *)t28);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = (t11 + 4);
    t85 = (t28 + 4);
    t86 = (t80 + 4);
    t87 = *((unsigned int *)t84);
    t88 = *((unsigned int *)t85);
    t89 = (t87 | t88);
    *((unsigned int *)t86) = t89;
    t90 = *((unsigned int *)t86);
    t91 = (t90 != 0);
    if (t91 == 1)
        goto LAB18;

LAB19:
LAB20:    t108 = (t1 + 3320);
    t109 = (t108 + 56U);
    t110 = *((char **)t109);
    t111 = (t1 + 3480);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t115 = *((unsigned int *)t110);
    t116 = *((unsigned int *)t113);
    t117 = (t115 & t116);
    *((unsigned int *)t114) = t117;
    t118 = (t110 + 4);
    t119 = (t113 + 4);
    t120 = (t114 + 4);
    t121 = *((unsigned int *)t118);
    t122 = *((unsigned int *)t119);
    t123 = (t121 | t122);
    *((unsigned int *)t120) = t123;
    t124 = *((unsigned int *)t120);
    t125 = (t124 != 0);
    if (t125 == 1)
        goto LAB21;

LAB22:
LAB23:    t147 = *((unsigned int *)t80);
    t148 = *((unsigned int *)t114);
    t149 = (t147 | t148);
    *((unsigned int *)t146) = t149;
    t150 = (t80 + 4);
    t151 = (t114 + 4);
    t152 = (t146 + 4);
    t153 = *((unsigned int *)t150);
    t154 = *((unsigned int *)t151);
    t155 = (t153 | t154);
    *((unsigned int *)t152) = t155;
    t156 = *((unsigned int *)t152);
    t157 = (t156 != 0);
    if (t157 == 1)
        goto LAB24;

LAB25:
LAB26:    t174 = (t1 + 3960);
    xsi_vlogvar_assign_value(t174, t146, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t4 = (t1 + 3800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3960);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t11, 2, 2, 2U, t9, 1, t6, 1);
    t10 = (t1 + 3640);
    xsi_vlogvar_assign_value(t10, t11, 0, 0, 2);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    t23 = *((unsigned int *)t11);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t11) = (t23 | t24);
    goto LAB8;

LAB9:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t28) = (t40 | t41);
    goto LAB11;

LAB12:    t23 = *((unsigned int *)t11);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t11) = (t23 | t24);
    t17 = (t6 + 4);
    t25 = (t9 + 4);
    t29 = *((unsigned int *)t6);
    t30 = (~(t29));
    t31 = *((unsigned int *)t17);
    t35 = (~(t31));
    t36 = *((unsigned int *)t9);
    t37 = (~(t36));
    t38 = *((unsigned int *)t25);
    t39 = (~(t38));
    t43 = (t30 & t35);
    t44 = (t37 & t39);
    t40 = (~(t43));
    t41 = (~(t44));
    t45 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t45 & t40);
    t46 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t46 & t41);
    t47 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t47 & t40);
    t48 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t48 & t41);
    goto LAB14;

LAB15:    t60 = *((unsigned int *)t28);
    t61 = *((unsigned int *)t54);
    *((unsigned int *)t28) = (t60 | t61);
    t62 = (t32 + 4);
    t63 = (t42 + 4);
    t64 = *((unsigned int *)t32);
    t65 = (~(t64));
    t66 = *((unsigned int *)t62);
    t67 = (~(t66));
    t68 = *((unsigned int *)t42);
    t69 = (~(t68));
    t70 = *((unsigned int *)t63);
    t71 = (~(t70));
    t72 = (t65 & t67);
    t73 = (t69 & t71);
    t74 = (~(t72));
    t75 = (~(t73));
    t76 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t76 & t74);
    t77 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t77 & t75);
    t78 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t78 & t74);
    t79 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t79 & t75);
    goto LAB17;

LAB18:    t92 = *((unsigned int *)t80);
    t93 = *((unsigned int *)t86);
    *((unsigned int *)t80) = (t92 | t93);
    t94 = (t11 + 4);
    t95 = (t28 + 4);
    t96 = *((unsigned int *)t94);
    t97 = (~(t96));
    t98 = *((unsigned int *)t11);
    t99 = (t98 & t97);
    t100 = *((unsigned int *)t95);
    t101 = (~(t100));
    t102 = *((unsigned int *)t28);
    t103 = (t102 & t101);
    t104 = (~(t99));
    t105 = (~(t103));
    t106 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t106 & t104);
    t107 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t107 & t105);
    goto LAB20;

LAB21:    t126 = *((unsigned int *)t114);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t114) = (t126 | t127);
    t128 = (t110 + 4);
    t129 = (t113 + 4);
    t130 = *((unsigned int *)t110);
    t131 = (~(t130));
    t132 = *((unsigned int *)t128);
    t133 = (~(t132));
    t134 = *((unsigned int *)t113);
    t135 = (~(t134));
    t136 = *((unsigned int *)t129);
    t137 = (~(t136));
    t138 = (t131 & t133);
    t139 = (t135 & t137);
    t140 = (~(t138));
    t141 = (~(t139));
    t142 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t142 & t140);
    t143 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t143 & t141);
    t144 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t144 & t140);
    t145 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t145 & t141);
    goto LAB23;

LAB24:    t158 = *((unsigned int *)t146);
    t159 = *((unsigned int *)t152);
    *((unsigned int *)t146) = (t158 | t159);
    t160 = (t80 + 4);
    t161 = (t114 + 4);
    t162 = *((unsigned int *)t160);
    t163 = (~(t162));
    t164 = *((unsigned int *)t80);
    t165 = (t164 & t163);
    t166 = *((unsigned int *)t161);
    t167 = (~(t166));
    t168 = *((unsigned int *)t114);
    t169 = (t168 & t167);
    t170 = (~(t165));
    t171 = (~(t169));
    t172 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t172 & t170);
    t173 = *((unsigned int *)t152);
    *((unsigned int *)t152) = (t173 & t171);
    goto LAB26;

}

static void Always_45_0(char *t0)
{
    char t6[8];
    char t16[8];
    char t48[8];
    char t57[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;

LAB0:    t1 = (t0 + 4880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5200);
    *((int *)t2) = 1;
    t3 = (t0 + 4912);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1480U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = (t0 + 1640U);
    t15 = *((char **)t14);
    memset(t16, 0, 8);
    t14 = (t16 + 4);
    t17 = (t15 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t14) = t23;
    t24 = (t0 + 1800U);
    t25 = *((char **)t24);
    t24 = (t0 + 4688);
    t26 = (t0 + 848);
    t27 = xsi_create_subprogram_invocation(t24, 0, t0, t26, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t26, t27);
    t28 = (t0 + 3160);
    xsi_vlogvar_assign_value(t28, t6, 0, 0, 1);
    t29 = (t0 + 3320);
    xsi_vlogvar_assign_value(t29, t16, 0, 0, 1);
    t30 = (t0 + 3480);
    xsi_vlogvar_assign_value(t30, t25, 0, 0, 1);

LAB8:    t31 = (t0 + 4784);
    t32 = *((char **)t31);
    t33 = (t32 + 80U);
    t34 = *((char **)t33);
    t35 = (t34 + 272U);
    t36 = *((char **)t35);
    t37 = (t36 + 0U);
    t38 = *((char **)t37);
    t39 = ((int  (*)(char *, char *))t38)(t0, t32);

LAB10:    if (t39 != 0)
        goto LAB11;

LAB6:    t32 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t32);

LAB7:    t40 = (t0 + 4784);
    t41 = *((char **)t40);
    t40 = (t0 + 3640);
    t42 = (t40 + 56U);
    t43 = *((char **)t42);
    t44 = (t0 + 2520);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 2);
    t45 = (t0 + 848);
    t46 = (t0 + 4688);
    t47 = 0;
    xsi_delete_subprogram_invocation(t45, t41, t0, t46, t47);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t0 + 1640U);
    t7 = *((char **)t5);
    memset(t16, 0, 8);
    t5 = (t16 + 4);
    t14 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t5) = t23;
    t15 = (t0 + 2520);
    t17 = (t15 + 56U);
    t24 = *((char **)t17);
    memset(t48, 0, 8);
    t25 = (t48 + 4);
    t26 = (t24 + 4);
    t49 = *((unsigned int *)t24);
    t50 = (t49 >> 1);
    t51 = (t50 & 1);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t26);
    t53 = (t52 >> 1);
    t54 = (t53 & 1);
    *((unsigned int *)t25) = t54;
    t27 = (t0 + 4688);
    t28 = (t0 + 848);
    t29 = xsi_create_subprogram_invocation(t27, 0, t0, t28, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t28, t29);
    t30 = (t0 + 3160);
    xsi_vlogvar_assign_value(t30, t6, 0, 0, 1);
    t31 = (t0 + 3320);
    xsi_vlogvar_assign_value(t31, t16, 0, 0, 1);
    t32 = (t0 + 3480);
    xsi_vlogvar_assign_value(t32, t48, 0, 0, 1);

LAB14:    t33 = (t0 + 4784);
    t34 = *((char **)t33);
    t35 = (t34 + 80U);
    t36 = *((char **)t35);
    t37 = (t36 + 272U);
    t38 = *((char **)t37);
    t40 = (t38 + 0U);
    t41 = *((char **)t40);
    t39 = ((int  (*)(char *, char *))t41)(t0, t34);

LAB16:    if (t39 != 0)
        goto LAB17;

LAB12:    t34 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t34);

LAB13:    t42 = (t0 + 4784);
    t43 = *((char **)t42);
    t42 = (t0 + 3640);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    t46 = (t0 + 2680);
    xsi_vlogvar_assign_value(t46, t45, 0, 0, 2);
    t47 = (t0 + 848);
    t55 = (t0 + 4688);
    t56 = 0;
    xsi_delete_subprogram_invocation(t47, t43, t0, t55, t56);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 2);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t0 + 1640U);
    t7 = *((char **)t5);
    memset(t16, 0, 8);
    t5 = (t16 + 4);
    t14 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (t18 >> 2);
    t20 = (t19 & 1);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 2);
    t23 = (t22 & 1);
    *((unsigned int *)t5) = t23;
    t15 = (t0 + 2680);
    t17 = (t15 + 56U);
    t24 = *((char **)t17);
    memset(t48, 0, 8);
    t25 = (t48 + 4);
    t26 = (t24 + 4);
    t49 = *((unsigned int *)t24);
    t50 = (t49 >> 1);
    t51 = (t50 & 1);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t26);
    t53 = (t52 >> 1);
    t54 = (t53 & 1);
    *((unsigned int *)t25) = t54;
    t27 = (t0 + 4688);
    t28 = (t0 + 848);
    t29 = xsi_create_subprogram_invocation(t27, 0, t0, t28, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t28, t29);
    t30 = (t0 + 3160);
    xsi_vlogvar_assign_value(t30, t6, 0, 0, 1);
    t31 = (t0 + 3320);
    xsi_vlogvar_assign_value(t31, t16, 0, 0, 1);
    t32 = (t0 + 3480);
    xsi_vlogvar_assign_value(t32, t48, 0, 0, 1);

LAB20:    t33 = (t0 + 4784);
    t34 = *((char **)t33);
    t35 = (t34 + 80U);
    t36 = *((char **)t35);
    t37 = (t36 + 272U);
    t38 = *((char **)t37);
    t40 = (t38 + 0U);
    t41 = *((char **)t40);
    t39 = ((int  (*)(char *, char *))t41)(t0, t34);

LAB22:    if (t39 != 0)
        goto LAB23;

LAB18:    t34 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t34);

LAB19:    t42 = (t0 + 4784);
    t43 = *((char **)t42);
    t42 = (t0 + 3640);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    t46 = (t0 + 2840);
    xsi_vlogvar_assign_value(t46, t45, 0, 0, 2);
    t47 = (t0 + 848);
    t55 = (t0 + 4688);
    t56 = 0;
    xsi_delete_subprogram_invocation(t47, t43, t0, t55, t56);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 3);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 3);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t0 + 1640U);
    t7 = *((char **)t5);
    memset(t16, 0, 8);
    t5 = (t16 + 4);
    t14 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (t18 >> 3);
    t20 = (t19 & 1);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 3);
    t23 = (t22 & 1);
    *((unsigned int *)t5) = t23;
    t15 = (t0 + 2840);
    t17 = (t15 + 56U);
    t24 = *((char **)t17);
    memset(t48, 0, 8);
    t25 = (t48 + 4);
    t26 = (t24 + 4);
    t49 = *((unsigned int *)t24);
    t50 = (t49 >> 1);
    t51 = (t50 & 1);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t26);
    t53 = (t52 >> 1);
    t54 = (t53 & 1);
    *((unsigned int *)t25) = t54;
    t27 = (t0 + 4688);
    t28 = (t0 + 848);
    t29 = xsi_create_subprogram_invocation(t27, 0, t0, t28, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t28, t29);
    t30 = (t0 + 3160);
    xsi_vlogvar_assign_value(t30, t6, 0, 0, 1);
    t31 = (t0 + 3320);
    xsi_vlogvar_assign_value(t31, t16, 0, 0, 1);
    t32 = (t0 + 3480);
    xsi_vlogvar_assign_value(t32, t48, 0, 0, 1);

LAB26:    t33 = (t0 + 4784);
    t34 = *((char **)t33);
    t35 = (t34 + 80U);
    t36 = *((char **)t35);
    t37 = (t36 + 272U);
    t38 = *((char **)t37);
    t40 = (t38 + 0U);
    t41 = *((char **)t40);
    t39 = ((int  (*)(char *, char *))t41)(t0, t34);

LAB28:    if (t39 != 0)
        goto LAB29;

LAB24:    t34 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t34);

LAB25:    t42 = (t0 + 4784);
    t43 = *((char **)t42);
    t42 = (t0 + 3640);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    t46 = (t0 + 3000);
    xsi_vlogvar_assign_value(t46, t45, 0, 0, 2);
    t47 = (t0 + 848);
    t55 = (t0 + 4688);
    t56 = 0;
    xsi_delete_subprogram_invocation(t47, t43, t0, t55, t56);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t5 = (t16 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t5) = t13;
    t14 = (t0 + 2680);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memset(t48, 0, 8);
    t24 = (t48 + 4);
    t25 = (t17 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t48) = t20;
    t21 = *((unsigned int *)t25);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t24) = t23;
    t26 = (t0 + 2840);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t57, 0, 8);
    t29 = (t57 + 4);
    t30 = (t28 + 4);
    t49 = *((unsigned int *)t28);
    t50 = (t49 >> 0);
    t51 = (t50 & 1);
    *((unsigned int *)t57) = t51;
    t52 = *((unsigned int *)t30);
    t53 = (t52 >> 0);
    t54 = (t53 & 1);
    *((unsigned int *)t29) = t54;
    t31 = (t0 + 3000);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memset(t58, 0, 8);
    t34 = (t58 + 4);
    t35 = (t33 + 4);
    t59 = *((unsigned int *)t33);
    t60 = (t59 >> 0);
    t61 = (t60 & 1);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t35);
    t63 = (t62 >> 0);
    t64 = (t63 & 1);
    *((unsigned int *)t34) = t64;
    xsi_vlogtype_concat(t6, 4, 4, 4U, t58, 1, t57, 1, t48, 1, t16, 1);
    t36 = (t0 + 2200);
    xsi_vlogvar_assign_value(t36, t6, 0, 0, 4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t5) = t13;
    t14 = (t0 + 2360);
    xsi_vlogvar_assign_value(t14, t6, 0, 0, 1);
    goto LAB2;

LAB9:;
LAB11:    t31 = (t0 + 4880U);
    *((char **)t31) = &&LAB8;
    goto LAB1;

LAB15:;
LAB17:    t33 = (t0 + 4880U);
    *((char **)t33) = &&LAB14;
    goto LAB1;

LAB21:;
LAB23:    t33 = (t0 + 4880U);
    *((char **)t33) = &&LAB20;
    goto LAB1;

LAB27:;
LAB29:    t33 = (t0 + 4880U);
    *((char **)t33) = &&LAB26;
    goto LAB1;

}


extern void work_m_00000000000360069702_0265435803_init()
{
	static char *pe[] = {(void *)Always_45_0};
	static char *se[] = {(void *)sp_ADD};
	xsi_register_didat("work_m_00000000000360069702_0265435803", "isim/task_example_tb_isim_beh.exe.sim/work/m_00000000000360069702_0265435803.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
