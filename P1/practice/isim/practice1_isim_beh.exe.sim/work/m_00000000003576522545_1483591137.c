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
static const char *ng0 = "E:/ISE/P1/practice/practice1.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};

static void NetReassign_32_1(char *);


static void Initial_29_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;

LAB0:    xsi_set_current_line(29, ng0);

LAB2:    xsi_set_current_line(30, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1288);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_minus(t5, 3, t3, 3, t4, 3);
    t6 = (t0 + 1448);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 3);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1608);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 4472);
    *((int *)t2) = 1;
    NetReassign_32_1(t0);

LAB1:    return;
}

static void NetReassign_32_1(char *t0)
{
    char t4[8];
    char t5[8];
    char t9[8];
    char *t1;
    char *t2;
    unsigned int t3;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t3 = 0;
    t2 = (t0 + 1448);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    memset(t9, 0, 8);
    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB5;

LAB4:    t11 = (t8 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t7) < *((unsigned int *)t8))
        goto LAB6;

LAB7:    memset(t5, 0, 8);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t9);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t13) != 0)
        goto LAB11;

LAB12:    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB13;

LAB14:    t25 = *((unsigned int *)t5);
    t26 = (~(t25));
    t27 = *((unsigned int *)t20);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t20) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t5) > 0)
        goto LAB19;

LAB20:    memcpy(t4, t29, 8);

LAB21:    t30 = (t0 + 4472);
    if (*((int *)t30) > 0)
        goto LAB22;

LAB23:    if (t3 > 0)
        goto LAB24;

LAB25:    t33 = (t0 + 3096);
    *((int *)t33) = 0;

LAB26:
LAB1:    return;
LAB5:    t12 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t5) = 1;
    goto LAB12;

LAB11:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB12;

LAB13:    t24 = ((char*)((ng4)));
    goto LAB14;

LAB15:    t29 = ((char*)((ng3)));
    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t4, 32, t24, 32, t29, 32);
    goto LAB21;

LAB19:    memcpy(t4, t24, 8);
    goto LAB21;

LAB22:    t31 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t31, t4, 0, 0, 0, 1, ((int*)(t30)));
    t3 = 1;
    goto LAB23;

LAB24:    t32 = (t0 + 3096);
    *((int *)t32) = 1;
    goto LAB26;

}


extern void work_m_00000000003576522545_1483591137_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)NetReassign_32_1};
	xsi_register_didat("work_m_00000000003576522545_1483591137", "isim/practice1_isim_beh.exe.sim/work/m_00000000003576522545_1483591137.didat");
	xsi_register_executes(pe);
}
