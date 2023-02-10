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
    work_m_00000000001996008150_3069169239_init();
    work_m_00000000003590015259_2841360810_init();
    work_m_00000000002999460852_1733832700_init();
    work_m_00000000003595122394_1861809063_init();
    work_m_00000000000048769520_0467708899_init();
    work_m_00000000002797878922_1531285090_init();
    work_m_00000000003847092577_0757879789_init();
    work_m_00000000003289146116_0621066737_init();
    work_m_00000000002552989262_1785967555_init();
    work_m_00000000003435912916_2483539380_init();
    work_m_00000000003574004855_3207241335_init();
    work_m_00000000003801814800_1579609468_init();
    work_m_00000000003323468957_0742571764_init();
    work_m_00000000002063433318_0143159866_init();
    work_m_00000000003943954537_0598024697_init();
    work_m_00000000002513504048_3593554930_init();
    work_m_00000000001448977098_1329076808_init();
    work_m_00000000002659888950_0886308060_init();
    work_m_00000000001401762785_0105961027_init();
    work_m_00000000001868775385_0580466374_init();
    work_m_00000000000338927612_0595041136_init();
    work_m_00000000003815899638_2924402094_init();
    work_m_00000000001691791116_3757821884_init();
    work_m_00000000000290637390_2021571278_init();
    work_m_00000000000177328128_3027548060_init();
    work_m_00000000002360583872_4243249895_init();
    work_m_00000000003204659847_4063318741_init();
    work_m_00000000004152635855_0257141679_init();
    work_m_00000000002112655766_3033079009_init();
    work_m_00000000003780188730_2618856524_init();
    work_m_00000000000121253491_1742365919_init();
    work_m_00000000001719257529_0568701769_init();
    work_m_00000000000576136775_3037777339_init();
    work_m_00000000003288512670_3877310806_init();
    work_m_00000000002047498008_1250343676_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_1250343676");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}