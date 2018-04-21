cmake_minimum_required(VERSION 3.6.3)

set(CMAKE_TOOLCHAIN_FILE cmake/toolchain.cmake)

project(stm32f0_cmake_cpp_template C CXX ASM)

include(cmake/binary_targets.cmake)

if(NOT STD_PERIPHERAL_LIBRARY_PATH)
	message(FATAL_ERROR "Please specify the absolute path to STM32F0 Standard Peripheral Library in STD_PERIPHERAL_LIBRARY_PATH variable. It is necessary for building peripheral library.")
endif()

set(DEVICE "STM32F030" CACHE STRING "Target STM32 device (one of STM32F030, STM32F031, STM32F051, STM32F072, STM32F042, STM32F091, STM32F070xB, STM32F070x6, STM32F030xC)")

add_definitions("-D${DEVICE}")

include_directories(firmware)
include_directories(${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/CMSIS/Include)
include_directories(${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/CMSIS/Device/ST/STM32F0xx/Include)
include_directories(${STD_PERIPHERAL_LIBRARY_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/inc)

set(SYSTEM_SOURCES
	${PROJECT_SOURCE_DIR}/system/system_stm32f0xx.c
	${PROJECT_SOURCE_DIR}/system/startup_stm32f0xx.s
)

add_subdirectory(firmware)
add_subdirectory(src)
