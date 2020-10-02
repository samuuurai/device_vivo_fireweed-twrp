#
#
#
#
#
#
#

# Device Path
LOCAL_PATH := device/vivo/fireweed

# Missing deps
ALLOW_MISSING_DEPENDENCIES=true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7I
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=null androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=512M product.version=PD1505F_EX_A_1.10.5
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_BASE := 0x80000000  
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --pagesize $(BOARD_KERNEL_PAGESIZE) --base $(BOARD_KERNEL_BASE) --cmdline $(BOARD_KERNEL_CMDLINE) --dt $(LOCAL_PATH)/prebuilt/dt.img

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 26391790
BOARD_SYSTEMIMAGE_PARTITION_SIZE := #
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_REMOVABLE_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Fstab
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

# QCOM Stuff
BOARD_USES_QCOM_HARDWARE := true

# AVB
BOARD_AVB_ENABLE := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# TWRP Stuff
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_SCREEN_BLANK_ON_BOOT := false
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 489

# IDK 
PLATFORM_SECURITY_PATCH := 2099-12-31

# OTA (Never required)
TARGET_OTA_ASSERT_DEVICE := fireweed





