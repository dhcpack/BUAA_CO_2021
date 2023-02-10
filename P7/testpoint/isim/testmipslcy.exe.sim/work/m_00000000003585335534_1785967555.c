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
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {16, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};



static void Cont_27_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t33[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char t71[8];
    char t74[8];
    char t77[8];
    char t89[8];
    char t90[8];
    char t93[8];
    char t120[8];
    char t128[8];
    char t129[8];
    char t131[8];
    char t158[8];
    char t159[8];
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
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t91;
    char *t92;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t121;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t130;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    char *t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    char *t175;
    char *t176;
    char *t177;
    char *t178;
    char *t179;
    char *t180;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng0)));
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

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t175 = (t0 + 2928);
    t176 = (t175 + 56U);
    t177 = *((char **)t176);
    t178 = (t177 + 56U);
    t179 = *((char **)t178);
    memcpy(t179, t3, 8);
    xsi_driver_vfirst_trans(t175, 0, 31);
    t180 = (t0 + 2848);
    *((int *)t180) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 1048U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng1)));
    xsi_vlogtype_concat(t33, 32, 32, 2U, t34, 16, t35, 16);
    goto LAB13;

LAB14:    t42 = (t0 + 1208U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng2)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t85 = *((unsigned int *)t41);
    t86 = (~(t85));
    t87 = *((unsigned int *)t67);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t89, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t72 = (t0 + 1048U);
    t73 = *((char **)t72);
    t72 = ((char*)((ng3)));
    t75 = (t0 + 1048U);
    t76 = *((char **)t75);
    memset(t77, 0, 8);
    t75 = (t77 + 4);
    t78 = (t76 + 4);
    t79 = *((unsigned int *)t76);
    t80 = (t79 >> 15);
    t81 = (t80 & 1);
    *((unsigned int *)t77) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 >> 15);
    t84 = (t83 & 1);
    *((unsigned int *)t75) = t84;
    xsi_vlog_mul_concat(t74, 16, 1, t72, 1U, t77, 1);
    xsi_vlogtype_concat(t71, 32, 32, 2U, t74, 16, t73, 16);
    goto LAB30;

LAB31:    t91 = (t0 + 1208U);
    t92 = *((char **)t91);
    t91 = ((char*)((ng4)));
    memset(t93, 0, 8);
    t94 = (t92 + 4);
    t95 = (t91 + 4);
    t96 = *((unsigned int *)t92);
    t97 = *((unsigned int *)t91);
    t98 = (t96 ^ t97);
    t99 = *((unsigned int *)t94);
    t100 = *((unsigned int *)t95);
    t101 = (t99 ^ t100);
    t102 = (t98 | t101);
    t103 = *((unsigned int *)t94);
    t104 = *((unsigned int *)t95);
    t105 = (t103 | t104);
    t106 = (~(t105));
    t107 = (t102 & t106);
    if (t107 != 0)
        goto LAB41;

LAB38:    if (t105 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t93) = 1;

LAB41:    memset(t90, 0, 8);
    t109 = (t93 + 4);
    t110 = *((unsigned int *)t109);
    t111 = (~(t110));
    t112 = *((unsigned int *)t93);
    t113 = (t112 & t111);
    t114 = (t113 & 1U);
    if (t114 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t109) != 0)
        goto LAB44;

LAB45:    t116 = (t90 + 4);
    t117 = *((unsigned int *)t90);
    t118 = *((unsigned int *)t116);
    t119 = (t117 || t118);
    if (t119 > 0)
        goto LAB46;

LAB47:    t124 = *((unsigned int *)t90);
    t125 = (~(t124));
    t126 = *((unsigned int *)t116);
    t127 = (t125 || t126);
    if (t127 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t116) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t90) > 0)
        goto LAB52;

LAB53:    memcpy(t89, t128, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 32, t71, 32, t89, 32);
    goto LAB37;

