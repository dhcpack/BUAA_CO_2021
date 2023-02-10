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
static const char *ng0 = "E:/1-Project/P6/CPU_practice/multdiv.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static int ng7[] = {5, 0};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static int ng10[] = {10, 0};
static unsigned int ng11[] = {6U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {0U, 0U, 0U, 0U};
static unsigned int ng14[] = {8U, 0U};
static unsigned int ng15[] = {9U, 0U};
static unsigned int ng16[] = {10U, 0U};



static void Initial_13_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(13, ng0);

LAB2:    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Cont_19_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char t9[8];
    char t23[8];
    char t39[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
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
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    int t71;
    int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 3048);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t6, 32, t7, 32);
    memset(t9, 0, 8);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t10) != 0)
        goto LAB6;

LAB7:    t17 = (t9 + 4);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB8;

LAB9:    memcpy(t47, t9, 8);

LAB10:    memset(t4, 0, 8);
    t79 = (t47 + 4);
    t80 = *((unsigned int *)t79);
    t81 = (~(t80));
    t82 = *((unsigned int *)t47);
    t83 = (t82 & t81);
    t84 = (t83 & 1U);
    if (t84 != 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t79) != 0)
        goto LAB24;

LAB25:    t86 = (t4 + 4);
    t87 = *((unsigned int *)t4);
    t88 = *((unsigned int *)t86);
    t89 = (t87 || t88);
    if (t89 > 0)
        goto LAB26;

LAB27:    t91 = *((unsigned int *)t4);
    t92 = (~(t91));
    t93 = *((unsigned int *)t86);
    t94 = (t92 || t93);
    if (t94 > 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t86) > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t4) > 0)
        goto LAB32;

LAB33:    memcpy(t3, t95, 8);

LAB34:    t96 = (t0 + 4880);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    memset(t100, 0, 8);
    t101 = 1U;
    t102 = t101;
    t103 = (t3 + 4);
    t104 = *((unsigned int *)t3);
    t101 = (t101 & t104);
    t105 = *((unsigned int *)t103);
    t102 = (t102 & t105);
    t106 = (t100 + 4);
    t107 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t107 | t101);
    t108 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t108 | t102);
    xsi_driver_vfirst_trans(t96, 0, 0);
    t109 = (t0 + 4784);
    *((int *)t109) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    t16 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB7;

LAB8:    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t23, 0, 8);
    t24 = (t22 + 4);
    t25 = (t21 + 4);
    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t21);
    t28 = (t26 ^ t27);
    t29 = *((unsigned int *)t24);
    t30 = *((unsigned int *)t25);
    t31 = (t29 ^ t30);
    t32 = (t28 | t31);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t25);
    t35 = (t33 | t34);
    t36 = (~(t35));
    t37 = (t32 & t36);
    if (t37 != 0)
        goto LAB12;

LAB11:    if (t35 != 0)
        goto LAB13;

LAB14:    memset(t39, 0, 8);
    t40 = (t23 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (~(t41));
    t43 = *((unsigned int *)t23);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t40) != 0)
        goto LAB17;

LAB18:    t48 = *((unsigned int *)t9);
    t49 = *((unsigned int *)t39);
    t50 = (t48 & t49);
    *((unsigned int *)t47) = t50;
    t51 = (t9 + 4);
    t52 = (t39 + 4);
    t53 = (t47 + 4);
    t54 = *((unsigned int *)t51);
    t55 = *((unsigned int *)t52);
    t56 = (t54 | t55);
    *((unsigned int *)t53) = t56;
    t57 = *((unsigned int *)t53);
    t58 = (t57 != 0);
    if (t58 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB10;

LAB12:    *((unsigned int *)t23) = 1;
    goto LAB14;

LAB13:    t38 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t39) = 1;
    goto LAB18;

LAB17:    t46 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB18;

LAB19:    t59 = *((unsigned int *)t47);
    t60 = *((unsigned int *)t53);
    *((unsigned int *)t47) = (t59 | t60);
    t61 = (t9 + 4);
    t62 = (t39 + 4);
    t63 = *((unsigned int *)t9);
    t64 = (~(t63));
    t65 = *((unsigned int *)t61);
    t66 = (~(t65));
    t67 = *((unsigned int *)t39);
    t68 = (~(t67));
    t69 = *((unsigned int *)t62);
    t70 = (~(t69));
    t71 = (t64 & t66);
    t72 = (t68 & t70);
    t73 = (~(t71));
    t74 = (~(t72));
    t75 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t75 & t73);
    t76 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t76 & t74);
    t77 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t77 & t73);
    t78 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t78 & t74);
    goto LAB21;

