#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spacewar device
$(call inherit-product, device/nothing/spacewar/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set shipping API level (Indicates the first api level, device has been commercially launched on)
PRODUCT_SHIPPING_API_LEVEL := 31

# Device identifiers.
PRODUCT_NAME := lineage_spacewar
PRODUCT_DEVICE := spacewar
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Spacewar-user 12 SKQ1.211230.001 1673511218 release-keys" \
    PRODUCT_DEVICE=Spacewar \
    PRODUCT_NAME=Spacewar

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1673511218:user/release-keys
