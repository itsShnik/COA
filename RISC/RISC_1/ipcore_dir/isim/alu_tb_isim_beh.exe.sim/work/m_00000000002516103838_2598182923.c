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
static const char *ng0 = "E:/GROUP 16/Asg10/Asg10/ALU_tb.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {16U, 0U};
static unsigned int ng3[] = {240217U, 0U};
static unsigned int ng4[] = {86871U, 0U};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {960869U, 0U};
static unsigned int ng7[] = {347456U, 0U};
static unsigned int ng8[] = {4294967295U, 0U};
static unsigned int ng9[] = {2151686144U, 0U};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {1073741824U, 0U};
static unsigned int ng12[] = {2U, 0U};
static unsigned int ng13[] = {3221225471U, 0U};
static unsigned int ng14[] = {3U, 0U};
static unsigned int ng15[] = {4U, 0U};
static unsigned int ng16[] = {32U, 0U};
static unsigned int ng17[] = {4202496U, 0U};
static int ng18[] = {32, 0};
static int ng19[] = {5, 0};
static unsigned int ng20[] = {33U, 0U};
static unsigned int ng21[] = {2147483650U, 0U};



static void Always_56_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
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
    char *t24;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3616);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2888);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_57_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);

LAB4:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB1;

}


extern void work_m_00000000002516103838_2598182923_init()
{
	static char *pe[] = {(void *)Always_56_0,(void *)Initial_57_1};
	xsi_register_didat("work_m_00000000002516103838_2598182923", "isim/alu_tb_isim_beh.exe.sim/work/m_00000000002516103838_2598182923.didat");
	xsi_register_executes(pe);
}
