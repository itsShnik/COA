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
static const char *ng0 = "D:/Amatya Sharma/COA/Lab/ASG10_4_11/RISC_1/ipcore_dir/branchLogic.v";
static int ng1[] = {24, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {127U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {65U, 0U};
static unsigned int ng6[] = {75U, 0U};
static unsigned int ng7[] = {64U, 0U};
static unsigned int ng8[] = {66U, 0U};
static int ng9[] = {0, 0};
static unsigned int ng10[] = {67U, 0U};
static unsigned int ng11[] = {68U, 0U};
static unsigned int ng12[] = {69U, 0U};
static unsigned int ng13[] = {70U, 0U};
static unsigned int ng14[] = {71U, 0U};
static unsigned int ng15[] = {72U, 0U};
static unsigned int ng16[] = {73U, 0U};
static unsigned int ng17[] = {74U, 0U};



static void Cont_37_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t13[8];
    char t40[8];
    char t41[8];
    char t58[8];
    char t59[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
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
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3048);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3048);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t7, 32, t6, t10, 2, t11, 32, 1);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t14 = (t7 + 4);
    t15 = (t12 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t23 = *((unsigned int *)t14);
    t24 = *((unsigned int *)t15);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB7;

LAB4:    if (t25 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t13) = 1;

LAB7:    memset(t4, 0, 8);
    t29 = (t13 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t29) != 0)
        goto LAB10;

LAB11:    t36 = (t4 + 4);
    t37 = *((unsigned int *)t4);
    t38 = *((unsigned int *)t36);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB12;

LAB13:    t54 = *((unsigned int *)t4);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t36) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t58, 8);

LAB20:    t72 = (t0 + 4632);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    memcpy(t76, t3, 8);
    xsi_driver_vfirst_trans(t72, 0, 31);
    t77 = (t0 + 4536);
    *((int *)t77) = 1;

LAB1:    return;
LAB6:    t28 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t35 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB11;

LAB12:    t42 = (t0 + 3048);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memset(t41, 0, 8);
    t45 = (t41 + 4);
    t46 = (t44 + 4);
    t47 = *((unsigned int *)t44);
    t48 = (t47 >> 0);
    *((unsigned int *)t41) = t48;
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 0);
    *((unsigned int *)t45) = t50;
    t51 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t51 & 33554431U);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 & 33554431U);
    t53 = ((char*)((ng3)));
    xsi_vlogtype_concat(t40, 32, 32, 2U, t53, 7, t41, 25);
    goto LAB13;

LAB14:    t60 = (t0 + 3048);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memset(t59, 0, 8);
    t63 = (t59 + 4);
    t64 = (t62 + 4);
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 0);
    *((unsigned int *)t59) = t66;
    t67 = *((unsigned int *)t64);
    t68 = (t67 >> 0);
    *((unsigned int *)t63) = t68;
    t69 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t69 & 33554431U);
    t70 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t70 & 33554431U);
    t71 = ((char*)((ng4)));
    xsi_vlogtype_concat(t58, 32, 32, 2U, t71, 7, t59, 25);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t40, 32, t58, 32);
    goto LAB20;

LAB18:    memcpy(t3, t40, 8);
    goto LAB20;

}

static void Always_38_1(char *t0)
{
    char t6[8];
    char t30[8];
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
    char *t28;
    char *t29;
    char *t31;
    char *t32;
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
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4552);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
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

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng5)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t28);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t31);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB17;

LAB14:    if (t42 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t30) = 1;

LAB17:    t46 = (t30 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
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
        goto LAB25;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(51, ng0);

LAB30:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
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
        goto LAB42;

LAB39:    if (t18 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t6) = 1;

LAB42:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
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
        goto LAB57;

LAB54:    if (t18 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t6) = 1;

LAB57:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB58;

LAB59:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
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
        goto LAB72;

LAB69:    if (t18 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t6) = 1;

LAB72:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB73;

LAB74:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng12)));
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
        goto LAB87;

LAB84:    if (t18 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t6) = 1;

LAB87:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB88;

LAB89:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng13)));
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
        goto LAB102;

LAB99:    if (t18 != 0)
        goto LAB101;

LAB100:    *((unsigned int *)t6) = 1;

LAB102:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB103;

LAB104:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
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
        goto LAB117;

LAB114:    if (t18 != 0)
        goto LAB116;

LAB115:    *((unsigned int *)t6) = 1;

LAB117:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB118;

LAB119:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng15)));
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
        goto LAB132;

LAB129:    if (t18 != 0)
        goto LAB131;

LAB130:    *((unsigned int *)t6) = 1;

LAB132:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB133;

LAB134:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng16)));
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
        goto LAB147;

LAB144:    if (t18 != 0)
        goto LAB146;

LAB145:    *((unsigned int *)t6) = 1;

LAB147:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB148;

LAB149:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng17)));
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
        goto LAB162;

LAB159:    if (t18 != 0)
        goto LAB161;

LAB160:    *((unsigned int *)t6) = 1;

LAB162:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB163;

LAB164:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng17)));
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
        goto LAB170;

LAB167:    if (t18 != 0)
        goto LAB169;

LAB168:    *((unsigned int *)t6) = 1;

LAB170:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB171;

LAB172:
LAB173:
LAB165:
LAB150:
LAB135:
LAB120:
LAB105:
LAB90:
LAB75:
LAB60:
LAB45:
LAB37:
LAB28:
LAB20:    goto LAB12;

