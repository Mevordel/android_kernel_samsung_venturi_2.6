#!/bin/sh
#export PATH=/home/jonathan/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin
make CROSS_COMPILE=arm-eabi- ARCH=arm yp_g70_usa_defconfig
#get rid of the damn + after the version
export LOCALVERSION=""
export KBUILD_BUILD_HOST="ThinkPad-X220"
export KBUILD_BUILD_USER="JackpotClavin"

make CROSS_COMPILE=arm-eabi- ARCH=arm
# adb shell reboot download
# sleep 5
# heimdall flash --kernel arch/arm/boot/zImag