LAB22:    *((unsigned int *)t4) = 1;
    goto LAB25;

LAB24:    t85 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t85) = 1;
    goto LAB25;

LAB26:    t90 = ((char*)((ng4)));
    goto LAB27;

LAB28:    t95 = ((char*)((ng1)));
    goto LAB29;

LAB30:    xsi_vlog_unsigned_bit_combine(t3, 1, t90, 1, t95, 1);
    goto LAB34;

LAB32:    memcpy(t3, t90, 8);
    goto LAB34;

}

static void Always_21_2(char *t0)
{
    char t13[8];
    char t17[8];
    char t20[16];
    char t21[16];
    char t22[16];
    char t35[8];
    char t37[8];
    char t38[16];
    char t39[16];
    char t41[16];
    char t42[16];
    char t43[16];
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
    char *t15;
    char *t16;
    char *t18;
    int t19;
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
    unsigned int t34;
    char *t36;
    char *t40;
    char *t44;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 4800);
    *((int *)t2) = 1;
    t3 = (t0 + 4496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(21, ng0);

LAB5:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_not_equal(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(33, ng0);

LAB18:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);

LAB19:    t2 = ((char*)((ng4)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng5)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng6)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng8)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng9)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng11)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng12)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng14)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng15)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng16)));
    t19 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t19 == 1)
        goto LAB38;

LAB39:
LAB41:
LAB40:    xsi_set_current_line(100, ng0);

LAB71:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2728);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB42:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(22, ng0);

LAB9:    xsi_set_current_line(23, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(26, ng0);

LAB13:    xsi_set_current_line(27, ng0);
    t12 = (t0 + 3048);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_minus(t17, 32, t15, 32, t16, 32);
    t18 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t18, t17, 0, 0, 32, 0LL);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_equal(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:
LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(28, ng0);

LAB17:    xsi_set_current_line(29, ng0);
    t12 = (t0 + 2728);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 32, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB16;

LAB20:    xsi_set_current_line(35, ng0);

LAB43:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB42;

LAB22:    xsi_set_current_line(39, ng0);

LAB44:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB42;

LAB24:    xsi_set_current_line(43, ng0);

LAB45:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    xsi_vlogtype_sign_extend(t20, 64, t5, 32);
    t4 = (t0 + 1848U);
    t11 = *((char **)t4);
    xsi_vlogtype_sign_extend(t21, 64, t11, 32);
    xsi_vlog_signed_multiply(t22, 64, t20, 64, t21, 64);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t22, 0, 0, 32, 0LL);
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t22, 32, 0, 32, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB26:    xsi_set_current_line(48, ng0);

LAB46:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 1848U);
    t11 = *((char **)t4);
    xsi_vlog_unsigned_multiply(t20, 64, t5, 32, t11, 32);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t20, 0, 0, 32, 0LL);
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t20, 32, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB28:    xsi_set_current_line(53, ng0);

LAB47:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t23 = (t9 ^ t10);
    t24 = (t8 | t23);
    t25 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t12);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB49;

LAB48:    if (t27 != 0)
        goto LAB50;

LAB51:    t15 = (t13 + 4);
    t30 = *((unsigned int *)t15);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(59, ng0);

LAB56:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB54:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB30:    xsi_set_current_line(66, ng0);

LAB57:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t23 = (t9 ^ t10);
    t24 = (t8 | t23);
    t25 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t12);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB59;

LAB58:    if (t27 != 0)
        goto LAB60;

LAB61:    t15 = (t13 + 4);
    t30 = *((unsigned int *)t15);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(72, ng0);

LAB66:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB64:    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB32:    xsi_set_current_line(79, ng0);

