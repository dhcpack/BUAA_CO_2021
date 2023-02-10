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
static unsigned int ng0[] = {4U, 0U};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {14, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {16768U, 0U, 0U, 0U};
static int ng5[] = {1, 0};



static void Cont_41_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 5640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5512);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_46_1(char *t0)
{
    char t3[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t0 + 1688U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 28);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 28);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    xsi_vlogtype_concat(t3, 32, 32, 3U, t6, 4, t5, 26, t2, 2);
    t15 = (t0 + 5704);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t20 = (t0 + 5528);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_47_2(char *t0)
{
    char t4[8];
    char t5[8];
    char t9[8];
    char t12[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 4944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t6 = ((char*)((ng1)));
    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng2)));
    t10 = (t0 + 2008U);
    t11 = *((char **)t10);
    memset(t12, 0, 8);
    t10 = (t12 + 4);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 15);
    t16 = (t15 & 1);
    *((unsigned int *)t12) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 >> 15);
    t19 = (t18 & 1);
    *((unsigned int *)t10) = t19;
    xsi_vlog_mul_concat(t9, 14, 1, t7, 1U, t12, 1);
    xsi_vlogtype_concat(t5, 32, 32, 3U, t9, 14, t8, 16, t6, 2);
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t4, 32, t5, 32);
    t21 = (t0 + 5768);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 8);
    xsi_driver_vfirst_trans(t21, 0, 31);
    t26 = (t0 + 5544);
    *((int *)t26) = 1;

LAB1:    return;
}

static void Cont_49_3(char *t0)
{
    char t3[16];
    char t4[8];
    char t6[8];
    char t25[16];
    char t26[8];
    char t29[8];
    char t43[16];
    char t47[8];
    char t52[16];
    char t53[8];
    char t56[8];
    char t85[16];
    char t90[16];
    char t91[8];
    char t94[8];
    char t123[16];
    char t128[16];
    char t129[8];
    char t132[8];
    char t161[16];
    char t168[16];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
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
    unsigned int t70;
    char *t71;
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
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t92;
    char *t93;
    char *t95;
    char *t96;
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
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t130;
    char *t131;
    char *t133;
    char *t134;
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
    unsigned int t146;
    char *t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;
    char *t174;

LAB0:    t1 = (t0 + 5192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t5) != *((unsigned int *)t2))
        goto LAB6;

LAB4:    t7 = (t5 + 4);
    t8 = (t2 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB6:    memset(t4, 0, 8);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t6);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t9) != 0)
        goto LAB9;

LAB10:    t16 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB11;

LAB12:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t16);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t16) > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) > 0)
        goto LAB17;

LAB18:    memcpy(t3, t25, 16);

LAB19:    t169 = (t0 + 5832);
    t170 = (t169 + 56U);
    t171 = *((char **)t170);
    t172 = (t171 + 56U);
    t173 = *((char **)t172);
    xsi_vlog_bit_copy(t173, 0, t3, 0, 32);
    xsi_driver_vfirst_trans(t169, 0, 31);
    t174 = (t0 + 5560);
    *((int *)t174) = 1;

LAB1:    return;
LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB9:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB10;

LAB11:    t20 = ((char*)((ng4)));
    goto LAB12;

LAB13:    t27 = (t0 + 1208U);
    t28 = *((char **)t27);
    t27 = ((char*)((ng3)));
    memset(t29, 0, 8);
    if (*((unsigned int *)t28) != *((unsigned int *)t27))
        goto LAB22;

LAB20:    t30 = (t28 + 4);
    t31 = (t27 + 4);
    if (*((unsigned int *)t30) != *((unsigned int *)t31))
        goto LAB22;

LAB21:    *((unsigned int *)t29) = 1;

LAB22:    memset(t26, 0, 8);
    t32 = (t29 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t29);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t32) != 0)
        goto LAB25;

LAB26:    t39 = (t26 + 4);
    t40 = *((unsigned int *)t26);
    t41 = *((unsigned int *)t39);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB27;

LAB28:    t48 = *((unsigned int *)t26);
    t49 = (~(t48));
    t50 = *((unsigned int *)t39);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t39) > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t26) > 0)
        goto LAB33;

