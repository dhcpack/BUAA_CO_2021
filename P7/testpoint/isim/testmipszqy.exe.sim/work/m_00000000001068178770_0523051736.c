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
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static int ng11[] = {10, 0};
static int ng12[] = {11, 0};
static int ng13[] = {12, 0};
static int ng14[] = {13, 0};
static unsigned int ng15[] = {1U, 0U};
static int ng16[] = {14, 0};
static unsigned int ng17[] = {3735928559U, 0U};



static void NetDecl_30_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 6960);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4U);
    t25 = (t0 + 6752);
    *((int *)t25) = 1;

LAB1:    return;
}

static void NetDecl_34_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng0)));
    xsi_vlogtype_concat(t3, 33, 33, 2U, t2, 1, t4, 32);
    t5 = (t0 + 7024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t5, 0, 32U);
    t10 = (t0 + 6768);
    *((int *)t10) = 1;

LAB1:    return;
}

static void NetDecl_35_2(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng0)));
    xsi_vlogtype_concat(t3, 33, 33, 2U, t2, 1, t4, 32);
    t5 = (t0 + 7088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t5, 0, 32U);
    t10 = (t0 + 6784);
    *((int *)t10) = 1;

LAB1:    return;
}

static void NetDecl_36_3(char *t0)
{
    char t3[16];
    char t6[8];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 5192U);
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
    t14 = (t0 + 7152);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_bit_copy(t18, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t14, 0, 32U);
    t19 = (t0 + 6800);
    *((int *)t19) = 1;

LAB1:    return;
}

static void NetDecl_37_4(char *t0)
{
    char t3[16];
    char t6[8];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 5440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
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
    t14 = (t0 + 7216);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_bit_copy(t18, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t14, 0, 32U);
    t19 = (t0 + 6816);
    *((int *)t19) = 1;

LAB1:    return;
}

static void NetDecl_38_5(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 33, t3, 33, t4, 33);
    t2 = (t0 + 7280);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 33);
    xsi_driver_vfirst_trans(t2, 0, 32U);
    t10 = (t0 + 6832);
    *((int *)t10) = 1;

LAB1:    return;
}

static void NetDecl_39_6(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_minus(t5, 33, t3, 33, t4, 33);
    t2 = (t0 + 7344);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 33);
    xsi_driver_vfirst_trans(t2, 0, 32U);
    t10 = (t0 + 6848);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_42_7(char *t0)
{
    char t5[8];
    char t17[8];
    char t26[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
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
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
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
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;

LAB0:    t1 = (t0 + 6184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t6) != 0)
        goto LAB6;

LAB7:    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB8;

LAB9:    memcpy(t34, t5, 8);

LAB10:    t66 = (t0 + 7408);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memset(t70, 0, 8);
    t71 = 1U;
    t72 = t71;
    t73 = (t34 + 4);
    t74 = *((unsigned int *)t34);
    t71 = (t71 & t74);
    t75 = *((unsigned int *)t73);
    t72 = (t72 & t75);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t77 | t71);
    t78 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t78 | t72);
    xsi_driver_vfirst_trans(t66, 0, 0);
    t79 = (t0 + 6864);
    *((int *)t79) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1688U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t19 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t19);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t18) == 0)
        goto LAB11;

LAB13:    t25 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t25) = 1;

LAB14:    memset(t26, 0, 8);
    t27 = (t17 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t17);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t27) != 0)
        goto LAB17;

LAB18:    t35 = *((unsigned int *)t5);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t5 + 4);
    t39 = (t26 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB10;

LAB11:    *((unsigned int *)t17) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t26) = 1;
    goto LAB18;

LAB17:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB18;

LAB19:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t5 + 4);
    t49 = (t26 + 4);
    t50 = *((unsigned int *)t5);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB21;

}

