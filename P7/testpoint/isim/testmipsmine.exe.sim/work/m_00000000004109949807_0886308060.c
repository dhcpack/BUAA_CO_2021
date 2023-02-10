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
static int ng2[] = {2, 0};
static int ng3[] = {3, 0};
static int ng4[] = {4, 0};
static int ng5[] = {5, 0};
static unsigned int ng6[] = {1U, 0U};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static int ng11[] = {10, 0};
static int ng12[] = {11, 0};
static int ng13[] = {12, 0};
static int ng14[] = {13, 0};
static int ng15[] = {14, 0};
static unsigned int ng16[] = {4294967295U, 0U};



static void Initial_11_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_15_1(char *t0)
{
    char t8[8];
    char t9[8];
    char t10[8];
    char t11[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
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
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3664);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = ((char*)((ng0)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:
LAB97:    t2 = ((char*)((ng16)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB37:    goto LAB2;

LAB7:
LAB38:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB9:
LAB39:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB11:
LAB40:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB13:
LAB41:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB15:
LAB42:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t12, 0, 8);
    xsi_vlog_signed_less(t12, 32, t5, 32, t7, 32);
    memset(t9, 0, 8);
    t4 = (t12 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t4) != 0)
        goto LAB45;

LAB46:    t19 = (t9 + 4);
    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB47;

LAB48:    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t19) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t9) > 0)
        goto LAB53;

LAB54:    memcpy(t8, t28, 8);

LAB55:    t29 = (t0 + 1928);
    xsi_vlogvar_assign_value(t29, t8, 0, 0, 32);
    goto LAB37;

LAB17:
LAB56:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t10, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB58;

LAB57:    t18 = (t7 + 4);
    if (*((unsigned int *)t18) != 0)
        goto LAB58;

LAB61:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB59;

LAB60:    memset(t9, 0, 8);
    t23 = (t10 + 4);
    t13 = *((unsigned int *)t23);
    t14 = (~(t13));
    t15 = *((unsigned int *)t10);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t23) != 0)
        goto LAB64;

LAB65:    t29 = (t9 + 4);
    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t29);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB66;

LAB67:    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t29);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t29) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t9) > 0)
        goto LAB72;

LAB73:    memcpy(t8, t31, 8);

LAB74:    t32 = (t0 + 1928);
    xsi_vlogvar_assign_value(t32, t8, 0, 0, 32);
    goto LAB37;

LAB19:
LAB75:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t7);
    t15 = (t13 & t14);
    *((unsigned int *)t8) = t15;
    t4 = (t5 + 4);
    t18 = (t7 + 4);
    t19 = (t8 + 4);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t18);
    t20 = (t16 | t17);
    *((unsigned int *)t19) = t20;
    t21 = *((unsigned int *)t19);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB76;

LAB77:
LAB78:    t29 = (t0 + 1928);
    xsi_vlogvar_assign_value(t29, t8, 0, 0, 32);
    goto LAB37;

LAB21:
LAB79:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t7);
    t15 = (t13 | t14);
    *((unsigned int *)t8) = t15;
    t4 = (t5 + 4);
    t18 = (t7 + 4);
    t19 = (t8 + 4);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t18);
    t20 = (t16 | t17);
    *((unsigned int *)t19) = t20;
    t21 = *((unsigned int *)t19);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB80;

LAB81:
LAB82:    t29 = (t0 + 1928);
    xsi_vlogvar_assign_value(t29, t8, 0, 0, 32);
    goto LAB37;

LAB23:
LAB83:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t7);
    t15 = (t13 | t14);
    *((unsigned int *)t9) = t15;
    t4 = (t5 + 4);
    t18 = (t7 + 4);
    t19 = (t9 + 4);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t18);
    t20 = (t16 | t17);
    *((unsigned int *)t19) = t20;
    t21 = *((unsigned int *)t19);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB84;

LAB85:
LAB86:    memset(t8, 0, 8);
    t29 = (t8 + 4);
    t30 = (t9 + 4);
    t43 = *((unsigned int *)t9);
    t44 = (~(t43));
    *((unsigned int *)t8) = t44;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB88;

LAB87:    t49 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t49 & 4294967295U);
    t50 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t50 & 4294967295U);
    t31 = (t0 + 1928);
    xsi_vlogvar_assign_value(t31, t8, 0, 0, 32);
    goto LAB37;

LAB25:
LAB89:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    *((unsigned int *)t8) = t15;
    t4 = (t5 + 4);
    t18 = (t7 + 4);
    t19 = (t8 + 4);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t18);
    t20 = (t16 | t17);
    *((unsigned int *)t19) = t20;
    t21 = *((unsigned int *)t19);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB90;

LAB91:
LAB92:    t23 = (t0 + 1928);
    xsi_vlogvar_assign_value(t23, t8, 0, 0, 32);
    goto LAB37;

