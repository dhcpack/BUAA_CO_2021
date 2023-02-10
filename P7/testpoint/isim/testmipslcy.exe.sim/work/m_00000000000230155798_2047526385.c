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
static unsigned int ng0[] = {0U, 0U};
static int ng1[] = {1, 0};
static unsigned int ng2[] = {12287U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {15U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {12U, 0U};
static int ng8[] = {4, 0};
static unsigned int ng9[] = {1U, 0U};
static unsigned int ng10[] = {2U, 0U};
static unsigned int ng11[] = {4U, 0U};
static int ng12[] = {3, 0};
static unsigned int ng13[] = {8U, 0U};
static int ng14[] = {16, 0};
static int ng15[] = {24, 0};



static void Initial_38_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);
    t1 = ((char*)((ng0)));
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Always_46_1(char *t0)
{
    char t6[8];
    char t22[8];
    char t36[8];
    char t40[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
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
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    int t88;
    char *t89;
    char *t90;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4944);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t48, t22, 8);

LAB16:    t80 = (t48 + 4);
    t81 = *((unsigned int *)t80);
    t82 = (~(t81));
    t83 = *((unsigned int *)t48);
    t84 = (t83 & t82);
    t85 = (t84 != 0);
    if (t85 > 0)
        goto LAB29;

LAB30:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB31:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 1048U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng2)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    if (*((unsigned int *)t37) != 0)
        goto LAB18;

LAB17:    t38 = (t34 + 4);
    if (*((unsigned int *)t38) != 0)
        goto LAB18;

LAB21:    if (*((unsigned int *)t35) > *((unsigned int *)t34))
        goto LAB20;

LAB19:    *((unsigned int *)t36) = 1;

LAB20:    memset(t40, 0, 8);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t36);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t41) != 0)
        goto LAB24;

LAB25:    t49 = *((unsigned int *)t22);
    t50 = *((unsigned int *)t40);
    t51 = (t49 & t50);
    *((unsigned int *)t48) = t51;
    t52 = (t22 + 4);
    t53 = (t40 + 4);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t52);
    t56 = *((unsigned int *)t53);
    t57 = (t55 | t56);
    *((unsigned int *)t54) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 != 0);
    if (t59 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB16;

LAB18:    t39 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB20;

LAB22:    *((unsigned int *)t40) = 1;
    goto LAB25;

LAB24:    t47 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB25;

LAB26:    t60 = *((unsigned int *)t48);
    t61 = *((unsigned int *)t54);
    *((unsigned int *)t48) = (t60 | t61);
    t62 = (t22 + 4);
    t63 = (t40 + 4);
    t64 = *((unsigned int *)t22);
    t65 = (~(t64));
    t66 = *((unsigned int *)t62);
    t67 = (~(t66));
    t68 = *((unsigned int *)t40);
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
    t78 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t78 & t74);
    t79 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t79 & t75);
    goto LAB28;

LAB29:
LAB32:    t86 = (t0 + 1528U);
    t87 = *((char **)t86);

LAB33:    t86 = ((char*)((ng3)));
    t88 = xsi_vlog_unsigned_case_compare(t87, 32, t86, 32);
    if (t88 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng1)));
    t72 = xsi_vlog_unsigned_case_compare(t87, 32, t2, 32);
    if (t72 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng5)));
    t72 = xsi_vlog_unsigned_case_compare(t87, 32, t2, 32);
    if (t72 == 1)
        goto LAB38;

LAB39:
LAB41:
LAB40:    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB42:    goto LAB31;

LAB34:
LAB43:    t89 = ((char*)((ng4)));
    t90 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t90, t89, 0, 0, 4, 0LL);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB42;

LAB36:
LAB44:    t3 = ((char*)((ng5)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t22, 0, 8);
    t4 = (t22 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t22) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t13 & 65535U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 65535U);
    xsi_vlog_mul_concat(t6, 32, 16, t3, 1U, t22, 16);
    t8 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);

LAB45:    t8 = ((char*)((ng3)));
    t72 = xsi_vlog_unsigned_case_compare(t6, 32, t8, 32);
    if (t72 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng1)));
    t72 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t72 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB42;

