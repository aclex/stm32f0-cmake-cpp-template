set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)

# don't use ${PROJECT_*_DIR} variables, as we can be used before the `project()` command
# don't use also ${CMAKE_*_SOURCE_DIR} variables, as we can be included as subproject
set(LINKER_SCRIPT_DIR ${CMAKE_CURRENT_LIST_DIR}/../system/ldscripts)
set(LINKER_SCRIPT ${LINKER_SCRIPT_DIR}/stm32f0.ld)

# switch off host environment flags settings,
# as they're unlikely suitable for our embedded cross-compilation
unset(ENV{CFLAGS})
unset(ENV{CXXFLAGS})

set(CPU_FLAGS "-mcpu=cortex-m0 -mthumb")
set(COMMON_FLAGS "${CPU_FLAGS} -ffunction-sections -fdata-sections -gdwarf-2")

set(CMAKE_C_FLAGS_INIT ${COMMON_FLAGS})
set(CMAKE_CXX_FLAGS_INIT ${COMMON_FLAGS})
set(CMAKE_ASM_FLAGS_INIT ${CPU_FLAGS})

set(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-gc-sections -specs=nosys.specs -specs=nano.specs -L${LINKER_SCRIPT_DIR} -T${LINKER_SCRIPT}")
