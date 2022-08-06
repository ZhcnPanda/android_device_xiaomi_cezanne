#
# Copyright (C) 2022 The Kaleidoscope Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from cezanne device makefile
$(call inherit-product, device/xiaomi/cezanne/device.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/kscope/config/mobile.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kscope_cezanne
PRODUCT_DEVICE := cezanne
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006J10C
PRODUCT_MANUFACTURER := Xiaomi
DEVICE_MAINTAINER := ZhcnPanda

TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cezanne-user 12 SP1A.210812.016 V13.0.3.0.SJNCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Redmi/cezanne/cezanne:12/SP1A.210812.016/V13.0.3.0.SJNCNXM:user/release-keys"