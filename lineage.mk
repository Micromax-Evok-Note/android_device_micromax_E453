#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

LOCAL_PATH := device/micromax/E453


# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_E453.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifier
PRODUCT_BRAND := Micromax
PRODUCT_DEVICE := E453
PRODUCT_MANUFACTURER := Micromax
PRODUCT_MODEL := Micromax E453
PRODUCT_NAME := lineage_E453
PRODUCT_RELEASE_NAME := E453

#TODO: whats this?
#PRODUCT_GMS_CLIENTID_BASE := android-micromax


## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Micromax/E453/E453:6.0/MRA58K/1482572574:user/release-keys \
    PRIVATE_BUILD_DESC="E453-user 6.0 MRA58K 1482572574 release-keys"
endif