LAB38:
LAB53:    t3 = ((char*)((ng8)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t36, 0, 8);
    t4 = (t36 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t36) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    xsi_vlog_mul_concat(t22, 32, 8, t3, 1U, t36, 8);
    t8 = (t0 + 3208);
    xsi_vlogvar_assign_value(t8, t22, 0, 0, 32);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t22) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB54:    t5 = ((char*)((ng3)));
    t72 = xsi_vlog_unsigned_case_compare(t22, 32, t5, 32);
    if (t72 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng1)));
    t72 = xsi_vlog_unsigned_case_compare(t22, 32, t2, 32);
    if (t72 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng5)));
    t72 = xsi_vlog_unsigned_case_compare(t22, 32, t2, 32);
    if (t72 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng12)));
    t72 = xsi_vlog_unsigned_case_compare(t22, 32, t2, 32);
    if (t72 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB42;

LAB46:
LAB51:    t21 = ((char*)((ng6)));
    t23 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t23, t21, 0, 0, 4, 0LL);
    goto LAB50;

LAB48:
LAB52:    t3 = ((char*)((ng7)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB50;

LAB55:    t7 = ((char*)((ng9)));
    t8 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 4, 0LL);
    goto LAB63;

LAB57:    t3 = ((char*)((ng10)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB63;

LAB59:    t3 = ((char*)((ng11)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB63;

LAB61:    t3 = ((char*)((ng13)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB63;

}

static void Always_86_2(char *t0)
{
    char t9[8];
    char t13[8];
    char t14[8];
    char t24[8];
    char t28[8];
    char t37[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4960);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 32, 0LL);
    goto LAB17;

LAB9:
LAB18:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t4, t8, 2, t10, 32, 1);

LAB19:    t11 = ((char*)((ng3)));
    t12 = xsi_vlog_unsigned_case_compare(t9, 32, t11, 32);
    if (t12 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t9, 32, t2, 32);
    if (t6 == 1)
        goto LAB22;

LAB23:
LAB24:    goto LAB17;

LAB11:
LAB25:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t13, 32, t4, t8, 2, t10, 32, 1);

LAB26:    t11 = ((char*)((ng3)));
    t12 = xsi_vlog_unsigned_case_compare(t13, 32, t11, 32);
    if (t12 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t13, 32, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB17;

LAB13:
LAB32:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t3 = (t14 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 0);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 0);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 3U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 3U);

LAB33:    t8 = ((char*)((ng3)));
    t12 = xsi_vlog_unsigned_case_compare(t14, 32, t8, 32);
    if (t12 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t14, 32, t2, 32);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t14, 32, t2, 32);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t14, 32, t2, 32);
    if (t6 == 1)
        goto LAB40;

LAB41:
LAB42:    goto LAB17;

LAB15:
LAB43:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t24, 0, 8);
    t3 = (t24 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 0);
    *((unsigned int *)t24) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 0);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t22 & 3U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 3U);

LAB44:    t8 = ((char*)((ng3)));
    t12 = xsi_vlog_unsigned_case_compare(t24, 32, t8, 32);
    if (t12 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t24, 32, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t24, 32, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t24, 32, t2, 32);
    if (t6 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB17;

LAB20:    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 0);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 0);
    *((unsigned int *)t15) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 65535U);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 65535U);
    t25 = ((char*)((ng14)));
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    memset(t28, 0, 8);
    t26 = (t28 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 15);
    t32 = (t31 & 1);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 >> 15);
    t35 = (t34 & 1);
    *((unsigned int *)t26) = t35;
    xsi_vlog_mul_concat(t24, 16, 1, t25, 1U, t28, 1);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t24, 16, t14, 16);
    t36 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t36, t13, 0, 0, 32, 0LL);
    goto LAB24;

LAB22:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t3 = (t14 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 16);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 16);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 65535U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 65535U);
    t8 = ((char*)((ng14)));
    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t28, 0, 8);
    t10 = (t28 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 31);
    t32 = (t31 & 1);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t15);
    t34 = (t33 >> 31);
    t35 = (t34 & 1);
    *((unsigned int *)t10) = t35;
    xsi_vlog_mul_concat(t24, 16, 1, t8, 1U, t28, 1);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t24, 16, t14, 16);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t13, 0, 0, 32, 0LL);
    goto LAB24;

LAB27:    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t24, 0, 8);
    t15 = (t24 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 0);
    *((unsigned int *)t24) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 0);
    *((unsigned int *)t15) = t21;
    t22 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t22 & 65535U);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 65535U);
    t25 = ((char*)((ng0)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t25, 16, t24, 16);
    t26 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t26, t14, 0, 0, 32, 0LL);
    goto LAB31;

LAB29:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t24, 0, 8);
    t3 = (t24 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 16);
    *((unsigned int *)t24) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 16);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t22 & 65535U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 65535U);
    t8 = ((char*)((ng0)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t8, 16, t24, 16);
    t10 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t10, t14, 0, 0, 32, 0LL);
    goto LAB31;