LAB34:    memcpy(t25, t52, 16);

LAB35:    goto LAB14;

LAB15:    xsi_vlog_unsigned_bit_combine(t3, 34, t20, 34, t25, 34);
    goto LAB19;

LAB17:    memcpy(t3, t20, 16);
    goto LAB19;

LAB23:    *((unsigned int *)t26) = 1;
    goto LAB26;

LAB25:    t38 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB26;

LAB27:    t44 = ((char*)((ng1)));
    t45 = (t0 + 1368U);
    t46 = *((char **)t45);
    t45 = ((char*)((ng5)));
    memset(t47, 0, 8);
    xsi_vlog_unsigned_add(t47, 32, t46, 30, t45, 32);
    xsi_vlogtype_concat(t43, 34, 34, 2U, t47, 32, t44, 2);
    goto LAB28;

LAB29:    t54 = (t0 + 2648U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng3)));
    memset(t56, 0, 8);
    t57 = (t55 + 4);
    t58 = (t54 + 4);
    t59 = *((unsigned int *)t55);
    t60 = *((unsigned int *)t54);
    t61 = (t59 ^ t60);
    t62 = *((unsigned int *)t57);
    t63 = *((unsigned int *)t58);
    t64 = (t62 ^ t63);
    t65 = (t61 | t64);
    t66 = *((unsigned int *)t57);
    t67 = *((unsigned int *)t58);
    t68 = (t66 | t67);
    t69 = (~(t68));
    t70 = (t65 & t69);
    if (t70 != 0)
        goto LAB39;

LAB36:    if (t68 != 0)
        goto LAB38;

LAB37:    *((unsigned int *)t56) = 1;

LAB39:    memset(t53, 0, 8);
    t72 = (t56 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t56);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t72) != 0)
        goto LAB42;

LAB43:    t79 = (t53 + 4);
    t80 = *((unsigned int *)t53);
    t81 = *((unsigned int *)t79);
    t82 = (t80 || t81);
    if (t82 > 0)
        goto LAB44;

LAB45:    t86 = *((unsigned int *)t53);
    t87 = (~(t86));
    t88 = *((unsigned int *)t79);
    t89 = (t87 || t88);
    if (t89 > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t79) > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t53) > 0)
        goto LAB50;

LAB51:    memcpy(t52, t90, 16);

LAB52:    goto LAB30;

LAB31:    xsi_vlog_unsigned_bit_combine(t25, 34, t43, 34, t52, 34);
    goto LAB35;

LAB33:    memcpy(t25, t43, 16);
    goto LAB35;

LAB38:    t71 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB39;

LAB40:    *((unsigned int *)t53) = 1;
    goto LAB43;

LAB42:    t78 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB43;

LAB44:    t83 = (t0 + 2168U);
    t84 = *((char **)t83);
    memcpy(t85, t84, 8);
    t83 = (t85 + 8);
    memset(t83, 0, 8);
    goto LAB45;

LAB46:    t92 = (t0 + 2488U);
    t93 = *((char **)t92);
    t92 = ((char*)((ng3)));
    memset(t94, 0, 8);
    t95 = (t93 + 4);
    t96 = (t92 + 4);
    t97 = *((unsigned int *)t93);
    t98 = *((unsigned int *)t92);
    t99 = (t97 ^ t98);
    t100 = *((unsigned int *)t95);
    t101 = *((unsigned int *)t96);
    t102 = (t100 ^ t101);
    t103 = (t99 | t102);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t96);
    t106 = (t104 | t105);
    t107 = (~(t106));
    t108 = (t103 & t107);
    if (t108 != 0)
        goto LAB56;

LAB53:    if (t106 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t94) = 1;

LAB56:    memset(t91, 0, 8);
    t110 = (t94 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (~(t111));
    t113 = *((unsigned int *)t94);
    t114 = (t113 & t112);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t110) != 0)
        goto LAB59;

LAB60:    t117 = (t91 + 4);
    t118 = *((unsigned int *)t91);
    t119 = *((unsigned int *)t117);
    t120 = (t118 || t119);
    if (t120 > 0)
        goto LAB61;

