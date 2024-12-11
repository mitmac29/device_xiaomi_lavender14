#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

WITH_GMS := true
$(call inherit-product-if-exists, vendor/google/gms/products/gms.mk)
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true

TARGET_USES_BLUR_RECENT := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ADD_CUSTOM_APPS := true
USE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
PRODUCT_NO_CAMERA := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
#TARGET_INCLUDE_PIXEL_IMS: true
#TARGET_INCLUDE_PIXEL_EUICC: true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_SUPPORTS_PREBUILT_UPDATABLE_APEX := true
TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_SUPPORTS_CLEAR_CALLING := true

PRODUCT_NAME := pixelstar_lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGCNXM:user/release-keys
