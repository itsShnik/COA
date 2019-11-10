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
static const char *ng0 = "D:/Amatya Sharma/COA/Lab/ASG10_4_11/RISC_1/InstructionDecoder.v";



static void Always_114_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(115, ng0);

LAB5:    xsi_set_current_line(116, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 25);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 25);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 127U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 127U);
    t14 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 7, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 20);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 20);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 15);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 15);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 10);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 10);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 33554431U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 33554431U);
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 25, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 1048575U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 1048575U);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 20, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 32767U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 32767U);
    t6 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t6, t4, 0, 0, 15, 0LL);
    goto LAB2;

}


extern void work_m_00000000003949492933_1273460063_init()
{
	static char *pe[] = {(void *)Always_114_0};
	xsi_register_didat("work_m_00000000003949492933_1273460063", "isim/main_tb_isim_beh.exe.sim/work/m_00000000003949492933_1273460063.didat");
	xsi_register_executes(pe);
}
