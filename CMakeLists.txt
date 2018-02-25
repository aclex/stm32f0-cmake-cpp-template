cmake_minimum_required(VERSION 3.6.3)

set(CMAKE_TOOLCHAIN_FILE cmake/toolchain.cmake)

project(stm32f0_cmake_cpp_template C CXX ASM)

include(cmake/binary_targets.cmake)

if(NOT STM_FIRMWARE_PATH)
	message(FATAL_ERROR "Please specify the absolute path to STM32F0 Discovery kit firmware package in STM_FIRMWARE_PATH variable. It is necessary for building peripheral library.")
endif()

include_directories(firmware)
include_directories(${STM_FIRMWARE_PATH}/Libraries/CMSIS/Include)
include_directories(${STM_FIRMWARE_PATH}/Libraries/CMSIS/Device/ST/STM32F0xx/Include)
include_directories(${STM_FIRMWARE_PATH}/Libraries/STM32F0xx_StdPeriph_Driver/inc)

set(SYSTEM_SOURCES
	${PROJECT_SOURCE_DIR}/system/system_stm32f0xx.c
	${PROJECT_SOURCE_DIR}/system/startup_stm32f0xx.s
)

add_subdirectory(firmware)
add_subdirectory(src)
