#!/bin/bash
#Cleanup before build

echo "Compile wtih GCC 6.4.1 Toolchain"
export CROSS_COMPILE=/home/ghaith/android/Toolchains/aarch64-cortex_a53-linux-gnueabi-master/bin/aarch64-cortex_a53-linux-gnueabi-

#export CROSS_COMPILE=/home/ghaith/android/Toolchains/gcc-linaro-7.1.1-2017.08-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu-
ARCH=arm64

echo "CleanUp"
make clean && make mrproper

echo "Stock DEFCON"
make Optikernel-a7y17lte_defconfig
make -j3
