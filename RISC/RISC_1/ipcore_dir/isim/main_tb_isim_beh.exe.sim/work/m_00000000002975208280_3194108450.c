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
static const char *ng0 = "D:/Amatya Sharma/COA/Lab/ASG10_4_11/RISC_1/RISCMain.v";
static int ng1[] = {2, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};



static void Always_32_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t10[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;

LAB0:    t1 = (t0 + 8128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 8944);
    *((int *)t2) = 1;
    t3 = (t0 + 8160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t6 = (t0 + 7048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t11 = (t8 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB7;

LAB6:    t12 = (t9 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t8) < *((unsigned int *)t9))
        goto LAB9;

LAB8:    *((unsigned int *)t10) = 1;

LAB9:    memset(t5, 0, 8);
    t14 = (t10 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t10);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t14) != 0)
        goto LAB13;

LAB14:    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB15;

LAB16:    t26 = *((unsigned int *)t5);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t21) > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t5) > 0)
        goto LAB21;

LAB22:    memcpy(t4, t34, 8);

LAB23:    t35 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t35, t4, 0, 0, 27, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t10, 0, 8);
    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB25;

LAB24:    t9 = (t7 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB25;

LAB28:    if (*((unsigned int *)t6) < *((unsigned int *)t7))
        goto LAB26;

LAB27:    memset(t5, 0, 8);
    t12 = (t10 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (~(t15));
    t17 = *((unsigned int *)t10);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t12) != 0)
        goto LAB31;

LAB32:    t14 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = *((unsigned int *)t14);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB33;

LAB34:    t26 = *((unsigned int *)t5);
    t27 = (~(t26));
    t28 = *((unsigned int *)t14);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t14) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t5) > 0)
        goto LAB39;

LAB40:    memcpy(t4, t21, 8);

LAB41:    t25 = (t0 + 7208);
    xsi_vlogvar_wait_assign_value(t25, t4, 0, 0, 1, 0LL);
    goto LAB2;

LAB7:    t13 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t5) = 1;
    goto LAB14;

LAB13:    t20 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB14;

LAB15:    t25 = ((char*)((ng2)));
    goto LAB16;

LAB17:    t30 = (t0 + 7048);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_add(t34, 32, t32, 27, t33, 32);
    goto LAB18;

LAB19:    xsi_vlog_unsigned_bit_combine(t4, 32, t25, 32, t34, 32);
    goto LAB23;

LAB21:    memcpy(t4, t25, 8);
    goto LAB23;

LAB25:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB27;

LAB26:    *((unsigned int *)t10) = 1;
    goto LAB27;

LAB29:    *((unsigned int *)t5) = 1;
    goto LAB32;

LAB31:    t13 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB32;

LAB33:    t20 = ((char*)((ng4)));
    goto LAB34;

LAB35:    t21 = ((char*)((ng5)));
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t4, 1, t20, 1, t21, 1);
    goto LAB41;

LAB39:    memcpy(t4, t20, 8);
    goto LAB41;

}

static void Cont_37_1(char *t0)
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

LAB0:    t1 = (t0 + 8376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 8960);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_109_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 8624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 9120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 8976);
    *((int *)t8) = 1;

LAB1:    return;
}


extern void work_m_00000000002975208280_3194108450_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Cont_37_1,(void *)Cont_109_2};
	xsi_register_didat("work_m_00000000002975208280_3194108450", "isim/main_tb_isim_beh.exe.sim/work/m_00000000002975208280_3194108450.didat");
	xsi_register_executes(pe);
}
