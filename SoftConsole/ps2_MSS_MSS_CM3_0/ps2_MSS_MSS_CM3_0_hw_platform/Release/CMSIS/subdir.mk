################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/brownout_isr.c \
../CMSIS/core_cm3.c \
../CMSIS/system_a2fxxxm3.c 

OBJS += \
./CMSIS/brownout_isr.o \
./CMSIS/core_cm3.o \
./CMSIS/system_a2fxxxm3.o 

C_DEPS += \
./CMSIS/brownout_isr.d \
./CMSIS/core_cm3.d \
./CMSIS/system_a2fxxxm3.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/%.o: ../CMSIS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DNDEBUG -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers\mss_spi -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O2 -ffunction-sections -fdata-sections -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