LAB27:
LAB93:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t18 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 >> 0);
    *((unsigned int *)t4) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 31U);
    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 31U);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 32, t5, 32, t8, 5);
    t19 = (t0 + 1928);
    xsi_vlogvar_assign_value(t19, t9, 0, 0, 32);
    goto LAB37;

LAB29:
LAB94:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t18 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 >> 0);
    *((unsigned int *)t4) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 31U);
    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 31U);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 32, t5, 32, t8, 5);
    t19 = (t0 + 1928);
    xsi_vlogvar_assign_value(t19, t9, 0, 0, 32);
    goto LAB37;

LAB31:
LAB95:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    memset(t11, 0, 8);
    t4 = (t11 + 4);
    t18 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 >> 0);
    *((unsigned int *)t4) = t16;
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t17 & 31U);
    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 31U);
    memset(t12, 0, 8);
    xsi_vlog_signed_arith_rshift(t12, 32, t5, 32, t11, 32);
    t19 = (t0 + 1928);
    xsi_vlogvar_assign_value(t19, t12, 0, 0, 32);
    goto LAB37;

LAB33:
LAB96:    t4 = ((char*)((ng0)));
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t9, 0, 8);
    t5 = (t9 + 4);
    t18 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 0);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 >> 0);
    *((unsigned int *)t5) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 65535U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 65535U);
    xsi_vlogtype_concat(t8, 32, 32, 2U, t9, 16, t4, 16);
    t19 = (t0 + 1928);
    xsi_vlogvar_assign_value(t19, t8, 0, 0, 32);
    goto LAB37;

LAB43:    *((unsigned int *)t9) = 1;
    goto LAB46;

LAB45:    t18 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB46;

LAB47:    t23 = ((char*)((ng6)));
    goto LAB48;

LAB49:    t28 = ((char*)((ng0)));
    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t8, 32, t23, 32, t28, 32);
    goto LAB55;

LAB53:    memcpy(t8, t23, 8);
    goto LAB55;

LAB58:    t19 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB60;

LAB59:    *((unsigned int *)t10) = 1;
    goto LAB60;

LAB62:    *((unsigned int *)t9) = 1;
    goto LAB65;

LAB64:    t28 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB65;

LAB66:    t30 = ((char*)((ng6)));
    goto LAB67;

LAB68:    t31 = ((char*)((ng0)));
    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t8, 32, t30, 32, t31, 32);
    goto LAB74;

LAB72:    memcpy(t8, t30, 8);
    goto LAB74;

LAB76:    t24 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t19);
    *((unsigned int *)t8) = (t24 | t25);
    t23 = (t5 + 4);
    t28 = (t7 + 4);
    t26 = *((unsigned int *)t5);
    t27 = (~(t26));
    t33 = *((unsigned int *)t23);
    t34 = (~(t33));
    t35 = *((unsigned int *)t7);
    t36 = (~(t35));
    t37 = *((unsigned int *)t28);
    t38 = (~(t37));
    t39 = (t27 & t34);
    t40 = (t36 & t38);
    t41 = (~(t39));
    t42 = (~(t40));
    t43 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t43 & t41);
    t44 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t44 & t42);
    t45 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t45 & t41);
    t46 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t46 & t42);
    goto LAB78;

LAB80:    t24 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t19);
    *((unsigned int *)t8) = (t24 | t25);
    t23 = (t5 + 4);
    t28 = (t7 + 4);
    t26 = *((unsigned int *)t23);
    t27 = (~(t26));
    t33 = *((unsigned int *)t5);
    t39 = (t33 & t27);
    t34 = *((unsigned int *)t28);
    t35 = (~(t34));
    t36 = *((unsigned int *)t7);
    t40 = (t36 & t35);
    t37 = (~(t39));
    t38 = (~(t40));
    t41 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t41 & t37);
    t42 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t42 & t38);
    goto LAB82;

LAB84:    t24 = *((unsigned int *)t9);
    t25 = *((unsigned int *)t19);
    *((unsigned int *)t9) = (t24 | t25);
    t23 = (t5 + 4);
    t28 = (t7 + 4);
    t26 = *((unsigned int *)t23);
    t27 = (~(t26));
    t33 = *((unsigned int *)t5);
    t39 = (t33 & t27);
    t34 = *((unsigned int *)t28);
    t35 = (~(t34));
    t36 = *((unsigned int *)t7);
    t40 = (t36 & t35);
    t37 = (~(t39));
    t38 = (~(t40));
    t41 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t41 & t37);
    t42 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t42 & t38);
    goto LAB86;

LAB88:    t45 = *((unsigned int *)t8);
    t46 = *((unsigned int *)t30);
    *((unsigned int *)t8) = (t45 | t46);
    t47 = *((unsigned int *)t29);
    t48 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t47 | t48);
    goto LAB87;

