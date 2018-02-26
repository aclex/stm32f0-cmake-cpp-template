# Minimal CMake project template for STM32F0

Trying to make the smallest possible template for C++ project for STM32F0 MCU family built with CMake.

Requirements
------------
- GCC-based toolchain for ARM Cortex-M0 (e.g. [the official one](https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads))
- STM32F0 Discovery kit [firmware package](http://www.st.com/content/st_com/en/products/embedded-software/mcus-embedded-software/stm32-embedded-software/stm32-standard-peripheral-library-expansion/stsw-stm32049.html)

Preparation steps
-----------------
1. Clone the project and rename it to your heart's delight:
```
git clone https://github.com/aclex/stm32f0-cmake-cpp-template.git
mv -v stm32f0-cmake-cpp-template my_project
```
2. Make sure you have all the cross tools in your `$PATH` (example output):
```
> which arm-none-eabi-c++
/usr/cross/arm/cortex-m0/gcc-arm-none-eabi-7-2017-q4-major/bin/arm-none-eabi-c++
```
3. Enter the project template, create build directory and configure the build with specified absolute path to the unpacked STM32F0 firmware package:
```
cd my_project
mkdir build && cd build
cmake -DSTM_FIRMWARE_PATH=<path-to-the-directory-where-you-unpacked-stm-firmware-archive> ..
make
```
Test program blinking the blue LED on Discovery board will be built.

4. (Optional) Flash the program with e.g. [st-link](https://github.com/texane/stlink):
```
st-flash --format ihex write src/blink.hex
```

What's inside
-------------
* **./cmake**
	- toolchain.cmake - CMake toolchain file with the necessary settings for compilation and linking
	- binary_targets.cmake - a couple of custom targets for creating `*.bin` and `*.hex` binaries along with default ELF output
* **./firmware** - directory for building STM32F0 firmware static library to link the project with, in order to have access to peripherals of the MCU
	- stm32f0xx_conf.h - file with inclusions of all the firmware peripheral library headers and `assert_param` marco definition, which are necessary to build something with firmware peripheral library (including itself); usually found in each demonstration project of the firmware
* **./system** - necessary boilerplate and startup code and linking scripts taken untouched from [stm32f0-discovery-basic-template](https://github.com/szczys/stm32f0-discovery-basic-template). Please, consult its README for additional information.
