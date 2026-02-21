#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/inoi_limited/INOI_A75_Elegance

# Разрешить сборку с минимальным манифестом
ALLOW_MISSING_DEPENDENCIES := true

# A/B и Virtual A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    vbmeta_system \
    vbmeta_vendor \
    boot \
    odm_dlkm \
    vendor_dlkm \
    system \
    product \
    system_ext \
    vendor 

# Интеграция рекавери в vendor_boot (Android 14)
BOARD_HAS_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_USES_RECOVERY_AS_BOOT := false 

# Архитектура
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a 

# Загрузчик
TARGET_BOOTLOADER_BOARD_NAME := k6789v1_64
TARGET_NO_BOOTLOADER := true 

# Ядро - GKI Header 4
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x26f08000
BOARD_KERNEL_TAGS_OFFSET := 0x07c88000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Предсобранное ядро
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --dtb $(TARGET_PREBUILT_DTB)

# Разделы
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := inoi_limited_dynamic_partitions
BOARD_INOI_LIMITED_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product vendor_dlkm odm_dlkm
BOARD_INOI_LIMITED_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_MAIN_FASTBOOT_DYNAMIC_PARTITIONS_LIST := $(BOARD_INOI_LIMITED_DYNAMIC_PARTITIONS_PARTITION_LIST)

# Платформа
TARGET_BOARD_PLATFORM := mt6789 

# Настройки OrangeFox
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := false
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
