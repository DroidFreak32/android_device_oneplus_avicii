#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common ResurrectionRemix stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

PRODUCT_NAME := rr_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Nord

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlusNord \
    PRODUCT_NAME=OnePlusNord \
    PRIVATE_BUILD_DESC="Nord-user 10 QKQ1.200412.002 2010231954 release-keys"

BUILD_FINGERPRINT := "OnePlus/Nord/Nord:10/QKQ1.200412.002/2010231954:user/release-keys"

# Include gapps
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
$(call inherit-product, vendor/gapps/config.mk)

# Additional stuff
TARGET_HAS_FOD := true
BUILD_RR_WALLPAPERS:= true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := DroidFreak32

WITH_CUSTOM_LAUNCHER := NovaLauncher
WITH_SHISHU_BROWSER := ViaBrowser
WITH_ADAWAY := false
WITH_SHISHU_FM := true

include vendor/shishu/common.mk
