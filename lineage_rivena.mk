#
# Copyright (C) 2025 The LineageOS Project
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

# Inherit some common CustomRom stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/realme/rivena/device.mk)

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Sakura stuff
SAKURA_OFFICIAL := false
SAKURA_MAINTAINER := ermyltsor
SAKURA_BUILD_TYPE := gapps

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_rivena
PRODUCT_DEVICE := rivena
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3366
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX3366
PRODUCT_SYSTEM_DEVICE := RE546F

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3366-user 13 TP1A.220905.001 R.149e3f2-1-7dec2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3366/RE546F:13/TP1A.220905.001/R.149e3f2-1-7dec2:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