LAB90:    t24 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t19);
    *((unsigned int *)t8) = (t24 | t25);
    goto LAB92;

}

static void Cont_39_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t36[8];
    char t46[8];
    char t54[8];
    char t70[8];
    char t78[8];
    char t110[8];
    char t124[8];
    char t135[8];
    char t144[8];
    char t160[8];
    char t168[8];
    char t200[8];
    char t215[8];
    char t231[8];
    char t245[8];
    char t255[8];
    char t263[8];
    char t279[8];
    char t287[8];
    char t319[8];
    char t333[8];
    char t344[8];
    char t353[8];
    char t369[8];
    char t377[8];
    char t409[8];
    char t417[8];
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
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t55;
    char *t56;
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
    unsigned int t68;
    char *t69;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    int t102;
    int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t182;
    char *t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    int t192;
    int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    char *t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;
    char *t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t213;
    char *t214;
    char *t216;
    char *t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    char *t230;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    char *t243;
    char *t244;
    char *t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    char *t253;
    char *t254;
    char *t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    char *t264;
    char *t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    char *t278;
    char *t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    char *t286;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    char *t291;
    char *t292;
    char *t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    char *t301;
    char *t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    unsigned int t307;
    unsigned int t308;
    unsigned int t309;
    unsigned int t310;
    int t311;
    int t312;
    unsigned int t313;
    unsigned int t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    char *t320;
    unsigned int t321;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    char *t326;
    char *t327;
    unsigned int t328;
    unsigned int t329;
    unsigned int t330;
    char *t331;
    char *t332;
    char *t334;
    unsigned int t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    char *t341;
    char *t342;
    char *t343;
    char *t345;
    char *t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    char *t354;
    char *t355;
    unsigned int t356;
    unsigned int t357;
    unsigned int t358;
    unsigned int t359;
    unsigned int t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    char *t368;
    char *t370;
    unsigned int t371;
    unsigned int t372;
    unsigned int t373;
    unsigned int t374;
    unsigned int t375;
    char *t376;
    unsigned int t378;
    unsigned int t379;
    unsigned int t380;
    char *t381;
    char *t382;
    char *t383;
    unsigned int t384;
    unsigned int t385;
    unsigned int t386;
    unsigned int t387;
    unsigned int t388;
    unsigned int t389;
    unsigned int t390;
    char *t391;
    char *t392;
    unsigned int t393;
    unsigned int t394;
    unsigned int t395;
    unsigned int t396;
    unsigned int t397;
    unsigned int t398;
    unsigned int t399;
    unsigned int t400;
    int t401;
    int t402;
    unsigned int t403;
    unsigned int t404;
    unsigned int t405;
    unsigned int t406;
    unsigned int t407;
    unsigned int t408;
    char *t410;
    unsigned int t411;
    unsigned int t412;
    unsigned int t413;
    unsigned int t414;
    unsigned int t415;
    char *t416;
    unsigned int t418;
    unsigned int t419;
    unsigned int t420;
    char *t421;
    char *t422;
    char *t423;
    unsigned int t424;
    unsigned int t425;
    unsigned int t426;
    unsigned int t427;
    unsigned int t428;
    unsigned int t429;
    unsigned int t430;
    char *t431;
    char *t432;
    unsigned int t433;
    unsigned int t434;
    unsigned int t435;
    int t436;
    unsigned int t437;
    unsigned int t438;
    unsigned int t439;
    int t440;
    unsigned int t441;
    unsigned int t442;
    unsigned int t443;
    unsigned int t444;
    char *t445;
    unsigned int t446;
    unsigned int t447;
    unsigned int t448;
    unsigned int t449;
    unsigned int t450;
    char *t451;
    char *t452;
    unsigned int t453;
    unsigned int t454;
    unsigned int t455;
    char *t456;
    unsigned int t457;
    unsigned int t458;
    unsigned int t459;
    unsigned int t460;
    char *t461;
    char *t462;
    char *t463;
    char *t464;
    char *t465;
    char *t466;
    unsigned int t467;
    unsigned int t468;
    char *t469;
    unsigned int t470;
    unsigned int t471;
    char *t472;
    unsigned int t473;
    unsigned int t474;
    char *t475;

LAB0:    t1 = (t0 + 3344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t78, t22, 8);

LAB14:    memset(t110, 0, 8);
    t111 = (t78 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t78);
    t115 = (t114 & t113);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t111) != 0)
        goto LAB28;

LAB29:    t118 = (t110 + 4);
    t119 = *((unsigned int *)t110);
    t120 = *((unsigned int *)t118);
    t121 = (t119 || t120);
    if (t121 > 0)
        goto LAB30;

LAB31:    memcpy(t168, t110, 8);

