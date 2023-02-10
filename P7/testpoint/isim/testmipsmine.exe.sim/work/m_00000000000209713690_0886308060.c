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
    t2 = (t0 + 2248);
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

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4480);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = ((char*)((ng0)));
    t5 = (t0 + 2248);
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
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB37:    goto LAB2;

LAB7:
LAB38:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB9:
LAB39:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB11:
LAB40:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB37;

LAB13:
LAB41:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2248);
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

LAB55:    t29 = (t0 + 2248);
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

LAB74:    t32 = (t0 + 2248);
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
LAB78:    t29 = (t0 + 2248);
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
LAB82:    t29 = (t0 + 2248);
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
    t31 = (t0 + 2248);
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
LAB92:    t23 = (t0 + 2248);
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
    t19 = (t0 + 2248);
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
    t19 = (t0 + 2248);
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
    t19 = (t0 + 2248);
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
    t19 = (t0 + 2248);
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

static void Cont_41_2(char *t0)
{
    char t3[16];
    char t6[8];
    char t14[16];
    char t18[8];
    char t26[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    xsi_vlogtype_concat(t3, 33, 33, 2U, t6, 1, t4, 32);
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    t15 = (t0 + 1208U);
    t17 = *((char **)t15);
    memset(t18, 0, 8);
    t15 = (t18 + 4);
    t19 = (t17 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 31);
    t22 = (t21 & 1);
    *((unsigned int *)t18) = t22;
    t23 = *((unsigned int *)t19);
    t24 = (t23 >> 31);
    t25 = (t24 & 1);
    *((unsigned int *)t15) = t25;
    xsi_vlogtype_concat(t14, 33, 33, 2U, t18, 1, t16, 32);
    xsi_vlog_unsigned_add(t26, 33, t3, 33, t14, 33);
    t27 = (t0 + 4608);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    xsi_vlog_bit_copy(t31, 0, t26, 0, 33);
    xsi_driver_vfirst_trans(t27, 0, 32);
    t32 = (t0 + 4496);
    *((int *)t32) = 1;

LAB1:    return;
}

static void Cont_42_3(char *t0)
{
    char t3[16];
    char t6[8];
    char t14[16];
    char t18[8];
    char t26[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    xsi_vlogtype_concat(t3, 33, 33, 2U, t6, 1, t4, 32);
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    t15 = (t0 + 1208U);
    t17 = *((char **)t15);
    memset(t18, 0, 8);
    t15 = (t18 + 4);
    t19 = (t17 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 31);
    t22 = (t21 & 1);
    *((unsigned int *)t18) = t22;
    t23 = *((unsigned int *)t19);
    t24 = (t23 >> 31);
    t25 = (t24 & 1);
    *((unsigned int *)t15) = t25;
    xsi_vlogtype_concat(t14, 33, 33, 2U, t18, 1, t16, 32);
    xsi_vlog_unsigned_minus(t26, 33, t3, 33, t14, 33);
    t27 = (t0 + 4672);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    xsi_vlog_bit_copy(t31, 0, t26, 0, 33);
    xsi_driver_vfirst_trans(t27, 0, 32);
    t32 = (t0 + 4512);
    *((int *)t32) = 1;

LAB1:    return;
}

static void Cont_44_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t36[8];
    char t46[8];
    char t55[8];
    char t71[8];
    char t79[8];
    char t111[8];
    char t126[8];
    char t142[8];
    char t156[8];
    char t166[8];
    char t175[8];
    char t191[8];
    char t199[8];
    char t231[8];
    char t239[8];
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
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t56;
    char *t57;
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
    unsigned int t69;
    char *t70;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    int t103;
    int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
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
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    char *t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    char *t165;
    char *t167;
    char *t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    char *t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    char *t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    char *t203;
    char *t204;
    char *t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t213;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    int t223;
    int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    char *t243;
    char *t244;
    char *t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    char *t253;
    char *t254;
    unsigned int t255;
    unsigned int t256;
    unsigned int t257;
    int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    char *t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    char *t273;
    char *t274;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    char *t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    char *t283;
    char *t284;
    char *t285;
    char *t286;
    char *t287;
    char *t288;
    unsigned int t289;
    unsigned int t290;
    char *t291;
    unsigned int t292;
    unsigned int t293;
    char *t294;
    unsigned int t295;
    unsigned int t296;
    char *t297;

LAB0:    t1 = (t0 + 4160U);
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

LAB13:    memcpy(t79, t22, 8);

LAB14:    memset(t111, 0, 8);
    t112 = (t79 + 4);
    t113 = *((unsigned int *)t112);
    t114 = (~(t113));
    t115 = *((unsigned int *)t79);
    t116 = (t115 & t114);
    t117 = (t116 & 1U);
    if (t117 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t112) != 0)
        goto LAB28;

LAB29:    t119 = (t111 + 4);
    t120 = *((unsigned int *)t111);
    t121 = (!(t120));
    t122 = *((unsigned int *)t119);
    t123 = (t121 || t122);
    if (t123 > 0)
        goto LAB30;

LAB31:    memcpy(t239, t111, 8);

LAB32:    memset(t4, 0, 8);
    t267 = (t239 + 4);
    t268 = *((unsigned int *)t267);
    t269 = (~(t268));
    t270 = *((unsigned int *)t239);
    t271 = (t270 & t269);
    t272 = (t271 & 1U);
    if (t272 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t267) != 0)
        goto LAB64;

