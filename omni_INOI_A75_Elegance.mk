#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from INOI_A75_Elegance device
$(call inherit-product, device/inoi_limited/INOI_A75_Elegance/device.mk)

PRODUCT_DEVICE := INOI_A75_Elegance
PRODUCT_NAME := omni_INOI_A75_Elegance
PRODUCT_BRAND := INOI
PRODUCT_MODEL := A750
PRODUCT_MANUFACTURER := inoi_limited

PRODUCT_GMS_CLIENTID_BASE := android-inoi_limited

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="INOI_A750_EEA_U_V1_20241226_user"

BUILD_FINGERPRINT := INOI/INOI_A75_Elegance/INOI_A75_Elegance:14/UP1A.231005.007/41226:user/release-keys
