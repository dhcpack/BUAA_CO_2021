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
static const char *ng0 = "E:/ISE/P1/ID/a_tb.v";



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);

LAB4:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2016);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}


extern void work_m_00000000001206975644_2214056506_init()
{
	static char *pe[] = {(void *)Initial_35_0};
	xsi_register_didat("work_m_00000000001206975644_2214056506", "isim/a_tb_isim_beh.exe.sim/work/m_00000000001206975644_2214056506.didat");
	xsi_register_executes(pe);
}