LAB65:    t274 = (t4 + 4);
    t275 = *((unsigned int *)t4);
    t276 = *((unsigned int *)t274);
    t277 = (t275 || t276);
    if (t277 > 0)
        goto LAB66;

LAB67:    t279 = *((unsigned int *)t4);
    t280 = (~(t279));
    t281 = *((unsigned int *)t274);
    t282 = (t280 || t281);
    if (t282 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t274) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t4) > 0)
        goto LAB72;

LAB73:    memcpy(t3, t283, 8);

LAB74:    t284 = (t0 + 4736);
    t285 = (t284 + 56U);
    t286 = *((char **)t285);
    t287 = (t286 + 56U);
    t288 = *((char **)t287);
    memset(t288, 0, 8);
    t289 = 1U;
    t290 = t289;
    t291 = (t3 + 4);
    t292 = *((unsigned int *)t3);
    t289 = (t289 & t292);
    t293 = *((unsigned int *)t291);
    t290 = (t290 & t293);
    t294 = (t288 + 4);
    t295 = *((unsigned int *)t288);
    *((unsigned int *)t288) = (t295 | t289);
    t296 = *((unsigned int *)t294);
    *((unsigned int *)t294) = (t296 | t290);
    xsi_driver_vfirst_trans(t284, 0, 0);
    t297 = (t0 + 4528);
    *((int *)t297) = 1;

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

LAB12:    t34 = (t0 + 1688U);
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
    t44 = (t0 + 1688U);
    t45 = *((char **)t44);
    memset(t46, 0, 8);
    t44 = (t46 + 4);
    t47 = (t45 + 8);
    t48 = (t45 + 12);
    t49 = *((unsigned int *)t47);
    t50 = (t49 >> 0);
    t51 = (t50 & 1);
    *((unsigned int *)t46) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 >> 0);
    t54 = (t53 & 1);
    *((unsigned int *)t44) = t54;
    memset(t55, 0, 8);
    t56 = (t36 + 4);
    t57 = (t46 + 4);
    t58 = *((unsigned int *)t36);
    t59 = *((unsigned int *)t46);
    t60 = (t58 ^ t59);
    t61 = *((unsigned int *)t56);
    t62 = *((unsigned int *)t57);
    t63 = (t61 ^ t62);
    t64 = (t60 | t63);
    t65 = *((unsigned int *)t56);
    t66 = *((unsigned int *)t57);
    t67 = (t65 | t66);
    t68 = (~(t67));
    t69 = (t64 & t68);
    if (t69 != 0)
        goto LAB16;

LAB15:    if (t67 != 0)
        goto LAB17;

LAB18:    memset(t71, 0, 8);
    t72 = (t55 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t55);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t72) != 0)
        goto LAB21;

LAB22:    t80 = *((unsigned int *)t22);
    t81 = *((unsigned int *)t71);
    t82 = (t80 & t81);
    *((unsigned int *)t79) = t82;
    t83 = (t22 + 4);
    t84 = (t71 + 4);
    t85 = (t79 + 4);
    t86 = *((unsigned int *)t83);
    t87 = *((unsigned int *)t84);
    t88 = (t86 | t87);
    *((unsigned int *)t85) = t88;
    t89 = *((unsigned int *)t85);
    t90 = (t89 != 0);
    if (t90 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB16:    *((unsigned int *)t55) = 1;
    goto LAB18;

LAB17:    t70 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t71) = 1;
    goto LAB22;

LAB21:    t78 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB22;