LAB32:    memset(t200, 0, 8);
    t201 = (t168 + 4);
    t202 = *((unsigned int *)t201);
    t203 = (~(t202));
    t204 = *((unsigned int *)t168);
    t205 = (t204 & t203);
    t206 = (t205 & 1U);
    if (t206 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t201) != 0)
        goto LAB46;

LAB47:    t208 = (t200 + 4);
    t209 = *((unsigned int *)t200);
    t210 = (!(t209));
    t211 = *((unsigned int *)t208);
    t212 = (t210 || t211);
    if (t212 > 0)
        goto LAB48;

LAB49:    memcpy(t417, t200, 8);

LAB50:    memset(t4, 0, 8);
    t445 = (t417 + 4);
    t446 = *((unsigned int *)t445);
    t447 = (~(t446));
    t448 = *((unsigned int *)t417);
    t449 = (t448 & t447);
    t450 = (t449 & 1U);
    if (t450 != 0)
        goto LAB98;

LAB99:    if (*((unsigned int *)t445) != 0)
        goto LAB100;

LAB101:    t452 = (t4 + 4);
    t453 = *((unsigned int *)t4);
    t454 = *((unsigned int *)t452);
    t455 = (t453 || t454);
    if (t455 > 0)
        goto LAB102;

LAB103:    t457 = *((unsigned int *)t4);
    t458 = (~(t457));
    t459 = *((unsigned int *)t452);
    t460 = (t458 || t459);
    if (t460 > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t452) > 0)
        goto LAB106;

LAB107:    if (*((unsigned int *)t4) > 0)
        goto LAB108;

LAB109:    memcpy(t3, t461, 8);

LAB110:    t462 = (t0 + 3760);
    t463 = (t462 + 56U);
    t464 = *((char **)t463);
    t465 = (t464 + 56U);
    t466 = *((char **)t465);
    memset(t466, 0, 8);
    t467 = 1U;
    t468 = t467;
    t469 = (t3 + 4);
    t470 = *((unsigned int *)t3);
    t467 = (t467 & t470);
    t471 = *((unsigned int *)t469);
    t468 = (t468 & t471);
    t472 = (t466 + 4);
    t473 = *((unsigned int *)t466);
    *((unsigned int *)t466) = (t473 | t467);
    t474 = *((unsigned int *)t472);
    *((unsigned int *)t472) = (t474 | t468);
    xsi_driver_vfirst_trans(t462, 0, 0);
    t475 = (t0 + 3680);
    *((int *)t475) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 1048U);
    t35 = *((char **)t34);
    memset(t36, 0, 8);
    t34 = (t36 + 4);
    t37 = (t35 + 4);
    t38 = *((unsigned int *)t35);
    t39 = (t38 >> 31);
    t40 = (t39 & 1);
    *((unsigned int *)t36) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 >> 31);
    t43 = (t42 & 1);
    *((unsigned int *)t34) = t43;
    t44 = (t0 + 1208U);
    t45 = *((char **)t44);
    memset(t46, 0, 8);
    t44 = (t46 + 4);
    t47 = (t45 + 4);
    t48 = *((unsigned int *)t45);
    t49 = (t48 >> 31);
    t50 = (t49 & 1);
    *((unsigned int *)t46) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 >> 31);
    t53 = (t52 & 1);
    *((unsigned int *)t44) = t53;
    memset(t54, 0, 8);
    t55 = (t36 + 4);
    t56 = (t46 + 4);
    t57 = *((unsigned int *)t36);
    t58 = *((unsigned int *)t46);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t55);
    t61 = *((unsigned int *)t56);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t55);
    t65 = *((unsigned int *)t56);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB18;

LAB15:    if (t66 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t54) = 1;

LAB18:    memset(t70, 0, 8);
    t71 = (t54 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t54);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t71) != 0)
        goto LAB21;

LAB22:    t79 = *((unsigned int *)t22);
    t80 = *((unsigned int *)t70);
    t81 = (t79 & t80);
    *((unsigned int *)t78) = t81;
    t82 = (t22 + 4);
    t83 = (t70 + 4);
    t84 = (t78 + 4);
    t85 = *((unsigned int *)t82);
    t86 = *((unsigned int *)t83);
    t87 = (t85 | t86);
    *((unsigned int *)t84) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 != 0);
    if (t89 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t69 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t70) = 1;
    goto LAB22;

LAB21:    t77 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB22;