static void Always_44_8(char *t0)
{
    char t8[8];
    char t17[8];
    char t25[8];
    char t50[16];
    char t53[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
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
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;

LAB0:    t1 = (t0 + 6432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6880);
    *((int *)t2) = 1;
    t3 = (t0 + 6464);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = ((char*)((ng1)));
    t5 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:    t2 = ((char*)((ng17)));
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB37:    goto LAB2;

LAB7:
LAB38:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    t2 = (t0 + 2808U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 8);
    t7 = (t4 + 12);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t15 = (t0 + 2808U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    memset(t25, 0, 8);
    t26 = (t8 + 4);
    t27 = (t17 + 4);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t17);
    t30 = (t28 ^ t29);
    t31 = *((unsigned int *)t26);
    t32 = *((unsigned int *)t27);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t35 = *((unsigned int *)t26);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB40;

LAB39:    if (t37 != 0)
        goto LAB41;

LAB42:    t41 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t41, t25, 0, 0, 1, 0LL);
    goto LAB37;

LAB9:
LAB43:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    t2 = (t0 + 2968U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 8);
    t7 = (t4 + 12);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t15 = (t0 + 2968U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    memset(t25, 0, 8);
    t26 = (t8 + 4);
    t27 = (t17 + 4);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t17);
    t30 = (t28 ^ t29);
    t31 = *((unsigned int *)t26);
    t32 = *((unsigned int *)t27);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t35 = *((unsigned int *)t26);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB45;

LAB44:    if (t37 != 0)
        goto LAB46;

LAB47:    t41 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t41, t25, 0, 0, 1, 0LL);
    goto LAB37;

LAB11:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB13:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2008U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB15:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_rshift(t8, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB17:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2008U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_rshift(t8, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB19:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t25, 0, 8);
    xsi_vlog_signed_arith_rshift(t25, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t25, 0, 0, 32, 0LL);
    goto LAB37;

LAB21:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2008U);
    t7 = *((char **)t4);
    memset(t25, 0, 8);
    xsi_vlog_signed_arith_rshift(t25, 32, t5, 32, t7, 5);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t25, 0, 0, 32, 0LL);
    goto LAB37;

LAB23:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t15 = (t7 + 4);
    t16 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t15);
    t14 = (t12 | t13);
    *((unsigned int *)t16) = t14;
    t19 = *((unsigned int *)t16);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB48;

LAB49:
LAB50:    t27 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t27, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB25:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t15 = (t7 + 4);
    t16 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t15);
    t14 = (t12 | t13);
    *((unsigned int *)t16) = t14;
    t19 = *((unsigned int *)t16);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB51;

LAB52:
LAB53:    t27 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t27, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB27:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t17) = t11;
    t4 = (t5 + 4);
    t15 = (t7 + 4);
    t16 = (t17 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t15);
    t14 = (t12 | t13);
    *((unsigned int *)t16) = t14;
    t19 = *((unsigned int *)t16);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB54;

LAB55:
LAB56:    memset(t8, 0, 8);
    t27 = (t8 + 4);
    t40 = (t17 + 4);
    t36 = *((unsigned int *)t17);
    t37 = (~(t36));
    *((unsigned int *)t8) = t37;
    *((unsigned int *)t27) = 0;
    if (*((unsigned int *)t40) != 0)
        goto LAB58;

LAB57:    t46 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t46 & 4294967295U);
    t47 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t47 & 4294967295U);
    t41 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t41, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB29:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t15 = (t7 + 4);
    t16 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t15);
    t14 = (t12 | t13);
    *((unsigned int *)t16) = t14;
    t19 = *((unsigned int *)t16);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB59;

LAB60:
LAB61:    t18 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t18, t8, 0, 0, 32, 0LL);
    goto LAB37;

LAB31:
LAB62:    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB63;

LAB64:    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t53, 0, 8);
    xsi_vlog_signed_less(t53, 32, t4, 32, t5, 32);
    memset(t17, 0, 8);
    t2 = (t53 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t53);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t2) != 0)
        goto LAB81;

LAB82:    t15 = (t17 + 4);
    t14 = *((unsigned int *)t17);
    t19 = *((unsigned int *)t15);
    t20 = (t14 || t19);
    if (t20 > 0)
        goto LAB83;

LAB84:    t21 = *((unsigned int *)t17);
    t22 = (~(t21));
    t23 = *((unsigned int *)t15);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t15) > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t17) > 0)
        goto LAB89;

LAB90:    memcpy(t8, t18, 8);

LAB91:    t26 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t26, t8, 0, 0, 32, 0LL);

LAB65:    goto LAB37;

LAB33:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB37;

LAB40:    *((unsigned int *)t25) = 1;
    goto LAB42;

LAB41:    t40 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB42;

LAB45:    *((unsigned int *)t25) = 1;
    goto LAB47;

LAB46:    t40 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB47;

