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
static const char *ng0 = "E:/xili/Three_to_Eight_decoder/Three_to_Eight_decoder.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3597875208_3212880686_p_0(char *t0)
{
    char t6[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    int t18;
    int t19;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (t0 + 1808U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (1U + 1U);
    t16 = (t15 + 1U);
    memcpy(t13, t8, t16);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t1 = (t0 + 5018);
    t17 = xsi_mem_cmp(t1, t2, 3U);
    if (t17 == 1)
        goto LAB3;

LAB11:    t7 = (t0 + 5021);
    t18 = xsi_mem_cmp(t7, t2, 3U);
    if (t18 == 1)
        goto LAB4;

LAB12:    t9 = (t0 + 5024);
    t19 = xsi_mem_cmp(t9, t2, 3U);
    if (t19 == 1)
        goto LAB5;

LAB13:    t13 = (t0 + 5027);
    t20 = xsi_mem_cmp(t13, t2, 3U);
    if (t20 == 1)
        goto LAB6;

LAB14:    t21 = (t0 + 5030);
    t23 = xsi_mem_cmp(t21, t2, 3U);
    if (t23 == 1)
        goto LAB7;

LAB15:    t24 = (t0 + 5033);
    t26 = xsi_mem_cmp(t24, t2, 3U);
    if (t26 == 1)
        goto LAB8;

LAB16:    t27 = (t0 + 5036);
    t29 = xsi_mem_cmp(t27, t2, 3U);
    if (t29 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5095);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB2:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(46, ng0);
    t30 = (t0 + 5039);
    t32 = (t0 + 3192);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 8U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB4:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 5047);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5055);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5063);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5071);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5079);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB9:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5087);
    t4 = (t0 + 3192);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB18:;
}


extern void work_a_3597875208_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3597875208_3212880686_p_0};
	xsi_register_didat("work_a_3597875208_3212880686", "isim/Three_to_Eight_decoder_isim_beh.exe.sim/work/a_3597875208_3212880686.didat");
	xsi_register_executes(pe);
}
