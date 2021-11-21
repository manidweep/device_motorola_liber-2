#
# Copyright (C) 2017-2020 The LineageOS Project
# Copyright (C) 2022 The EvolutionX Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Official Tag
EVO_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_GAPPS_ARCH := arm64

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola One Fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build fingerprint
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="liber_retail-user 10 QPIS30.73-33-6 fffd8e release-keys" \
    PRODUCT_NAME=liber_retail

PRODUCT_GMS_CLIENTID_BASE := android-motorola
