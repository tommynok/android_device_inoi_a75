#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from INOI_A75_Elegance device
$(call inherit-product, device/inoi_limited/INOI_A75_Elegance/device.mk)

PRODUCT_DEVICE := INOI_A75_Elegance
PRODUCT_NAME := twrp_INOI_A75_Elegance
PRODUCT_BRAND := INOI
PRODUCT_MODEL := A750
PRODUCT_MANUFACTURER := inoi_limited
