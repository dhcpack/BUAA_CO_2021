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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002927747544_3092946469_init();
    work_m_00000000003283007957_1785967555_init();
    work_m_00000000002126275940_0621066737_init();
    work_m_00000000003322241596_1579609468_init();
    work_m_00000000000168439453_0757879789_init();
    work_m_00000000004012202744_0112637215_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004012202744_0112637215");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
