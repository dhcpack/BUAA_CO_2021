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
static const char *ng0 = "E:/ISE/HDL/Bcdadd4/aha.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {8, 0};
static int ng4[] = {1, 0};



static void Initial_8_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(8, ng0);

LAB2:    xsi_set_current_line(9, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 8, 0LL);
    xsi_set_current_line(10, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 8, 0LL);

LAB1:    return;
}

static void Always_14_1(char *t0)
{
    char t6[8];
    char t15[8];
    char t22[8];
    char t46[8];
    char t51[8];
    char t67[8];
    char t75[8];
    char t114[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    unsigned int t122;
    int t123;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(14, ng0);

LAB5:    xsi_set_current_line(16, ng0);
    xsi_set_current_line(16, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB6:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    goto LAB2;

LAB7:    xsi_set_current_line(17, ng0);

LAB9:    xsi_set_current_line(18, ng0);
    t13 = (t0 + 1208U);
    t14 = *((char **)t13);
    t13 = (t0 + 1168U);
    t16 = (t13 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2088);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_index_select_value(t15, 1, t14, t17, 2, t20, 32, 1);
    t21 = (t0 + 1928);
    t23 = (t0 + 1928);
    t24 = (t23 + 72U);
    t25 = *((char **)t24);
    t26 = (t0 + 2088);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlog_generic_convert_bit_index(t22, t25, 2, t28, 32, 1);
    t29 = (t22 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    if (t31 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1928);
    t7 = (t5 + 72U);
    t13 = *((char **)t7);
    t14 = (t0 + 2088);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    xsi_vlog_generic_get_index_select_value(t6, 32, t4, t13, 2, t17, 32, 1);
    t18 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t19 = (t6 + 4);
    t20 = (t18 + 4);
    t8 = *((unsigned int *)t6);
    t9 = *((unsigned int *)t18);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t19);
    t12 = *((unsigned int *)t20);
    t30 = (t11 ^ t12);
    t32 = (t10 | t30);
    t33 = *((unsigned int *)t19);
    t34 = *((unsigned int *)t20);
    t35 = (t33 | t34);
    t36 = (~(t35));
    t37 = (t32 & t36);
    if (t37 != 0)
        goto LAB15;

LAB12:    if (t35 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t15) = 1;

LAB15:    memset(t22, 0, 8);
    t23 = (t15 + 4);
    t38 = *((unsigned int *)t23);
    t39 = (~(t38));
    t40 = *((unsigned int *)t15);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t23) != 0)
        goto LAB18;

LAB19:    t25 = (t22 + 4);
    t43 = *((unsigned int *)t22);
    t44 = *((unsigned int *)t25);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB20;

LAB21:    memcpy(t75, t22, 8);

LAB22:    t106 = (t75 + 4);
    t107 = *((unsigned int *)t106);
    t108 = (~(t107));
    t109 = *((unsigned int *)t75);
    t110 = (t109 & t108);
    t111 = (t110 != 0);
    if (t111 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(22, ng0);

LAB40:    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    t4 = (t0 + 1768);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t13 = (t0 + 2088);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    xsi_vlog_generic_convert_bit_index(t6, t7, 2, t16, 32, 1);
    t17 = (t6 + 4);
    t8 = *((unsigned int *)t17);
    t31 = (!(t8));
    if (t31 == 1)
        goto LAB41;

LAB42:
LAB36:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB10:    xsi_vlogvar_wait_assign_value(t21, t15, 0, *((unsigned int *)t22), 1, 0LL);
    goto LAB11;

LAB14:    t21 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB15;

LAB16:    *((unsigned int *)t22) = 1;
    goto LAB19;

LAB18:    t24 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB19;

LAB20:    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    t26 = (t0 + 1168U);
    t28 = (t26 + 72U);
    t29 = *((char **)t28);
    t47 = (t0 + 2088);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_generic_get_index_select_value(t46, 32, t27, t29, 2, t49, 32, 1);
    t50 = ((char*)((ng4)));
    memset(t51, 0, 8);
    t52 = (t46 + 4);
    t53 = (t50 + 4);
    t54 = *((unsigned int *)t46);
    t55 = *((unsigned int *)t50);
    t56 = (t54 ^ t55);
    t57 = *((unsigned int *)t52);
    t58 = *((unsigned int *)t53);
    t59 = (t57 ^ t58);
    t60 = (t56 | t59);
    t61 = *((unsigned int *)t52);
    t62 = *((unsigned int *)t53);
    t63 = (t61 | t62);
    t64 = (~(t63));
    t65 = (t60 & t64);
    if (t65 != 0)
        goto LAB26;

LAB23:    if (t63 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t51) = 1;

LAB26:    memset(t67, 0, 8);
    t68 = (t51 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t51);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t68) != 0)
        goto LAB29;

LAB30:    t76 = *((unsigned int *)t22);
    t77 = *((unsigned int *)t67);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t79 = (t22 + 4);
    t80 = (t67 + 4);
    t81 = (t75 + 4);
    t82 = *((unsigned int *)t79);
    t83 = *((unsigned int *)t80);
    t84 = (t82 | t83);
    *((unsigned int *)t81) = t84;
    t85 = *((unsigned int *)t81);
    t86 = (t85 != 0);
    if (t86 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB22;

LAB25:    t66 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t67) = 1;
    goto LAB30;

LAB29:    t74 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB30;

LAB31:    t87 = *((unsigned int *)t75);
    t88 = *((unsigned int *)t81);
    *((unsigned int *)t75) = (t87 | t88);
    t89 = (t22 + 4);
    t90 = (t67 + 4);
    t91 = *((unsigned int *)t22);
    t92 = (~(t91));
    t93 = *((unsigned int *)t89);
    t94 = (~(t93));
    t95 = *((unsigned int *)t67);
    t96 = (~(t95));
    t97 = *((unsigned int *)t90);
    t98 = (~(t97));
    t31 = (t92 & t94);
    t99 = (t96 & t98);
    t100 = (~(t31));
    t101 = (~(t99));
    t102 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t102 & t100);
    t103 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t103 & t101);
    t104 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t104 & t100);
    t105 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t105 & t101);
    goto LAB33;

LAB34:    xsi_set_current_line(19, ng0);

LAB37:    xsi_set_current_line(20, ng0);
    t112 = ((char*)((ng4)));
    t113 = (t0 + 1768);
    t115 = (t0 + 1768);
    t116 = (t115 + 72U);
    t117 = *((char **)t116);
    t118 = (t0 + 2088);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    xsi_vlog_generic_convert_bit_index(t114, t117, 2, t120, 32, 1);
    t121 = (t114 + 4);
    t122 = *((unsigned int *)t121);
    t123 = (!(t122));
    if (t123 == 1)
        goto LAB38;

LAB39:    goto LAB36;

LAB38:    xsi_vlogvar_wait_assign_value(t113, t112, 0, *((unsigned int *)t114), 1, 0LL);
    goto LAB39;

LAB41:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t6), 1, 0LL);
    goto LAB42;

}

static void Cont_28_2(char *t0)
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

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
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
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 3840);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001266027704_2943448091_init()
{
	static char *pe[] = {(void *)Initial_8_0,(void *)Always_14_1,(void *)Cont_28_2};
	xsi_register_didat("work_m_00000000001266027704_2943448091", "isim/top_module_tb_isim_beh.exe.sim/work/m_00000000001266027704_2943448091.didat");
	xsi_register_executes(pe);
}