LAB16:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(43, ng0);

LAB21:    xsi_set_current_line(44, ng0);
    t52 = (t0 + 2328U);
    t53 = *((char **)t52);
    t52 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t52, t53, 0, 0, 25, 0LL);
    goto LAB20;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(47, ng0);

LAB29:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 2488U);
    t22 = *((char **)t21);
    memset(t30, 0, 8);
    t21 = (t30 + 4);
    t28 = (t22 + 4);
    t33 = *((unsigned int *)t22);
    t34 = (t33 >> 0);
    *((unsigned int *)t30) = t34;
    t35 = *((unsigned int *)t28);
    t36 = (t35 >> 0);
    *((unsigned int *)t21) = t36;
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 & 33554431U);
    t38 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t38 & 33554431U);
    t29 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t29, t30, 0, 0, 25, 0LL);
    goto LAB28;

LAB33:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(53, ng0);

LAB38:    xsi_set_current_line(54, ng0);
    t21 = (t0 + 2168U);
    t22 = *((char **)t21);
    t21 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 25, 0LL);
    goto LAB37;

LAB41:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(57, ng0);

LAB46:    xsi_set_current_line(58, ng0);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB50;

LAB47:    if (t42 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t30) = 1;

LAB50:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB53:    goto LAB45;

LAB49:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(58, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB53;

LAB56:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB57;

LAB58:    xsi_set_current_line(63, ng0);

LAB61:    xsi_set_current_line(64, ng0);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng9)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB65;

LAB62:    if (t42 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t30) = 1;

LAB65:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB68:    goto LAB60;

LAB64:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB65;

LAB66:    xsi_set_current_line(64, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB68;

LAB71:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB72;

LAB73:    xsi_set_current_line(69, ng0);

LAB76:    xsi_set_current_line(70, ng0);
    t21 = (t0 + 1528U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB80;

LAB77:    if (t42 != 0)
        goto LAB79;

LAB78:    *((unsigned int *)t30) = 1;

LAB80:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB83:    goto LAB75;

LAB79:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB80;

LAB81:    xsi_set_current_line(70, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB83;

LAB86:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB87;

LAB88:    xsi_set_current_line(75, ng0);

LAB91:    xsi_set_current_line(76, ng0);
    t21 = (t0 + 1528U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng9)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB95;

LAB92:    if (t42 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t30) = 1;

LAB95:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB96;

LAB97:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB98:    goto LAB90;

LAB94:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB95;

LAB96:    xsi_set_current_line(76, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB98;

LAB101:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB102;

LAB103:    xsi_set_current_line(81, ng0);

LAB106:    xsi_set_current_line(82, ng0);
    t21 = (t0 + 1688U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB110;

LAB107:    if (t42 != 0)
        goto LAB109;

LAB108:    *((unsigned int *)t30) = 1;

LAB110:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB111;

LAB112:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB113:    goto LAB105;

LAB109:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(82, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB113;

LAB116:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB117;

LAB118:    xsi_set_current_line(87, ng0);

LAB121:    xsi_set_current_line(88, ng0);
    t21 = (t0 + 1688U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng9)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB125;

LAB122:    if (t42 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t30) = 1;

LAB125:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB128:    goto LAB120;

LAB124:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(88, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB128;

LAB131:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB132;

LAB133:    xsi_set_current_line(93, ng0);

LAB136:    xsi_set_current_line(94, ng0);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB140;

LAB137:    if (t42 != 0)
        goto LAB139;

LAB138:    *((unsigned int *)t30) = 1;

LAB140:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB141;

LAB142:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB143:    goto LAB135;

LAB139:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB140;

LAB141:    xsi_set_current_line(94, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB143;

LAB146:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB147;

LAB148:    xsi_set_current_line(99, ng0);

LAB151:    xsi_set_current_line(100, ng0);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng9)));
    memset(t30, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t21);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t29);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB155;

LAB152:    if (t42 != 0)
        goto LAB154;

LAB153:    *((unsigned int *)t30) = 1;

LAB155:    t32 = (t30 + 4);
    t47 = *((unsigned int *)t32);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB156;

LAB157:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 25);

LAB158:    goto LAB150;

LAB154:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB155;

LAB156:    xsi_set_current_line(100, ng0);
    t45 = (t0 + 2168U);
    t46 = *((char **)t45);
    t45 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t45, t46, 0, 0, 25, 0LL);
    goto LAB158;

LAB161:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB162;

LAB163:    xsi_set_current_line(105, ng0);

LAB166:    xsi_set_current_line(106, ng0);
    t21 = (t0 + 2168U);
    t22 = *((char **)t21);
    t21 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 25, 0LL);
    goto LAB165;

LAB169:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB170;

LAB171:    xsi_set_current_line(110, ng0);

LAB174:    xsi_set_current_line(111, ng0);
    t21 = (t0 + 2168U);
    t22 = *((char **)t21);
    t21 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 25, 0LL);
    goto LAB173;

}


extern void work_m_00000000000130718467_0878501032_init()
{
	static char *pe[] = {(void *)Cont_37_0,(void *)Always_38_1};
	xsi_register_didat("work_m_00000000000130718467_0878501032", "isim/main_tb_isim_beh.exe.sim/work/m_00000000000130718467_0878501032.didat");
	xsi_register_executes(pe);
}
