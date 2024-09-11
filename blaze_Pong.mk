#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common blaze stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := blaze_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065
PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong

# SDCard Config
PRODUCT_CHARACTERISTICS := nosdcard

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name for Play Store
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Pong-user 12 SKQ1.230722.001 2406280430 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nothing/Pong/Pong:12/SKQ1.230722.001/2406280430:user/release-keys

# Flags
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := Butterfingers
TARGET_UDFPS_ANIMATIONS := true
WITH_GAPPS := true
