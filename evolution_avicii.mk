#
# Copyright (C) 2021 The Evolution X Project
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

# Inherit from those products. Most Specific First.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common Evolution X stuff!
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_USES_CUSTOM_AVB_KEY := true
EXTRA_FOD_ANIMATIONS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_EXTRA_FOD_ANIMATIONS := true

PRODUCT_NAME := evolution_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2001
PRODUCT_RELEASE_NAME := OnePlus Nord
CUSTOM_DEVICE := Nord

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Nord \
    PRODUCT_NAME=Nord
