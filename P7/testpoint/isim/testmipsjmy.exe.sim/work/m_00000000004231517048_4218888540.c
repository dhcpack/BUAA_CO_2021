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
static unsigned int ng0[] = {1U, 0U};
static unsigned int ng1[] = {16768U, 0U};
static int ng2[] = {0, 0};



static void Always_40_0(char *t0)
{
    char t7[8];
    char t10[8];
    char t44[8];
    char t45[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
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
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = (t0 + 1048U);
    t6 = *((char **)t4);
    t4 = ((char*)((ng0)));
    memset(t7, 0, 8);
    if (*((unsigned int *)t6) != *((unsigned int *)t4))
        goto LAB8;

LAB6:    t8 = (t6 + 4);
    t9 = (t4 + 4);
    if (*((unsigned int *)t8) != *((unsigned int *)t9))
        goto LAB8;

LAB7:    *((unsigned int *)t7) = 1;

LAB8:    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = (t5 + 4);
    t15 = (t7 + 4);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t15);
    t19 = (t17 | t18);
    *((unsigned int *)t16) = t19;
    t20 = *((unsigned int *)t16);
    t21 = (t20 != 0);
    if (t21 == 1)
        goto LAB9;

LAB10:
LAB11:    t38 = (t10 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t10);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB12;

LAB13:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t17 = (t13 & t12);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB35;

LAB33:    if (*((unsigned int *)t2) == 0)
        goto LAB32;

LAB34:    t4 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t4) = 1;

LAB35:    t5 = (t7 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t21 = *((unsigned int *)t7);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB14:    goto LAB2;

LAB9:    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t10) = (t22 | t23);
    t24 = (t5 + 4);
    t25 = (t7 + 4);
    t26 = *((unsigned int *)t24);
    t27 = (~(t26));
    t28 = *((unsigned int *)t5);
    t29 = (t28 & t27);
    t30 = *((unsigned int *)t25);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t33 = (t32 & t31);
    t34 = (~(t29));
    t35 = (~(t33));
    t36 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t36 & t34);
    t37 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t37 & t35);
    goto LAB11;

LAB12:
LAB15:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    t46 = ((char*)((ng0)));
    memset(t48, 0, 8);
    if (*((unsigned int *)t47) != *((unsigned int *)t46))
        goto LAB18;

LAB16:    t49 = (t47 + 4);
    t50 = (t46 + 4);
    if (*((unsigned int *)t49) != *((unsigned int *)t50))
        goto LAB18;

LAB17:    *((unsigned int *)t48) = 1;

LAB18:    memset(t45, 0, 8);
    t51 = (t48 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (~(t52));
    t54 = *((unsigned int *)t48);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t51) != 0)
        goto LAB21;

LAB22:    t58 = (t45 + 4);
    t59 = *((unsigned int *)t45);
    t60 = *((unsigned int *)t58);
    t61 = (t59 || t60);
    if (t61 > 0)
        goto LAB23;

LAB24:    t63 = *((unsigned int *)t45);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t45) > 0)
        goto LAB29;

LAB30:    memcpy(t44, t67, 8);

LAB31:    t68 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t68, t44, 0, 0, 32, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB14;

LAB19:    *((unsigned int *)t45) = 1;
    goto LAB22;

LAB21:    t57 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB22;

LAB23:    t62 = ((char*)((ng1)));
    goto LAB24;

LAB25:    t67 = ((char*)((ng2)));
    goto LAB26;

LAB27:    xsi_vlog_unsigned_bit_combine(t44, 32, t62, 32, t67, 32);
    goto LAB31;

LAB29:    memcpy(t44, t62, 8);
    goto LAB31;

LAB32:    *((unsigned int *)t7) = 1;
    goto LAB35;

LAB36:
LAB39:    t6 = (t0 + 1528U);
    t8 = *((char **)t6);
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 32, 0LL);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB38;

}


extern void work_m_00000000004231517048_4218888540_init()
{
	static char *pe[] = {(void *)Always_40_0};
	xsi_register_didat("work_m_00000000004231517048_4218888540", "isim/testmipsjmy.exe.sim/work/m_00000000004231517048_4218888540.didat");
	xsi_register_executes(pe);
}
