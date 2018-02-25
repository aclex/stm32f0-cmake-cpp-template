set(FIRMWARE_SOURCES
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_adc.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_cec.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_comp.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_crc.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dac.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dbgmcu.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dma.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_exti.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_flash.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_gpio.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_i2c.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_iwdg.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_misc.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_pwr.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_rcc.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_rtc.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_spi.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_syscfg.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_tim.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_usart.c
	${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_wwdg.c
	)

add_definitions(-include ${CMAKE_CURRENT_SOURCE_DIR}/stm32f0xx_conf.h)

add_definitions(-ffreestanding)
add_definitions(-nostdlib)

add_library(firmware ${FIRMWARE_SOURCES})