LAB23:    t91 = *((unsigned int *)t79);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t79) = (t91 | t92);
    t93 = (t22 + 4);
    t94 = (t71 + 4);
    t95 = *((unsigned int *)t22);
    t96 = (~(t95));
    t97 = *((unsigned int *)t93);
    t98 = (~(t97));
    t99 = *((unsigned int *)t71);
    t100 = (~(t99));
    t101 = *((unsigned int *)t94);
    t102 = (~(t101));
    t103 = (t96 & t98);
    t104 = (t100 & t102);
    t105 = (~(t103));
    t106 = (~(t104));
    t107 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t107 & t105);
    t108 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t108 & t106);
    t109 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t109 & t105);
    t110 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t110 & t106);
    goto LAB25;

LAB26:    *((unsigned int *)t111) = 1;
    goto LAB29;

LAB28:    t118 = (t111 + 4);
    *((unsigned int *)t111) = 1;
    *((unsigned int *)t118) = 1;
    goto LAB29;

LAB30:    t124 = (t0 + 1368U);
    t125 = *((char **)t124);
    t124 = ((char*)((ng4)));
    memset(t126, 0, 8);
    t127 = (t125 + 4);
    t128 = (t124 + 4);
    t129 = *((unsigned int *)t125);
    t130 = *((unsigned int *)t124);
    t131 = (t129 ^ t130);
    t132 = *((unsigned int *)t127);
    t133 = *((unsigned int *)t128);
    t134 = (t132 ^ t133);
    t135 = (t131 | t134);
    t136 = *((unsigned int *)t127);
    t137 = *((unsigned int *)t128);
    t138 = (t136 | t137);
    t139 = (~(t138));
    t140 = (t135 & t139);
    if (t140 != 0)
        goto LAB36;

LAB33:    if (t138 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t126) = 1;

LAB36:    memset(t142, 0, 8);
    t143 = (t126 + 4);
    t144 = *((unsigned int *)t143);
    t145 = (~(t144));
    t146 = *((unsigned int *)t126);
    t147 = (t146 & t145);
    t148 = (t147 & 1U);
    if (t148 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t143) != 0)
        goto LAB39;

LAB40:    t150 = (t142 + 4);
    t151 = *((unsigned int *)t142);
    t152 = *((unsigned int *)t150);
    t153 = (t151 || t152);
    if (t153 > 0)
        goto LAB41;

LAB42:    memcpy(t199, t142, 8);

LAB43:    memset(t231, 0, 8);
    t232 = (t199 + 4);
    t233 = *((unsigned int *)t232);
    t234 = (~(t233));
    t235 = *((unsigned int *)t199);
    t236 = (t235 & t234);
    t237 = (t236 & 1U);
    if (t237 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t232) != 0)
        goto LAB57;

LAB58:    t240 = *((unsigned int *)t111);
    t241 = *((unsigned int *)t231);
    t242 = (t240 | t241);
    *((unsigned int *)t239) = t242;
    t243 = (t111 + 4);
    t244 = (t231 + 4);
    t245 = (t239 + 4);
    t246 = *((unsigned int *)t243);
    t247 = *((unsigned int *)t244);
    t248 = (t246 | t247);
    *((unsigned int *)t245) = t248;
    t249 = *((unsigned int *)t245);
    t250 = (t249 != 0);
    if (t250 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB32;

LAB35:    t141 = (t126 + 4);
    *((unsigned int *)t126) = 1;
    *((unsigned int *)t141) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t142) = 1;
    goto LAB40;

LAB39:    t149 = (t142 + 4);
    *((unsigned int *)t142) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB40;

LAB41:    t154 = (t0 + 1848U);
    t155 = *((char **)t154);
    memset(t156, 0, 8);
    t154 = (t156 + 4);
    t157 = (t155 + 4);
    t158 = *((unsigned int *)t155);
    t159 = (t158 >> 31);
    t160 = (t159 & 1);
    *((unsigned int *)t156) = t160;
    t161 = *((unsigned int *)t157);
    t162 = (t161 >> 31);
    t163 = (t162 & 1);
    *((unsigned int *)t154) = t163;
    t164 = (t0 + 1848U);
    t165 = *((char **)t164);
    memset(t166, 0, 8);
    t164 = (t166 + 4);
    t167 = (t165 + 8);
    t168 = (t165 + 12);
    t169 = *((unsigned int *)t167);
    t170 = (t169 >> 0);
    t171 = (t170 & 1);
    *((unsigned int *)t166) = t171;
    t172 = *((unsigned int *)t168);
    t173 = (t172 >> 0);
    t174 = (t173 & 1);
    *((unsigned int *)t164) = t174;
    memset(t175, 0, 8);
    t176 = (t156 + 4);
    t177 = (t166 + 4);
    t178 = *((unsigned int *)t156);
    t179 = *((unsigned int *)t166);
    t180 = (t178 ^ t179);
    t181 = *((unsigned int *)t176);
    t182 = *((unsigned int *)t177);
    t183 = (t181 ^ t182);
    t184 = (t180 | t183);
    t185 = *((unsigned int *)t176);
    t186 = *((unsigned int *)t177);
    t187 = (t185 | t186);
    t188 = (~(t187));
    t189 = (t184 & t188);
    if (t189 != 0)
        goto LAB45;

