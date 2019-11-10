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
static const char *ng0 = "D:/Amatya Sharma/COA/Lab/ASG10_4_11/RISC_1/ipcore_dir/inputDecider.v";
static int ng1[] = {1, 0};
static int ng2[] = {19, 0};
static unsigned int ng3[] = {4095U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {49U, 0U};
static int ng6[] = {14, 0};
static unsigned int ng7[] = {131071U, 0U};
static int ng8[] = {24, 0};
static unsigned int ng9[] = {127U, 0U};



static void Always_34_0(char *t0)
{
    char t6[8];
    char t28[8];
    char t29[8];
    char t32[8];
    char t37[8];
    char t64[8];
    char t71[8];
    char t99[8];
    char t102[8];
    char t129[8];
    char t136[8];
    char *t1;
    char *t2;
    char *t3;
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
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
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
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t100;
    char *t101;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t137;
    char *t138;
    char *t139;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB33;

LAB30:    if (t18 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t6) = 1;

LAB33:    memset(t28, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t8) != 0)
        goto LAB36;

LAB37:    t22 = (t28 + 4);
    t40 = *((unsigned int *)t28);
    t41 = (!(t40));
    t42 = *((unsigned int *)t22);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB38;

LAB39:    memcpy(t37, t28, 8);

LAB40:    t65 = (t37 + 4);
    t94 = *((unsigned int *)t65);
    t95 = (~(t94));
    t96 = *((unsigned int *)t37);
    t97 = (t96 & t95);
    t98 = (t97 != 0);
    if (t98 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB75;

LAB72:    if (t18 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t6) = 1;

LAB75:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);

LAB78:
LAB54:
LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(37, ng0);
    t30 = (t0 + 1848U);
    t31 = *((char **)t30);
    t30 = (t0 + 1808U);
    t33 = (t30 + 72U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t32, 32, t31, t34, 2, t35, 32, 1);
    t36 = ((char*)((ng1)));
    memset(t37, 0, 8);
    t38 = (t32 + 4);
    t39 = (t36 + 4);
    t40 = *((unsigned int *)t32);
    t41 = *((unsigned int *)t36);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB16;

LAB13:    if (t49 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t37) = 1;

LAB16:    memset(t29, 0, 8);
    t53 = (t37 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t53) != 0)
        goto LAB19;

LAB20:    t60 = (t29 + 4);
    t61 = *((unsigned int *)t29);
    t62 = *((unsigned int *)t60);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB21;

LAB22:    t67 = *((unsigned int *)t29);
    t68 = (~(t67));
    t69 = *((unsigned int *)t60);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t60) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t29) > 0)
        goto LAB27;

LAB28:    memcpy(t28, t71, 8);

LAB29:    t74 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t74, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB15:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t29) = 1;
    goto LAB20;

LAB19:    t59 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB20;

LAB21:    t65 = (t0 + 1848U);
    t66 = *((char **)t65);
    t65 = ((char*)((ng3)));
    xsi_vlogtype_concat(t64, 32, 32, 2U, t65, 12, t66, 20);
    goto LAB22;

LAB23:    t72 = (t0 + 1848U);
    t73 = *((char **)t72);
    t72 = ((char*)((ng4)));
    xsi_vlogtype_concat(t71, 32, 32, 2U, t72, 12, t73, 20);
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t28, 32, t64, 32, t71, 32);
    goto LAB29;

LAB27:    memcpy(t28, t64, 8);
    goto LAB29;

LAB32:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t28) = 1;
    goto LAB37;

LAB36:    t21 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB37;

