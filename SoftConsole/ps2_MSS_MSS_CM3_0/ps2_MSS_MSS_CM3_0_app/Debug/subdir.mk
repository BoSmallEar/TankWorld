################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c \
../my_timer.c 

OBJS += \
./main.o \
./my_timer.o 

C_DEPS += \
./main.d \
./my_timer.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_spi\drivers\mss_spi -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\jimzhang\Documents\ps2try\ps2try\SoftConsole\ps2_MSS_MSS_CM3_0\ps2_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O1 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


