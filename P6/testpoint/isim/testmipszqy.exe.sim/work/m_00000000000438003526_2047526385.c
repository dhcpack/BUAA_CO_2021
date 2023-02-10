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
static int ng0[] = {1, 0};
static int ng1[] = {0, 0};
static unsigned int ng2[] = {15U, 0U};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {12U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {4U, 0U};
static int ng10[] = {3, 0};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {0U, 0U};
static int ng13[] = {16, 0};
static int ng14[] = {24, 0};



static void Always_33_0(char *t0)
{
    char t6[8];
    char t33[8];
    char t34[8];
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
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4056);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng0)));
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

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    t2 = ((char*)((ng12)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:
LAB13:    t28 = (t0 + 1528U);
    t29 = *((char **)t28);

LAB14:    t28 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 32, t28, 32);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng0)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 32, t2, 32);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 32, t2, 32);
    if (t30 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB23:    goto LAB12;

LAB15:
LAB24:    t31 = ((char*)((ng2)));
    t32 = (t0 + 2408);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 4);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB23;

LAB17:
LAB25:    t3 = ((char*)((ng3)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t33, 0, 8);
    t4 = (t33 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t33) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t13 & 65535U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 65535U);
    xsi_vlog_mul_concat(t6, 32, 16, t3, 1U, t33, 16);
    t8 = (t0 + 2568);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 32);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng0)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);

LAB26:    t8 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t8, 32);
    if (t30 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng0)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB23;

LAB19:
LAB34:    t3 = ((char*)((ng6)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    memset(t34, 0, 8);
    t4 = (t34 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    xsi_vlog_mul_concat(t33, 32, 8, t3, 1U, t34, 8);
    t8 = (t0 + 2568);
    xsi_vlogvar_assign_value(t8, t33, 0, 0, 32);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t33, 0, 8);
    t2 = (t33 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t33) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB35:    t5 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t5, 32);
    if (t30 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng0)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t2, 32);
    if (t30 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t2, 32);
    if (t30 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t2, 32);
    if (t30 == 1)
        goto LAB42;

LAB43:
LAB44:    goto LAB23;

LAB27:
LAB32:    t21 = ((char*)((ng4)));
    t22 = (t0 + 2408);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 4);
    goto LAB31;

LAB29:
LAB33:    t3 = ((char*)((ng5)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB31;

LAB36:    t7 = ((char*)((ng7)));
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB44;

LAB38:    t3 = ((char*)((ng8)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB44;

LAB40:    t3 = ((char*)((ng9)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB44;

LAB42:    t3 = ((char*)((ng11)));
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB44;

}

static void Always_73_1(char *t0)
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 32, 0LL);
    goto LAB17;

LAB9:
LAB18:    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng0)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t4, t8, 2, t10, 32, 1);

LAB19:    t11 = ((char*)((ng1)));
    t12 = xsi_vlog_unsigned_case_compare(t9, 32, t11, 32);
    if (t12 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng0)));
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
    t10 = ((char*)((ng0)));
    xsi_vlog_generic_get_index_select_value(t13, 32, t4, t8, 2, t10, 32, 1);

LAB26:    t11 = ((char*)((ng1)));
    t12 = xsi_vlog_unsigned_case_compare(t13, 32, t11, 32);
    if (t12 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng0)));
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

LAB33:    t8 = ((char*)((ng1)));
    t12 = xsi_vlog_unsigned_case_compare(t14, 32, t8, 32);
    if (t12 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t14, 32, t2, 32);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t14, 32, t2, 32);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng10)));
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

LAB44:    t8 = ((char*)((ng1)));
    t12 = xsi_vlog_unsigned_case_compare(t24, 32, t8, 32);
    if (t12 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t24, 32, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t24, 32, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng10)));
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
    t25 = ((char*)((ng13)));
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
    t36 = (t0 + 2248);
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
    t8 = ((char*)((ng13)));
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
    t16 = (t0 + 2248);
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
    t25 = ((char*)((ng12)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t25, 16, t24, 16);
    t26 = (t0 + 2248);
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
    t8 = ((char*)((ng12)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t8, 16, t24, 16);
    t10 = (t0 + 2248);
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
    t16 = ((char*)((ng14)));
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
    t27 = (t0 + 2248);
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
    t8 = ((char*)((ng14)));
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
    t16 = (t0 + 2248);
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
    t8 = ((char*)((ng14)));
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
    t16 = (t0 + 2248);
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
    t8 = ((char*)((ng14)));
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
    t16 = (t0 + 2248);
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
    t16 = ((char*)((ng12)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t16, 24, t37, 8);
    t17 = (t0 + 2248);
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
    t8 = ((char*)((ng12)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2248);
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
    t8 = ((char*)((ng12)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2248);
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
    t8 = ((char*)((ng12)));
    xsi_vlogtype_concat(t28, 32, 32, 2U, t8, 24, t37, 8);
    t10 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t10, t28, 0, 0, 32, 0LL);
    goto LAB53;

}


extern void work_m_00000000000438003526_2047526385_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Always_73_1};
	xsi_register_didat("work_m_00000000000438003526_2047526385", "isim/testmipszqy.exe.sim/work/m_00000000000438003526_2047526385.didat");
	xsi_register_executes(pe);
}