LAB38:    t30 = (t0 + 2008U);
    t31 = *((char **)t30);
    t30 = ((char*)((ng5)));
    memset(t29, 0, 8);
    t33 = (t31 + 4);
    t34 = (t30 + 4);
    t44 = *((unsigned int *)t31);
    t45 = *((unsigned int *)t30);
    t46 = (t44 ^ t45);
    t47 = *((unsigned int *)t33);
    t48 = *((unsigned int *)t34);
    t49 = (t47 ^ t48);
    t50 = (t46 | t49);
    t51 = *((unsigned int *)t33);
    t54 = *((unsigned int *)t34);
    t55 = (t51 | t54);
    t56 = (~(t55));
    t57 = (t50 & t56);
    if (t57 != 0)
        goto LAB44;

LAB41:    if (t55 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t29) = 1;

LAB44:    memset(t32, 0, 8);
    t36 = (t29 + 4);
    t58 = *((unsigned int *)t36);
    t61 = (~(t58));
    t62 = *((unsigned int *)t29);
    t63 = (t62 & t61);
    t67 = (t63 & 1U);
    if (t67 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t36) != 0)
        goto LAB47;

LAB48:    t68 = *((unsigned int *)t28);
    t69 = *((unsigned int *)t32);
    t70 = (t68 | t69);
    *((unsigned int *)t37) = t70;
    t39 = (t28 + 4);
    t52 = (t32 + 4);
    t53 = (t37 + 4);
    t75 = *((unsigned int *)t39);
    t76 = *((unsigned int *)t52);
    t77 = (t75 | t76);
    *((unsigned int *)t53) = t77;
    t78 = *((unsigned int *)t53);
    t79 = (t78 != 0);
    if (t79 == 1)
        goto LAB49;

LAB50:
LAB51:    goto LAB40;

LAB43:    t35 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB44;

LAB45:    *((unsigned int *)t32) = 1;
    goto LAB48;

LAB47:    t38 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB48;

LAB49:    t80 = *((unsigned int *)t37);
    t81 = *((unsigned int *)t53);
    *((unsigned int *)t37) = (t80 | t81);
    t59 = (t28 + 4);
    t60 = (t32 + 4);
    t82 = *((unsigned int *)t59);
    t83 = (~(t82));
    t84 = *((unsigned int *)t28);
    t85 = (t84 & t83);
    t86 = *((unsigned int *)t60);
    t87 = (~(t86));
    t88 = *((unsigned int *)t32);
    t89 = (t88 & t87);
    t90 = (~(t85));
    t91 = (~(t89));
    t92 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t92 & t90);
    t93 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t93 & t91);
    goto LAB51;

LAB52:    xsi_set_current_line(39, ng0);
    t66 = (t0 + 2168U);
    t72 = *((char **)t66);
    t66 = (t0 + 2128U);
    t73 = (t66 + 72U);
    t74 = *((char **)t73);
    t100 = ((char*)((ng6)));
    xsi_vlog_generic_get_index_select_value(t99, 32, t72, t74, 2, t100, 32, 1);
    t101 = ((char*)((ng1)));
    memset(t102, 0, 8);
    t103 = (t99 + 4);
    t104 = (t101 + 4);
    t105 = *((unsigned int *)t99);
    t106 = *((unsigned int *)t101);
    t107 = (t105 ^ t106);
    t108 = *((unsigned int *)t103);
    t109 = *((unsigned int *)t104);
    t110 = (t108 ^ t109);
    t111 = (t107 | t110);
    t112 = *((unsigned int *)t103);
    t113 = *((unsigned int *)t104);
    t114 = (t112 | t113);
    t115 = (~(t114));
    t116 = (t111 & t115);
    if (t116 != 0)
        goto LAB58;

LAB55:    if (t114 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t102) = 1;

LAB58:    memset(t71, 0, 8);
    t118 = (t102 + 4);
    t119 = *((unsigned int *)t118);
    t120 = (~(t119));
    t121 = *((unsigned int *)t102);
    t122 = (t121 & t120);
    t123 = (t122 & 1U);
    if (t123 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t118) != 0)
        goto LAB61;

LAB62:    t125 = (t71 + 4);
    t126 = *((unsigned int *)t71);
    t127 = *((unsigned int *)t125);
    t128 = (t126 || t127);
    if (t128 > 0)
        goto LAB63;

