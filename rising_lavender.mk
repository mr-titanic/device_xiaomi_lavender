#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
# RisingOS variables
RISING_MAINTAINER := @Ritikk0011

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps Config
WITH_GMS := true
TARGET_CORE_GMS := true
RISING_CHIPSET := SDM669
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true





PRODUCT_NAME := rising_lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

#PRODUCT_SYSTEM_PROPERTIES += \
     #ro.spos.maintainer=@Ritikk0011

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGCNXM:user/release-keys
