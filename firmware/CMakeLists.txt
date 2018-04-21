set(FIRMWARE_SOURCES
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_adc.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_cec.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_comp.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_crc.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dac.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dbgmcu.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_dma.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_exti.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_flash.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_gpio.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_i2c.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_iwdg.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_misc.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_pwr.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_rcc.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_rtc.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_spi.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_syscfg.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_tim.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_usart.c
	${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/src/stm32f0xx_wwdg.c
	)

add_definitions(-include ${CMAKE_CURRENT_SOURCE_DIR}/stm32f0xx_conf.h)

add_definitions(-ffreestanding)
add_definitions(-nostdlib)

add_library(firmware ${FIRMWARE_SOURCES})