LAB35:    memcpy(t40, t71, 8);
    goto LAB37;

LAB40:    t108 = (t93 + 4);
    *((unsigned int *)t93) = 1;
    *((unsigned int *)t108) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t90) = 1;
    goto LAB45;

LAB44:    t115 = (t90 + 4);
    *((unsigned int *)t90) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB45;

LAB46:    t121 = ((char*)((ng1)));
    t122 = (t0 + 1048U);
    t123 = *((char **)t122);
    xsi_vlogtype_concat(t120, 32, 32, 2U, t123, 16, t121, 16);
    goto LAB47;

LAB48:    t122 = (t0 + 1208U);
    t130 = *((char **)t122);
    t122 = ((char*)((ng5)));
    memset(t131, 0, 8);
    t132 = (t130 + 4);
    t133 = (t122 + 4);
    t134 = *((unsigned int *)t130);
    t135 = *((unsigned int *)t122);
    t136 = (t134 ^ t135);
    t137 = *((unsigned int *)t132);
    t138 = *((unsigned int *)t133);
    t139 = (t137 ^ t138);
    t140 = (t136 | t139);
    t141 = *((unsigned int *)t132);
    t142 = *((unsigned int *)t133);
    t143 = (t141 | t142);
    t144 = (~(t143));
    t145 = (t140 & t144);
    if (t145 != 0)
        goto LAB58;

LAB55:    if (t143 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t131) = 1;

LAB58:    memset(t129, 0, 8);
    t147 = (t131 + 4);
    t148 = *((unsigned int *)t147);
    t149 = (~(t148));
    t150 = *((unsigned int *)t131);
    t151 = (t150 & t149);
    t152 = (t151 & 1U);
    if (t152 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t147) != 0)
        goto LAB61;

LAB62:    t154 = (t129 + 4);
    t155 = *((unsigned int *)t129);
    t156 = *((unsigned int *)t154);
    t157 = (t155 || t156);
    if (t157 > 0)
        goto LAB63;

LAB64:    t170 = *((unsigned int *)t129);
    t171 = (~(t170));
    t172 = *((unsigned int *)t154);
    t173 = (t171 || t172);
    if (t173 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t154) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t129) > 0)
        goto LAB69;

LAB70:    memcpy(t128, t174, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t89, 32, t120, 32, t128, 32);
    goto LAB54;

LAB52:    memcpy(t89, t120, 8);
    goto LAB54;

LAB57:    t146 = (t131 + 4);
    *((unsigned int *)t131) = 1;
    *((unsigned int *)t146) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t129) = 1;
    goto LAB62;

LAB61:    t153 = (t129 + 4);
    *((unsigned int *)t129) = 1;
    *((unsigned int *)t153) = 1;
    goto LAB62;

LAB63:    t160 = (t0 + 1048U);
    t161 = *((char **)t160);
    memset(t159, 0, 8);
    t160 = (t159 + 4);
    t162 = (t161 + 4);
    t163 = *((unsigned int *)t161);
    t164 = (t163 >> 6);
    *((unsigned int *)t159) = t164;
    t165 = *((unsigned int *)t162);
    t166 = (t165 >> 6);
    *((unsigned int *)t160) = t166;
    t167 = *((unsigned int *)t159);
    *((unsigned int *)t159) = (t167 & 31U);
    t168 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t168 & 31U);
    t169 = ((char*)((ng1)));
    xsi_vlogtype_concat(t158, 32, 32, 2U, t169, 27, t159, 5);
    goto LAB64;

LAB65:    t174 = ((char*)((ng0)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t128, 32, t158, 32, t174, 32);
    goto LAB71;

LAB69:    memcpy(t128, t158, 8);
    goto LAB71;

}


extern void work_m_00000000003585335534_1785967555_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_00000000003585335534_1785967555", "isim/testmipslcy.exe.sim/work/m_00000000003585335534_1785967555.didat");
	xsi_register_executes(pe);
}