LAB34:    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t28, 0, 8);
    t10 = (t28 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 0);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t15);
    t33 = (t32 >> 0);
    *((unsigned int *)t10) = t33;
    t34 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t34 & 255U);
    t35 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t35 & 255U);
    t16 = ((char*)((ng15)));
    t17 = (t0 + 1208U);
    t25 = *((char **)t17);
    memset(t38, 0, 8);
    t17 = (t38 + 4);
    t26 = (t25 + 4);
    t39 = *((unsigned int *)t25);
    t40 = (t39 >> 7);
    t41 = (t40 & 1);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t26);
    t43 = (t42 >> 7);
    t44 = (t43 & 1);
    *((unsigned int *)t17) = t44;
    xsi_vlog_mul_concat(t37, 24, 1, t16, 1U, t38, 1);
    xsi_vlogtype_concat(t24, 32, 32, 2U, t37, 24, t28, 8);
    t27 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t27, t24, 0, 0, 32, 0LL);
    goto LAB42;

LAB36:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 8);
    *((unsigned int *)t28) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 8);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng15)));
    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t38, 0, 8);
    t10 = (t38 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 15);
    t32 = (t31 & 1);
    *((unsigned int *)t38) = t32;
    t33 = *((unsigned int *)t15);
    t34 = (t33 >> 15);
    t35 = (t34 & 1);
    *((unsigned int *)t10) = t35;
    xsi_vlog_mul_concat(t37, 24, 1, t8, 1U, t38, 1);
    xsi_vlogtype_concat(t24, 32, 32, 2U, t37, 24, t28, 8);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t24, 0, 0, 32, 0LL);
    goto LAB42;

LAB38:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 16);
    *((unsigned int *)t28) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 16);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng15)));
    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t38, 0, 8);
    t10 = (t38 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 23);
    t32 = (t31 & 1);
    *((unsigned int *)t38) = t32;
    t33 = *((unsigned int *)t15);
    t34 = (t33 >> 23);
    t35 = (t34 & 1);
    *((unsigned int *)t10) = t35;
    xsi_vlog_mul_concat(t37, 24, 1, t8, 1U, t38, 1);
    xsi_vlogtype_concat(t24, 32, 32, 2U, t37, 24, t28, 8);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t24, 0, 0, 32, 0LL);
    goto LAB42;

LAB40:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 24);
    *((unsigned int *)t28) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 24);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng15)));
    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t38, 0, 8);
    t10 = (t38 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 31);
    t32 = (t31 & 1);
    *((unsigned int *)t38) = t32;
    t33 = *((unsigned int *)t15);
    t34 = (t33 >> 31);
    t35 = (t34 & 1);
    *((unsigned int *)t10) = t35;
    xsi_vlog_mul_concat(t37, 24, 1, t8, 1U, t38, 1);
    xsi_vlogtype_concat(t24, 32, 32, 2U, t37, 24, t28, 8);
    t16 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t16, t24, 0, 0, 32, 0LL);
    goto LAB42;

LAB45:    t10 = (t0 + 1208U);
    t11 = *((char **)t10);
    memset(t37, 0, 8);
    t10 = (t37 + 4);
    t15 = (t11 + 4);
    t30 = *((unsigned int *)t11);
    t31 = (t30 >> 0);
    *((unsigned int *)t37) = t31;
    t32 = *((unsigned int *)t15);
    t33 = (t32 >> 0);
    *((unsigned int *)t10) = t33;
    t34 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t34 & 255U);
    t35 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t35 & 255U);
    t16 = ((char*)((ng0)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t16, 24, t37, 8);
    t17 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t17, t28, 0, 0, 32, 0LL);
    goto LAB53;

LAB47:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t37, 0, 8);
    t3 = (t37 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 8);
    *((unsigned int *)t37) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 8);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng0)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t10, t28, 0, 0, 32, 0LL);
    goto LAB53;

LAB49:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t37, 0, 8);
    t3 = (t37 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 16);
    *((unsigned int *)t37) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 16);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng0)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t10, t28, 0, 0, 32, 0LL);
    goto LAB53;

LAB51:    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t37, 0, 8);
    t3 = (t37 + 4);
    t7 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 24);
    *((unsigned int *)t37) = t19;
    t20 = *((unsigned int *)t7);
    t21 = (t20 >> 24);
    *((unsigned int *)t3) = t21;
    t22 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t22 & 255U);
    t23 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t23 & 255U);
    t8 = ((char*)((ng0)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t10, t28, 0, 0, 32, 0LL);
    goto LAB53;

}


extern void work_m_00000000000230155798_2047526385_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Always_46_1,(void *)Always_86_2};
	xsi_register_didat("work_m_00000000000230155798_2047526385", "isim/testmipslcy.exe.sim/work/m_00000000000230155798_2047526385.didat");
	xsi_register_executes(pe);
}
