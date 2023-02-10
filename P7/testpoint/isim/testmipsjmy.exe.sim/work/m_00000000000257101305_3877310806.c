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
static unsigned int ng2[] = {12288U, 0U};
static unsigned int ng3[] = {16384U, 0U};
static unsigned int ng4[] = {12448U, 0U};
static int ng5[] = {4, 0};
static unsigned int ng6[] = {32544U, 0U};
static int ng7[] = {1, 0};
static int ng8[] = {2, 0};
static unsigned int ng9[] = {16768U, 0U};
static int ng10[] = {5, 0};



static void Cont_53_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 7328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5048U);
    t4 = *((char **)t2);
    t2 = (t0 + 5208U);
    t5 = *((char **)t2);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng0)));
    xsi_vlogtype_concat(t3, 6, 6, 4U, t2, 3, t6, 1, t5, 1, t4, 1);
    t7 = (t0 + 9048);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 63U;
    t13 = t12;
    t14 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 5);
    t20 = (t0 + 8888);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_71_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9112);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 8904);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_72_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 8920);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_73_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 8072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 8936);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_74_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 8320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9304);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 8952);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_138_5(char *t0)
{
    char t13[8];
    char t14[8];
    char t15[8];
    char t17[8];
    char t28[8];
    char t32[8];
    char t40[8];
    char t92[8];
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
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
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
    int t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t93;

LAB0:    t1 = (t0 + 8568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 8968);
    *((int *)t2) = 1;
    t3 = (t0 + 8600);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
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
LAB10:    t2 = ((char*)((ng1)));
    t3 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    t2 = (t0 + 5608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB12;

LAB11:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB12;

LAB15:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB13;

LAB14:    memset(t17, 0, 8);
    t18 = (t15 + 4);
    t6 = *((unsigned int *)t18);
    t7 = (~(t6));
    t8 = *((unsigned int *)t15);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t18) != 0)
        goto LAB18;

LAB19:    t20 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB20;

LAB21:    memcpy(t40, t17, 8);

LAB22:    memset(t14, 0, 8);
    t72 = (t40 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t40);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t72) != 0)
        goto LAB37;

LAB38:    t79 = (t14 + 4);
    t80 = *((unsigned int *)t14);
    t81 = *((unsigned int *)t79);
    t82 = (t80 || t81);
    if (t82 > 0)
        goto LAB39;

LAB40:    t84 = *((unsigned int *)t14);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t79) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t14) > 0)
        goto LAB45;

LAB46:    memcpy(t13, t92, 8);

LAB47:    t93 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t93, t13, 0, 0, 32, 0LL);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB48;

LAB49:
LAB50:    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB52;

LAB53:
LAB54:    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB64;

LAB65:
LAB66:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng1)));
    t12 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB8;

LAB12:    t16 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB14;

LAB13:    *((unsigned int *)t15) = 1;
    goto LAB14;

LAB16:    *((unsigned int *)t17) = 1;
    goto LAB19;

LAB18:    t19 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB19;

LAB20:    t24 = (t0 + 5608);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng4)));
    memset(t28, 0, 8);
    t29 = (t26 + 4);
    if (*((unsigned int *)t29) != 0)
        goto LAB24;

LAB23:    t30 = (t27 + 4);
    if (*((unsigned int *)t30) != 0)
        goto LAB24;

LAB27:    if (*((unsigned int *)t26) > *((unsigned int *)t27))
        goto LAB25;

LAB26:    memset(t32, 0, 8);
    t33 = (t28 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t28);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t33) != 0)
        goto LAB30;

LAB31:    t41 = *((unsigned int *)t17);
    t42 = *((unsigned int *)t32);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t44 = (t17 + 4);
    t45 = (t32 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB22;

LAB24:    t31 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB26;

LAB25:    *((unsigned int *)t28) = 1;
    goto LAB26;

LAB28:    *((unsigned int *)t32) = 1;
    goto LAB31;

LAB30:    t39 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB31;

LAB32:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t17 + 4);
    t55 = (t32 + 4);
    t56 = *((unsigned int *)t17);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (~(t58));
    t60 = *((unsigned int *)t32);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & t66);
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB34;

LAB35:    *((unsigned int *)t14) = 1;
    goto LAB38;

LAB37:    t78 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB38;

LAB39:    t83 = ((char*)((ng2)));
    goto LAB40;

LAB41:    t88 = (t0 + 5608);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    t91 = ((char*)((ng5)));
    memset(t92, 0, 8);
    xsi_vlog_unsigned_add(t92, 32, t90, 32, t91, 32);
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t13, 32, t83, 32, t92, 32);
    goto LAB47;

LAB45:    memcpy(t13, t83, 8);
    goto LAB47;

LAB48:
LAB51:    t4 = ((char*)((ng6)));
    t5 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    t2 = (t0 + 5608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB50;

LAB52:
LAB55:    t11 = (t0 + 5928);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t18 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t19 = (t16 + 4);
    t20 = (t18 + 4);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t18);
    t23 = (t21 ^ t22);
    t34 = *((unsigned int *)t19);
    t35 = *((unsigned int *)t20);
    t36 = (t34 ^ t35);
    t37 = (t23 | t36);
    t38 = *((unsigned int *)t19);
    t41 = *((unsigned int *)t20);
    t42 = (t38 | t41);
    t43 = (~(t42));
    t47 = (t37 & t43);
    if (t47 != 0)
        goto LAB59;

LAB56:    if (t42 != 0)
        goto LAB58;

LAB57:    *((unsigned int *)t13) = 1;

LAB59:    t25 = (t13 + 4);
    t48 = *((unsigned int *)t25);
    t49 = (~(t48));
    t50 = *((unsigned int *)t13);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB60;

LAB61:
LAB62:    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 32, 0LL);
    goto LAB54;

LAB58:    t24 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB59;

LAB60:
LAB63:    t26 = ((char*)((ng9)));
    t27 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 32, 0LL);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB62;

LAB64:
LAB67:    t11 = (t0 + 5768);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t18 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t19 = (t16 + 4);
    t20 = (t18 + 4);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t18);
    t23 = (t21 ^ t22);
    t34 = *((unsigned int *)t19);
    t35 = *((unsigned int *)t20);
    t36 = (t34 ^ t35);
    t37 = (t23 | t36);
    t38 = *((unsigned int *)t19);
    t41 = *((unsigned int *)t20);
    t42 = (t38 | t41);
    t43 = (~(t42));
    t47 = (t37 & t43);
    if (t47 != 0)
        goto LAB71;

LAB68:    if (t42 != 0)
        goto LAB70;

LAB69:    *((unsigned int *)t13) = 1;

LAB71:    t25 = (t13 + 4);
    t48 = *((unsigned int *)t25);
    t49 = (~(t48));
    t50 = *((unsigned int *)t13);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB72;

LAB73:
LAB74:    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 32, 0LL);
    goto LAB66;

LAB70:    t24 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB71;

LAB72:
LAB75:    t26 = (t0 + 6088);
    t27 = (t26 + 56U);
    t29 = *((char **)t27);
    t30 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 32, 0LL);
    goto LAB74;

}


extern void work_m_00000000000257101305_3877310806_init()
{
	static char *pe[] = {(void *)Cont_53_0,(void *)Cont_71_1,(void *)Cont_72_2,(void *)Cont_73_3,(void *)Cont_74_4,(void *)Always_138_5};
	xsi_register_didat("work_m_00000000000257101305_3877310806", "isim/testmipsjmy.exe.sim/work/m_00000000000257101305_3877310806.didat");
	xsi_register_executes(pe);
}
