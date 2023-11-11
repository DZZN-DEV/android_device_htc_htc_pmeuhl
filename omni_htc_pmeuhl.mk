#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from htc_pmeuhl device
$(call inherit-product, device/htc/htc_pmeuhl/device.mk)

PRODUCT_DEVICE := htc_pmeuhl
PRODUCT_NAME := omni_htc_pmeuhl
PRODUCT_BRAND := htc
PRODUCT_MODEL := MSM8996 for arm64
PRODUCT_MANUFACTURER := htc

PRODUCT_GMS_CLIENTID_BASE := android-htc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="3.16.401.2 9.0_g CL1012001 release-keys"

BUILD_FINGERPRINT := htc/pmeuhl_00401/htc_pmeuhl:8.0.0/OPR1.170623.027/1012001.2:user/release-keys