LAB48:    t21 = *((unsigned int *)t8);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t8) = (t21 | t22);
    t18 = (t5 + 4);
    t26 = (t7 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t28 = *((unsigned int *)t18);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t31 = (~(t30));
    t32 = *((unsigned int *)t26);
    t33 = (~(t32));
    t42 = (t24 & t29);
    t43 = (t31 & t33);
    t34 = (~(t42));
    t35 = (~(t43));
    t36 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t36 & t34);
    t37 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t37 & t35);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    t39 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t39 & t35);
    goto LAB50;

LAB51:    t21 = *((unsigned int *)t8);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t8) = (t21 | t22);
    t18 = (t5 + 4);
    t26 = (t7 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (~(t23));
    t28 = *((unsigned int *)t5);
    t42 = (t28 & t24);
    t29 = *((unsigned int *)t26);
    t30 = (~(t29));
    t31 = *((unsigned int *)t7);
    t43 = (t31 & t30);
    t32 = (~(t42));
    t33 = (~(t43));
    t34 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t34 & t32);
    t35 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t35 & t33);
    goto LAB53;

LAB54:    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t17) = (t21 | t22);
    t18 = (t5 + 4);
    t26 = (t7 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (~(t23));
    t28 = *((unsigned int *)t5);
    t42 = (t28 & t24);
    t29 = *((unsigned int *)t26);
    t30 = (~(t29));
    t31 = *((unsigned int *)t7);
    t43 = (t31 & t30);
    t32 = (~(t42));
    t33 = (~(t43));
    t34 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t34 & t32);
    t35 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t35 & t33);
    goto LAB56;

LAB58:    t38 = *((unsigned int *)t8);
    t39 = *((unsigned int *)t40);
    *((unsigned int *)t8) = (t38 | t39);
    t44 = *((unsigned int *)t27);
    t45 = *((unsigned int *)t40);
    *((unsigned int *)t27) = (t44 | t45);
    goto LAB57;

LAB59:    t21 = *((unsigned int *)t8);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t8) = (t21 | t22);
    goto LAB61;

LAB63:    t7 = (t0 + 2168U);
    t15 = *((char **)t7);
    t7 = (t0 + 2328U);
    t16 = *((char **)t7);
    xsi_vlog_unsigned_less(t50, 33, t15, 33, t16, 33);
    memset(t17, 0, 8);
    t7 = (t50 + 4);
    t14 = *((unsigned int *)t7);
    t19 = (~(t14));
    t20 = *((unsigned int *)t50);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t7) != 0)
        goto LAB68;

LAB69:    t26 = (t17 + 4);
    t23 = *((unsigned int *)t17);
    t24 = *((unsigned int *)t26);
    t28 = (t23 || t24);
    if (t28 > 0)
        goto LAB70;

LAB71:    t29 = *((unsigned int *)t17);
    t30 = (~(t29));
    t31 = *((unsigned int *)t26);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t26) > 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t17) > 0)
        goto LAB76;

LAB77:    memcpy(t8, t40, 8);

LAB78:    t41 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t41, t8, 0, 0, 32, 0LL);
    goto LAB65;

LAB66:    *((unsigned int *)t17) = 1;
    goto LAB69;

LAB68:    t18 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB69;

LAB70:    t27 = ((char*)((ng15)));
    goto LAB71;

LAB72:    t40 = ((char*)((ng0)));
    goto LAB73;

LAB74:    xsi_vlog_unsigned_bit_combine(t8, 32, t27, 32, t40, 32);
    goto LAB78;

LAB76:    memcpy(t8, t27, 8);
    goto LAB78;

LAB79:    *((unsigned int *)t17) = 1;
    goto LAB82;

LAB81:    t7 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB82;

LAB83:    t16 = ((char*)((ng15)));
    goto LAB84;

LAB85:    t18 = ((char*)((ng0)));
    goto LAB86;

LAB87:    xsi_vlog_unsigned_bit_combine(t8, 32, t16, 32, t18, 32);
    goto LAB91;

LAB89:    memcpy(t8, t16, 8);
    goto LAB91;

}


extern void work_m_00000000001068178770_0523051736_init()
{
	static char *pe[] = {(void *)NetDecl_30_0,(void *)NetDecl_34_1,(void *)NetDecl_35_2,(void *)NetDecl_36_3,(void *)NetDecl_37_4,(void *)NetDecl_38_5,(void *)NetDecl_39_6,(void *)Cont_42_7,(void *)Always_44_8};
	xsi_register_didat("work_m_00000000001068178770_0523051736", "isim/testmipszqy.exe.sim/work/m_00000000001068178770_0523051736.didat");
	xsi_register_executes(pe);
}
