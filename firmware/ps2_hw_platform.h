#ifndef ps2_HW_PLATFORM_H_
#define ps2_HW_PLATFORM_H_
/*****************************************************************************
*
*Created by Microsemi SmartDesign  Mon Apr 22 14:29:23 2019
*
*Memory map specification for peripherals in ps2
*/

/*-----------------------------------------------------------------------------
* MSS_CM3_0 subsystem memory map
* Master(s) for this subsystem: MSS_CM3_0 
*---------------------------------------------------------------------------*/
#define PWM_H_0                         0x40050000U
#define PWM_V_0                         0x40050100U
#define TIMERWRAPPER_0                  0x40050200U
#define DELAYWRAPPER_0                  0x40050300U
#define MOTOR_LEFT_0                    0x40050400U
#define MOTOR_RIGHT_0                   0x40050500U
#define FIRE_0                          0x40050600U
#define LED_RG_0                        0x40050700U


#endif /* ps2_HW_PLATFORM_H_*/
