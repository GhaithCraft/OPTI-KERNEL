#!/bin/bash


export CROSS_COMPILE=/home/ghaith/android/Toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64

make Optikernel_a7y17lte_defconfig
#make Optikernel_a7y17lte_defconfig
make -j