LAB23:    t90 = *((unsigned int *)t78);
    t91 = *((unsigned int *)t84);
    *((unsigned int *)t78) = (t90 | t91);
    t92 = (t22 + 4);
    t93 = (t70 + 4);
    t94 = *((unsigned int *)t22);
    t95 = (~(t94));
    t96 = *((unsigned int *)t92);
    t97 = (~(t96));
    t98 = *((unsigned int *)t70);
    t99 = (~(t98));
    t100 = *((unsigned int *)t93);
    t101 = (~(t100));
    t102 = (t95 & t97);
    t103 = (t99 & t101);
    t104 = (~(t102));
    t105 = (~(t103));
    t106 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t106 & t104);
    t107 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t107 & t105);
    t108 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t108 & t104);
    t109 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t109 & t105);
    goto LAB25;

LAB26:    *((unsigned int *)t110) = 1;
    goto LAB29;

LAB28:    t117 = (t110 + 4);
    *((unsigned int *)t110) = 1;
    *((unsigned int *)t117) = 1;
    goto LAB29;

LAB30:    t122 = (t0 + 1048U);
    t123 = *((char **)t122);
    memset(t124, 0, 8);
    t122 = (t124 + 4);
    t125 = (t123 + 4);
    t126 = *((unsigned int *)t123);
    t127 = (t126 >> 31);
    t128 = (t127 & 1);
    *((unsigned int *)t124) = t128;
    t129 = *((unsigned int *)t125);
    t130 = (t129 >> 31);
    t131 = (t130 & 1);
    *((unsigned int *)t122) = t131;
    t132 = (t0 + 1928);
    t133 = (t132 + 56U);
    t134 = *((char **)t133);
    memset(t135, 0, 8);
    t136 = (t135 + 4);
    t137 = (t134 + 4);
    t138 = *((unsigned int *)t134);
    t139 = (t138 >> 31);
    t140 = (t139 & 1);
    *((unsigned int *)t135) = t140;
    t141 = *((unsigned int *)t137);
    t142 = (t141 >> 31);
    t143 = (t142 & 1);
    *((unsigned int *)t136) = t143;
    memset(t144, 0, 8);
    t145 = (t124 + 4);
    t146 = (t135 + 4);
    t147 = *((unsigned int *)t124);
    t148 = *((unsigned int *)t135);
    t149 = (t147 ^ t148);
    t150 = *((unsigned int *)t145);
    t151 = *((unsigned int *)t146);
    t152 = (t150 ^ t151);
    t153 = (t149 | t152);
    t154 = *((unsigned int *)t145);
    t155 = *((unsigned int *)t146);
    t156 = (t154 | t155);
    t157 = (~(t156));
    t158 = (t153 & t157);
    if (t158 != 0)
        goto LAB34;

LAB33:    if (t156 != 0)
        goto LAB35;

LAB36:    memset(t160, 0, 8);
    t161 = (t144 + 4);
    t162 = *((unsigned int *)t161);
    t163 = (~(t162));
    t164 = *((unsigned int *)t144);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t161) != 0)
        goto LAB39;

LAB40:    t169 = *((unsigned int *)t110);
    t170 = *((unsigned int *)t160);
    t171 = (t169 & t170);
    *((unsigned int *)t168) = t171;
    t172 = (t110 + 4);
    t173 = (t160 + 4);
    t174 = (t168 + 4);
    t175 = *((unsigned int *)t172);
    t176 = *((unsigned int *)t173);
    t177 = (t175 | t176);
    *((unsigned int *)t174) = t177;
    t178 = *((unsigned int *)t174);
    t179 = (t178 != 0);
    if (t179 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB32;

LAB34:    *((unsigned int *)t144) = 1;
    goto LAB36;

LAB35:    t159 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t159) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t160) = 1;
    goto LAB40;

LAB39:    t167 = (t160 + 4);
    *((unsigned int *)t160) = 1;
    *((unsigned int *)t167) = 1;
    goto LAB40;

LAB41:    t180 = *((unsigned int *)t168);
    t181 = *((unsigned int *)t174);
    *((unsigned int *)t168) = (t180 | t181);
    t182 = (t110 + 4);
    t183 = (t160 + 4);
    t184 = *((unsigned int *)t110);
    t185 = (~(t184));
    t186 = *((unsigned int *)t182);
    t187 = (~(t186));
    t188 = *((unsigned int *)t160);
    t189 = (~(t188));
    t190 = *((unsigned int *)t183);
    t191 = (~(t190));
    t192 = (t185 & t187);
    t193 = (t189 & t191);
    t194 = (~(t192));
    t195 = (~(t193));
    t196 = *((unsigned int *)t174);
    *((unsigned int *)t174) = (t196 & t194);
    t197 = *((unsigned int *)t174);
    *((unsigned int *)t174) = (t197 & t195);
    t198 = *((unsigned int *)t168);
    *((unsigned int *)t168) = (t198 & t194);
    t199 = *((unsigned int *)t168);
    *((unsigned int *)t168) = (t199 & t195);
    goto LAB43;

LAB44:    *((unsigned int *)t200) = 1;
    goto LAB47;

