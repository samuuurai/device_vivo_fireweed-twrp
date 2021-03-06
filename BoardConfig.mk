#
# Copyright 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Device Path
LOCAL_PATH := device/vivo/fireweed

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Kernel
BOARD_KERNEL_CMDLINE := 'console=ttyHSL0,115200,n8 androidboot.console=null androidboot.hardware=qcom user_debug=30 
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += vmalloc=512M androidboot.selinux=permissive'
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_BASE := 0x80000000  
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)  
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --cmdline $(BOARD_KERNEL_CMDLINE) --dt $(LOCAL_PATH)/prebuilt/dt

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_REMOVABLE_STORAGE := true

# Fstab
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

# QCOM Stuff
BOARD_USES_QCOM_HARDWARE := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

#Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# TWRP Stuff
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_TWRPAPP := true
TWRP_INCLUDE_LOGCAT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 100
TW_INCLUDE_CRYPTO := true
PLATFORM_SECURITY_PATCH := 2099-12-31
TW_USE_TOOLBOX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USES_LOGD := true