LAB62:    t124 = *((unsigned int *)t91);
    t125 = (~(t124));
    t126 = *((unsigned int *)t117);
    t127 = (t125 || t126);
    if (t127 > 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t117) > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t91) > 0)
        goto LAB67;

LAB68:    memcpy(t90, t128, 16);

LAB69:    goto LAB47;

LAB48:    xsi_vlog_unsigned_bit_combine(t52, 34, t85, 34, t90, 34);
    goto LAB52;

LAB50:    memcpy(t52, t85, 16);
    goto LAB52;

LAB55:    t109 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t91) = 1;
    goto LAB60;

LAB59:    t116 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB60;

LAB61:    t121 = (t0 + 2968U);
    t122 = *((char **)t121);
    memcpy(t123, t122, 8);
    t121 = (t123 + 8);
    memset(t121, 0, 8);
    goto LAB62;

LAB63:    t130 = (t0 + 2328U);
    t131 = *((char **)t130);
    t130 = ((char*)((ng3)));
    memset(t132, 0, 8);
    t133 = (t131 + 4);
    t134 = (t130 + 4);
    t135 = *((unsigned int *)t131);
    t136 = *((unsigned int *)t130);
    t137 = (t135 ^ t136);
    t138 = *((unsigned int *)t133);
    t139 = *((unsigned int *)t134);
    t140 = (t138 ^ t139);
    t141 = (t137 | t140);
    t142 = *((unsigned int *)t133);
    t143 = *((unsigned int *)t134);
    t144 = (t142 | t143);
    t145 = (~(t144));
    t146 = (t141 & t145);
    if (t146 != 0)
        goto LAB73;

LAB70:    if (t144 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t132) = 1;

LAB73:    memset(t129, 0, 8);
    t148 = (t132 + 4);
    t149 = *((unsigned int *)t148);
    t150 = (~(t149));
    t151 = *((unsigned int *)t132);
    t152 = (t151 & t150);
    t153 = (t152 & 1U);
    if (t153 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t148) != 0)
        goto LAB76;

LAB77:    t155 = (t129 + 4);
    t156 = *((unsigned int *)t129);
    t157 = *((unsigned int *)t155);
    t158 = (t156 || t157);
    if (t158 > 0)
        goto LAB78;

LAB79:    t162 = *((unsigned int *)t129);
    t163 = (~(t162));
    t164 = *((unsigned int *)t155);
    t165 = (t163 || t164);
    if (t165 > 0)
        goto LAB80;

LAB81:    if (*((unsigned int *)t155) > 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t129) > 0)
        goto LAB84;

LAB85:    memcpy(t128, t168, 16);

LAB86:    goto LAB64;

LAB65:    xsi_vlog_unsigned_bit_combine(t90, 34, t123, 34, t128, 34);
    goto LAB69;

LAB67:    memcpy(t90, t123, 16);
    goto LAB69;

LAB72:    t147 = (t132 + 4);
    *((unsigned int *)t132) = 1;
    *((unsigned int *)t147) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t129) = 1;
    goto LAB77;

LAB76:    t154 = (t129 + 4);
    *((unsigned int *)t129) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB77;

LAB78:    t159 = (t0 + 3128U);
    t160 = *((char **)t159);
    memcpy(t161, t160, 8);
    t159 = (t161 + 8);
    memset(t159, 0, 8);
    goto LAB79;

LAB80:    t166 = (t0 + 3288U);
    t167 = *((char **)t166);
    memcpy(t168, t167, 8);
    t166 = (t168 + 8);
    memset(t166, 0, 8);
    goto LAB81;

LAB82:    xsi_vlog_unsigned_bit_combine(t128, 34, t161, 34, t168, 34);
    goto LAB86;

LAB84:    memcpy(t128, t161, 16);
    goto LAB86;

}


extern void work_m_00000000001942477951_0757879789_init()
{
	static char *pe[] = {(void *)Cont_41_0,(void *)Cont_46_1,(void *)Cont_47_2,(void *)Cont_49_3};
	xsi_register_didat("work_m_00000000001942477951_0757879789", "isim/testmipsjmy.exe.sim/work/m_00000000001942477951_0757879789.didat");
	xsi_register_executes(pe);
}