LAB46:    t207 = (t200 + 4);
    *((unsigned int *)t200) = 1;
    *((unsigned int *)t207) = 1;
    goto LAB47;

LAB48:    t213 = (t0 + 1368U);
    t214 = *((char **)t213);
    t213 = ((char*)((ng4)));
    memset(t215, 0, 8);
    t216 = (t214 + 4);
    t217 = (t213 + 4);
    t218 = *((unsigned int *)t214);
    t219 = *((unsigned int *)t213);
    t220 = (t218 ^ t219);
    t221 = *((unsigned int *)t216);
    t222 = *((unsigned int *)t217);
    t223 = (t221 ^ t222);
    t224 = (t220 | t223);
    t225 = *((unsigned int *)t216);
    t226 = *((unsigned int *)t217);
    t227 = (t225 | t226);
    t228 = (~(t227));
    t229 = (t224 & t228);
    if (t229 != 0)
        goto LAB54;

LAB51:    if (t227 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t215) = 1;

LAB54:    memset(t231, 0, 8);
    t232 = (t215 + 4);
    t233 = *((unsigned int *)t232);
    t234 = (~(t233));
    t235 = *((unsigned int *)t215);
    t236 = (t235 & t234);
    t237 = (t236 & 1U);
    if (t237 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t232) != 0)
        goto LAB57;

LAB58:    t239 = (t231 + 4);
    t240 = *((unsigned int *)t231);
    t241 = *((unsigned int *)t239);
    t242 = (t240 || t241);
    if (t242 > 0)
        goto LAB59;

LAB60:    memcpy(t287, t231, 8);

LAB61:    memset(t319, 0, 8);
    t320 = (t287 + 4);
    t321 = *((unsigned int *)t320);
    t322 = (~(t321));
    t323 = *((unsigned int *)t287);
    t324 = (t323 & t322);
    t325 = (t324 & 1U);
    if (t325 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t320) != 0)
        goto LAB75;

LAB76:    t327 = (t319 + 4);
    t328 = *((unsigned int *)t319);
    t329 = *((unsigned int *)t327);
    t330 = (t328 || t329);
    if (t330 > 0)
        goto LAB77;

LAB78:    memcpy(t377, t319, 8);

LAB79:    memset(t409, 0, 8);
    t410 = (t377 + 4);
    t411 = *((unsigned int *)t410);
    t412 = (~(t411));
    t413 = *((unsigned int *)t377);
    t414 = (t413 & t412);
    t415 = (t414 & 1U);
    if (t415 != 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t410) != 0)
        goto LAB93;

LAB94:    t418 = *((unsigned int *)t200);
    t419 = *((unsigned int *)t409);
    t420 = (t418 | t419);
    *((unsigned int *)t417) = t420;
    t421 = (t200 + 4);
    t422 = (t409 + 4);
    t423 = (t417 + 4);
    t424 = *((unsigned int *)t421);
    t425 = *((unsigned int *)t422);
    t426 = (t424 | t425);
    *((unsigned int *)t423) = t426;
    t427 = *((unsigned int *)t423);
    t428 = (t427 != 0);
    if (t428 == 1)
        goto LAB95;

LAB96:
LAB97:    goto LAB50;

LAB53:    t230 = (t215 + 4);
    *((unsigned int *)t215) = 1;
    *((unsigned int *)t230) = 1;
    goto LAB54;

LAB55:    *((unsigned int *)t231) = 1;
    goto LAB58;

LAB57:    t238 = (t231 + 4);
    *((unsigned int *)t231) = 1;
    *((unsigned int *)t238) = 1;
    goto LAB58;

LAB59:    t243 = (t0 + 1048U);
    t244 = *((char **)t243);
    memset(t245, 0, 8);
    t243 = (t245 + 4);
    t246 = (t244 + 4);
    t247 = *((unsigned int *)t244);
    t248 = (t247 >> 31);
    t249 = (t248 & 1);
    *((unsigned int *)t245) = t249;
    t250 = *((unsigned int *)t246);
    t251 = (t250 >> 31);
    t252 = (t251 & 1);
    *((unsigned int *)t243) = t252;
    t253 = (t0 + 1208U);
    t254 = *((char **)t253);
    memset(t255, 0, 8);
    t253 = (t255 + 4);
    t256 = (t254 + 4);
    t257 = *((unsigned int *)t254);
    t258 = (t257 >> 31);
    t259 = (t258 & 1);
    *((unsigned int *)t255) = t259;
    t260 = *((unsigned int *)t256);
    t261 = (t260 >> 31);
    t262 = (t261 & 1);
    *((unsigned int *)t253) = t262;
    memset(t263, 0, 8);
    t264 = (t245 + 4);
    t265 = (t255 + 4);
    t266 = *((unsigned int *)t245);
    t267 = *((unsigned int *)t255);
    t268 = (t266 ^ t267);
    t269 = *((unsigned int *)t264);
    t270 = *((unsigned int *)t265);
    t271 = (t269 ^ t270);
    t272 = (t268 | t271);
    t273 = *((unsigned int *)t264);
    t274 = *((unsigned int *)t265);
    t275 = (t273 | t274);
    t276 = (~(t275));
    t277 = (t272 & t276);
    if (t277 != 0)
        goto LAB63;

