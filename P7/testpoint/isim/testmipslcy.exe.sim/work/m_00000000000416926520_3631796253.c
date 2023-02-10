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
static int ng0[] = {0, 0};
static int ng1[] = {1, 0};
static int ng2[] = {2, 0};
static int ng3[] = {3, 0};
static int ng4[] = {4, 0};
static int ng5[] = {5, 0};
static int ng6[] = {6, 0};
static int ng7[] = {7, 0};



static void Always_35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4104);
    *((int *)t2) = 1;
    t3 = (t0 + 3816);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 2464U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng0)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    t2 = ((char*)((ng0)));
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB25:    goto LAB2;

LAB7:    t7 = (t0 + 1184U);
    t8 = *((char **)t7);
    t7 = (t0 + 2864);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB25;

LAB9:    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB11:    t3 = (t0 + 1504U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB13:    t3 = (t0 + 1664U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB15:    t3 = (t0 + 1824U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB17:    t3 = (t0 + 1984U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB19:    t3 = (t0 + 2144U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

LAB21:    t3 = (t0 + 2304U);
    t4 = *((char **)t3);
    t3 = (t0 + 2864);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB25;

}


extern void work_m_00000000000416926520_3631796253_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000000416926520_3631796253", "isim/testmipslcy.exe.sim/work/m_00000000000416926520_3631796253.didat");
	xsi_register_executes(pe);
}
