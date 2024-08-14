#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a15x device
$(call inherit-product, device/samsung/a15x/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a15x/recovery/root,recovery/root)

PRODUCT_DEVICE := a15x
PRODUCT_NAME := twrp_a15x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A156E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