LAB62:    if (t275 != 0)
        goto LAB64;

LAB65:    memset(t279, 0, 8);
    t280 = (t263 + 4);
    t281 = *((unsigned int *)t280);
    t282 = (~(t281));
    t283 = *((unsigned int *)t263);
    t284 = (t283 & t282);
    t285 = (t284 & 1U);
    if (t285 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t280) != 0)
        goto LAB68;

LAB69:    t288 = *((unsigned int *)t231);
    t289 = *((unsigned int *)t279);
    t290 = (t288 & t289);
    *((unsigned int *)t287) = t290;
    t291 = (t231 + 4);
    t292 = (t279 + 4);
    t293 = (t287 + 4);
    t294 = *((unsigned int *)t291);
    t295 = *((unsigned int *)t292);
    t296 = (t294 | t295);
    *((unsigned int *)t293) = t296;
    t297 = *((unsigned int *)t293);
    t298 = (t297 != 0);
    if (t298 == 1)
        goto LAB70;

LAB71:
LAB72:    goto LAB61;

LAB63:    *((unsigned int *)t263) = 1;
    goto LAB65;

LAB64:    t278 = (t263 + 4);
    *((unsigned int *)t263) = 1;
    *((unsigned int *)t278) = 1;
    goto LAB65;

LAB66:    *((unsigned int *)t279) = 1;
    goto LAB69;

LAB68:    t286 = (t279 + 4);
    *((unsigned int *)t279) = 1;
    *((unsigned int *)t286) = 1;
    goto LAB69;

LAB70:    t299 = *((unsigned int *)t287);
    t300 = *((unsigned int *)t293);
    *((unsigned int *)t287) = (t299 | t300);
    t301 = (t231 + 4);
    t302 = (t279 + 4);
    t303 = *((unsigned int *)t231);
    t304 = (~(t303));
    t305 = *((unsigned int *)t301);
    t306 = (~(t305));
    t307 = *((unsigned int *)t279);
    t308 = (~(t307));
    t309 = *((unsigned int *)t302);
    t310 = (~(t309));
    t311 = (t304 & t306);
    t312 = (t308 & t310);
    t313 = (~(t311));
    t314 = (~(t312));
    t315 = *((unsigned int *)t293);
    *((unsigned int *)t293) = (t315 & t313);
    t316 = *((unsigned int *)t293);
    *((unsigned int *)t293) = (t316 & t314);
    t317 = *((unsigned int *)t287);
    *((unsigned int *)t287) = (t317 & t313);
    t318 = *((unsigned int *)t287);
    *((unsigned int *)t287) = (t318 & t314);
    goto LAB72;

LAB73:    *((unsigned int *)t319) = 1;
    goto LAB76;

LAB75:    t326 = (t319 + 4);
    *((unsigned int *)t319) = 1;
    *((unsigned int *)t326) = 1;
    goto LAB76;

LAB77:    t331 = (t0 + 1048U);
    t332 = *((char **)t331);
    memset(t333, 0, 8);
    t331 = (t333 + 4);
    t334 = (t332 + 4);
    t335 = *((unsigned int *)t332);
    t336 = (t335 >> 31);
    t337 = (t336 & 1);
    *((unsigned int *)t333) = t337;
    t338 = *((unsigned int *)t334);
    t339 = (t338 >> 31);
    t340 = (t339 & 1);
    *((unsigned int *)t331) = t340;
    t341 = (t0 + 1928);
    t342 = (t341 + 56U);
    t343 = *((char **)t342);
    memset(t344, 0, 8);
    t345 = (t344 + 4);
    t346 = (t343 + 4);
    t347 = *((unsigned int *)t343);
    t348 = (t347 >> 31);
    t349 = (t348 & 1);
    *((unsigned int *)t344) = t349;
    t350 = *((unsigned int *)t346);
    t351 = (t350 >> 31);
    t352 = (t351 & 1);
    *((unsigned int *)t345) = t352;
    memset(t353, 0, 8);
    t354 = (t333 + 4);
    t355 = (t344 + 4);
    t356 = *((unsigned int *)t333);
    t357 = *((unsigned int *)t344);
    t358 = (t356 ^ t357);
    t359 = *((unsigned int *)t354);
    t360 = *((unsigned int *)t355);
    t361 = (t359 ^ t360);
    t362 = (t358 | t361);
    t363 = *((unsigned int *)t354);
    t364 = *((unsigned int *)t355);
    t365 = (t363 | t364);
    t366 = (~(t365));
    t367 = (t362 & t366);
    if (t367 != 0)
        goto LAB81;