LAB44:    if (t187 != 0)
        goto LAB46;

LAB47:    memset(t191, 0, 8);
    t192 = (t175 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t175);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t192) != 0)
        goto LAB50;

LAB51:    t200 = *((unsigned int *)t142);
    t201 = *((unsigned int *)t191);
    t202 = (t200 & t201);
    *((unsigned int *)t199) = t202;
    t203 = (t142 + 4);
    t204 = (t191 + 4);
    t205 = (t199 + 4);
    t206 = *((unsigned int *)t203);
    t207 = *((unsigned int *)t204);
    t208 = (t206 | t207);
    *((unsigned int *)t205) = t208;
    t209 = *((unsigned int *)t205);
    t210 = (t209 != 0);
    if (t210 == 1)
        goto LAB52;

LAB53:
LAB54:    goto LAB43;

LAB45:    *((unsigned int *)t175) = 1;
    goto LAB47;

LAB46:    t190 = (t175 + 4);
    *((unsigned int *)t175) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB47;

LAB48:    *((unsigned int *)t191) = 1;
    goto LAB51;

LAB50:    t198 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB51;

LAB52:    t211 = *((unsigned int *)t199);
    t212 = *((unsigned int *)t205);
    *((unsigned int *)t199) = (t211 | t212);
    t213 = (t142 + 4);
    t214 = (t191 + 4);
    t215 = *((unsigned int *)t142);
    t216 = (~(t215));
    t217 = *((unsigned int *)t213);
    t218 = (~(t217));
    t219 = *((unsigned int *)t191);
    t220 = (~(t219));
    t221 = *((unsigned int *)t214);
    t222 = (~(t221));
    t223 = (t216 & t218);
    t224 = (t220 & t222);
    t225 = (~(t223));
    t226 = (~(t224));
    t227 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t227 & t225);
    t228 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t228 & t226);
    t229 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t229 & t225);
    t230 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t230 & t226);
    goto LAB54;

LAB55:    *((unsigned int *)t231) = 1;
    goto LAB58;

LAB57:    t238 = (t231 + 4);
    *((unsigned int *)t231) = 1;
    *((unsigned int *)t238) = 1;
    goto LAB58;

LAB59:    t251 = *((unsigned int *)t239);
    t252 = *((unsigned int *)t245);
    *((unsigned int *)t239) = (t251 | t252);
    t253 = (t111 + 4);
    t254 = (t231 + 4);
    t255 = *((unsigned int *)t253);
    t256 = (~(t255));
    t257 = *((unsigned int *)t111);
    t258 = (t257 & t256);
    t259 = *((unsigned int *)t254);
    t260 = (~(t259));
    t261 = *((unsigned int *)t231);
    t262 = (t261 & t260);
    t263 = (~(t258));
    t264 = (~(t262));
    t265 = *((unsigned int *)t245);
    *((unsigned int *)t245) = (t265 & t263);
    t266 = *((unsigned int *)t245);
    *((unsigned int *)t245) = (t266 & t264);
    goto LAB61;

LAB62:    *((unsigned int *)t4) = 1;
    goto LAB65;

LAB64:    t273 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t273) = 1;
    goto LAB65;

LAB66:    t278 = ((char*)((ng6)));
    goto LAB67;

LAB68:    t283 = ((char*)((ng0)));
    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t3, 1, t278, 1, t283, 1);
    goto LAB74;

LAB72:    memcpy(t3, t278, 8);
    goto LAB74;

}


extern void work_m_00000000000209713690_0886308060_init()
{
	static char *pe[] = {(void *)Initial_11_0,(void *)Always_15_1,(void *)Cont_41_2,(void *)Cont_42_3,(void *)Cont_44_4};
	xsi_register_didat("work_m_00000000000209713690_0886308060", "isim/testmipsmine.exe.sim/work/m_00000000000209713690_0886308060.didat");
	xsi_register_executes(pe);
}