LAB67:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 2408);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    xsi_vlogtype_concat(t20, 64, 64, 2U, t15, 32, t11, 32);
    t16 = ((char*)((ng13)));
    t18 = (t0 + 1688U);
    t36 = *((char **)t18);
    xsi_vlogtype_sign_extend(t38, 64, t36, 32);
    t18 = (t0 + 1848U);
    t40 = *((char **)t18);
    xsi_vlogtype_sign_extend(t39, 64, t40, 32);
    xsi_vlog_signed_multiply(t41, 64, t38, 64, t39, 64);
    xsi_vlog_signed_add(t42, 64, t16, 64, t41, 64);
    xsi_vlog_unsigned_add(t43, 64, t20, 64, t42, 64);
    t18 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t18, t43, 0, 0, 32, 0LL);
    t44 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t44, t43, 32, 0, 32, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB34:    xsi_set_current_line(85, ng0);

LAB68:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 2408);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    xsi_vlogtype_concat(t20, 64, 64, 2U, t15, 32, t11, 32);
    t16 = (t0 + 1688U);
    t18 = *((char **)t16);
    t16 = (t0 + 1848U);
    t36 = *((char **)t16);
    xsi_vlog_unsigned_multiply(t21, 64, t18, 32, t36, 32);
    xsi_vlog_unsigned_add(t22, 64, t20, 64, t21, 64);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t22, 0, 0, 32, 0LL);
    t40 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t40, t22, 32, 0, 32, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB36:    xsi_set_current_line(90, ng0);

LAB69:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 2408);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    xsi_vlogtype_concat(t20, 64, 64, 2U, t15, 32, t11, 32);
    t16 = ((char*)((ng13)));
    t18 = (t0 + 1688U);
    t36 = *((char **)t18);
    xsi_vlogtype_sign_extend(t38, 64, t36, 32);
    t18 = (t0 + 1848U);
    t40 = *((char **)t18);
    xsi_vlogtype_sign_extend(t39, 64, t40, 32);
    xsi_vlog_signed_multiply(t41, 64, t38, 64, t39, 64);
    xsi_vlog_signed_add(t42, 64, t16, 64, t41, 64);
    xsi_vlog_unsigned_minus(t43, 64, t20, 64, t42, 64);
    t18 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t18, t43, 0, 0, 32, 0LL);
    t44 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t44, t43, 32, 0, 32, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB38:    xsi_set_current_line(95, ng0);

LAB70:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 2408);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    xsi_vlogtype_concat(t20, 64, 64, 2U, t15, 32, t11, 32);
    t16 = (t0 + 1688U);
    t18 = *((char **)t16);
    t16 = (t0 + 1848U);
    t36 = *((char **)t16);
    xsi_vlog_unsigned_multiply(t21, 64, t18, 32, t36, 32);
    xsi_vlog_unsigned_minus(t22, 64, t20, 64, t21, 64);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t22, 0, 0, 32, 0LL);
    t40 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t40, t22, 32, 0, 32, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    goto LAB42;

LAB49:    *((unsigned int *)t13) = 1;
    goto LAB51;

LAB50:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(54, ng0);

LAB55:    xsi_set_current_line(55, ng0);
    t16 = (t0 + 1688U);
    t18 = *((char **)t16);
    t16 = (t0 + 1848U);
    t36 = *((char **)t16);
    memset(t37, 0, 8);
    xsi_vlog_signed_divide(t37, 32, t18, 32, t36, 32);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t37, 0, 0, 32, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    memset(t35, 0, 8);
    xsi_vlog_signed_mod(t35, 32, t4, 32, t5, 32);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t35, 0, 0, 32, 0LL);
    goto LAB54;

LAB59:    *((unsigned int *)t13) = 1;
    goto LAB61;

LAB60:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(67, ng0);

LAB65:    xsi_set_current_line(68, ng0);
    t16 = (t0 + 1688U);
    t18 = *((char **)t16);
    t16 = (t0 + 1848U);
    t36 = *((char **)t16);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_divide(t17, 32, t18, 32, t36, 32);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_mod(t13, 32, t4, 32, t5, 32);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t13, 0, 0, 32, 0LL);
    goto LAB64;

}


extern void work_m_00000000001412572506_2385593669_init()
{
	static char *pe[] = {(void *)Initial_13_0,(void *)Cont_19_1,(void *)Always_21_2};
	xsi_register_didat("work_m_00000000001412572506_2385593669", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001412572506_2385593669.didat");
	xsi_register_executes(pe);
}