LAB64:    t132 = *((unsigned int *)t71);
    t133 = (~(t132));
    t134 = *((unsigned int *)t125);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t125) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t71) > 0)
        goto LAB69;

LAB70:    memcpy(t64, t136, 8);

LAB71:    t139 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t139, t64, 0, 0, 32, 0LL);
    goto LAB54;

LAB57:    t117 = (t102 + 4);
    *((unsigned int *)t102) = 1;
    *((unsigned int *)t117) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t71) = 1;
    goto LAB62;

LAB61:    t124 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t124) = 1;
    goto LAB62;

LAB63:    t130 = (t0 + 2168U);
    t131 = *((char **)t130);
    t130 = ((char*)((ng7)));
    xsi_vlogtype_concat(t129, 32, 32, 2U, t130, 17, t131, 15);
    goto LAB64;

LAB65:    t137 = (t0 + 2168U);
    t138 = *((char **)t137);
    t137 = ((char*)((ng4)));
    xsi_vlogtype_concat(t136, 32, 32, 2U, t137, 17, t138, 15);
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t64, 32, t129, 32, t136, 32);
    goto LAB71;

LAB69:    memcpy(t64, t129, 8);
    goto LAB71;

LAB74:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(41, ng0);
    t21 = (t0 + 2328U);
    t22 = *((char **)t21);
    t21 = (t0 + 2288U);
    t30 = (t21 + 72U);
    t31 = *((char **)t30);
    t33 = ((char*)((ng8)));
    xsi_vlog_generic_get_index_select_value(t32, 32, t22, t31, 2, t33, 32, 1);
    t34 = ((char*)((ng1)));
    memset(t37, 0, 8);
    t35 = (t32 + 4);
    t36 = (t34 + 4);
    t40 = *((unsigned int *)t32);
    t41 = *((unsigned int *)t34);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t35);
    t44 = *((unsigned int *)t36);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t36);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB82;

LAB79:    if (t49 != 0)
        goto LAB81;

LAB80:    *((unsigned int *)t37) = 1;

LAB82:    memset(t29, 0, 8);
    t39 = (t37 + 4);
    t54 = *((unsigned int *)t39);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t39) != 0)
        goto LAB85;

LAB86:    t53 = (t29 + 4);
    t61 = *((unsigned int *)t29);
    t62 = *((unsigned int *)t53);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB87;

LAB88:    t67 = *((unsigned int *)t29);
    t68 = (~(t67));
    t69 = *((unsigned int *)t53);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t53) > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t29) > 0)
        goto LAB93;

LAB94:    memcpy(t28, t71, 8);

LAB95:    t72 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t72, t28, 0, 0, 32, 0LL);
    goto LAB78;

LAB81:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB82;

LAB83:    *((unsigned int *)t29) = 1;
    goto LAB86;

LAB85:    t52 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB86;

LAB87:    t59 = (t0 + 2328U);
    t60 = *((char **)t59);
    t59 = ((char*)((ng9)));
    xsi_vlogtype_concat(t64, 32, 32, 2U, t59, 7, t60, 25);
    goto LAB88;

LAB89:    t65 = (t0 + 2328U);
    t66 = *((char **)t65);
    t65 = ((char*)((ng4)));
    xsi_vlogtype_concat(t71, 32, 32, 2U, t65, 7, t66, 25);
    goto LAB90;

LAB91:    xsi_vlog_unsigned_bit_combine(t28, 32, t64, 32, t71, 32);
    goto LAB95;

LAB93:    memcpy(t28, t64, 8);
    goto LAB95;

}


extern void work_m_00000000002388440986_1336585431_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000002388440986_1336585431", "isim/main_tb_isim_beh.exe.sim/work/m_00000000002388440986_1336585431.didat");
	xsi_register_executes(pe);
}