LAB80:    if (t365 != 0)
        goto LAB82;

LAB83:    memset(t369, 0, 8);
    t370 = (t353 + 4);
    t371 = *((unsigned int *)t370);
    t372 = (~(t371));
    t373 = *((unsigned int *)t353);
    t374 = (t373 & t372);
    t375 = (t374 & 1U);
    if (t375 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t370) != 0)
        goto LAB86;

LAB87:    t378 = *((unsigned int *)t319);
    t379 = *((unsigned int *)t369);
    t380 = (t378 & t379);
    *((unsigned int *)t377) = t380;
    t381 = (t319 + 4);
    t382 = (t369 + 4);
    t383 = (t377 + 4);
    t384 = *((unsigned int *)t381);
    t385 = *((unsigned int *)t382);
    t386 = (t384 | t385);
    *((unsigned int *)t383) = t386;
    t387 = *((unsigned int *)t383);
    t388 = (t387 != 0);
    if (t388 == 1)
        goto LAB88;

LAB89:
LAB90:    goto LAB79;

LAB81:    *((unsigned int *)t353) = 1;
    goto LAB83;

LAB82:    t368 = (t353 + 4);
    *((unsigned int *)t353) = 1;
    *((unsigned int *)t368) = 1;
    goto LAB83;

LAB84:    *((unsigned int *)t369) = 1;
    goto LAB87;

LAB86:    t376 = (t369 + 4);
    *((unsigned int *)t369) = 1;
    *((unsigned int *)t376) = 1;
    goto LAB87;

LAB88:    t389 = *((unsigned int *)t377);
    t390 = *((unsigned int *)t383);
    *((unsigned int *)t377) = (t389 | t390);
    t391 = (t319 + 4);
    t392 = (t369 + 4);
    t393 = *((unsigned int *)t319);
    t394 = (~(t393));
    t395 = *((unsigned int *)t391);
    t396 = (~(t395));
    t397 = *((unsigned int *)t369);
    t398 = (~(t397));
    t399 = *((unsigned int *)t392);
    t400 = (~(t399));
    t401 = (t394 & t396);
    t402 = (t398 & t400);
    t403 = (~(t401));
    t404 = (~(t402));
    t405 = *((unsigned int *)t383);
    *((unsigned int *)t383) = (t405 & t403);
    t406 = *((unsigned int *)t383);
    *((unsigned int *)t383) = (t406 & t404);
    t407 = *((unsigned int *)t377);
    *((unsigned int *)t377) = (t407 & t403);
    t408 = *((unsigned int *)t377);
    *((unsigned int *)t377) = (t408 & t404);
    goto LAB90;

LAB91:    *((unsigned int *)t409) = 1;
    goto LAB94;

LAB93:    t416 = (t409 + 4);
    *((unsigned int *)t409) = 1;
    *((unsigned int *)t416) = 1;
    goto LAB94;

LAB95:    t429 = *((unsigned int *)t417);
    t430 = *((unsigned int *)t423);
    *((unsigned int *)t417) = (t429 | t430);
    t431 = (t200 + 4);
    t432 = (t409 + 4);
    t433 = *((unsigned int *)t431);
    t434 = (~(t433));
    t435 = *((unsigned int *)t200);
    t436 = (t435 & t434);
    t437 = *((unsigned int *)t432);
    t438 = (~(t437));
    t439 = *((unsigned int *)t409);
    t440 = (t439 & t438);
    t441 = (~(t436));
    t442 = (~(t440));
    t443 = *((unsigned int *)t423);
    *((unsigned int *)t423) = (t443 & t441);
    t444 = *((unsigned int *)t423);
    *((unsigned int *)t423) = (t444 & t442);
    goto LAB97;

LAB98:    *((unsigned int *)t4) = 1;
    goto LAB101;

LAB100:    t451 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t451) = 1;
    goto LAB101;

LAB102:    t456 = ((char*)((ng6)));
    goto LAB103;

LAB104:    t461 = ((char*)((ng0)));
    goto LAB105;

LAB106:    xsi_vlog_unsigned_bit_combine(t3, 1, t456, 1, t461, 1);
    goto LAB110;

LAB108:    memcpy(t3, t456, 8);
    goto LAB110;

}


extern void work_m_00000000004109949807_0886308060_init()
{
	static char *pe[] = {(void *)Initial_11_0,(void *)Always_15_1,(void *)Cont_39_2};
	xsi_register_didat("work_m_00000000004109949807_0886308060", "isim/testmipsmine.exe.sim/work/m_00000000004109949807_0886308060.didat");
	xsi_register_executes(pe);
}
