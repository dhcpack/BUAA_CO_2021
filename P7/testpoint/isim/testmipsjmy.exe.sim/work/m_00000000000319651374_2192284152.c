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
static int ng1[] = {0, 0};
static unsigned int ng2[] = {16768U, 0U};
static int ng3[] = {1, 0};



static void Always_73_0(char *t0)
{
    char t7[8];
    char t10[8];
    char t46[8];
    char t47[8];
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
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 8288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 8608);
    *((int *)t2) = 1;
    t3 = (t0 + 8320);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 4248U);
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

LAB13:
LAB32:    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t46, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t13 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t26 = (~(t23));
    t27 = (t20 & t26);
    if (t27 != 0)
        goto LAB34;

LAB33:    if (t23 != 0)
        goto LAB35;

LAB36:    memset(t10, 0, 8);
    t8 = (t46 + 4);
    t28 = *((unsigned int *)t8);
    t30 = (~(t28));
    t31 = *((unsigned int *)t46);
    t32 = (t31 & t30);
    t34 = (t32 & 1U);
    if (t34 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t8) != 0)
        goto LAB39;

LAB40:    t14 = (t10 + 4);
    t35 = *((unsigned int *)t10);
    t36 = *((unsigned int *)t14);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB41;

LAB42:    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t14);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t14) > 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t10) > 0)
        goto LAB47;

LAB48:    memcpy(t7, t24, 8);

LAB49:    t25 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t25, t7, 0, 0, 2, 0LL);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t2 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    t2 = (t0 + 7208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 7368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

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
LAB15:    t44 = ((char*)((ng1)));
    t45 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t45, t44, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t46, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB18;

LAB16:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB18;

LAB17:    *((unsigned int *)t46) = 1;

LAB18:    memset(t10, 0, 8);
    t6 = (t46 + 4);
    t11 = *((unsigned int *)t6);
    t12 = (~(t11));
    t13 = *((unsigned int *)t46);
    t17 = (t13 & t12);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t6) != 0)
        goto LAB21;

LAB22:    t9 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB23;

LAB24:    t22 = *((unsigned int *)t10);
    t23 = (~(t22));
    t26 = *((unsigned int *)t9);
    t27 = (t23 || t26);
    if (t27 > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t9) > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t10) > 0)
        goto LAB29;

LAB30:    memcpy(t7, t15, 8);

LAB31:    t16 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t16, t7, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB14;

LAB19:    *((unsigned int *)t10) = 1;
    goto LAB22;

LAB21:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB22;

LAB23:    t14 = ((char*)((ng2)));
    goto LAB24;

LAB25:    t15 = ((char*)((ng1)));
    goto LAB26;

LAB27:    xsi_vlog_unsigned_bit_combine(t7, 32, t14, 32, t15, 32);
    goto LAB31;

LAB29:    memcpy(t7, t14, 8);
    goto LAB31;

LAB34:    *((unsigned int *)t46) = 1;
    goto LAB36;

LAB35:    t6 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t10) = 1;
    goto LAB40;

LAB39:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB40;

LAB41:    t15 = (t0 + 3288U);
    t16 = *((char **)t15);
    t15 = ((char*)((ng3)));
    memset(t47, 0, 8);
    xsi_vlog_unsigned_minus(t47, 32, t16, 2, t15, 32);
    goto LAB42;

LAB43:    t24 = ((char*)((ng1)));
    goto LAB44;

LAB45:    xsi_vlog_unsigned_bit_combine(t7, 32, t47, 32, t24, 32);
    goto LAB49;

LAB47:    memcpy(t7, t47, 8);
    goto LAB49;

}


extern void work_m_00000000000319651374_2192284152_init()
{
	static char *pe[] = {(void *)Always_73_0};
	xsi_register_didat("work_m_00000000000319651374_2192284152", "isim/testmipsjmy.exe.sim/work/m_00000000000319651374_2192284152.didat");
	xsi_register_executes(pe);
}
