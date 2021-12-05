# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

AB_OTA_PARTITIONS += \
    boot \
    system \
    vbmeta \
    product

$(call inherit-product, device/motorola/dynamic_common/dynamic_common.mk)

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Extra packages
PRODUCT_PACKAGES += \
    bootctrl.trinket.recovery \
    android.hardware.light@2.0-service.trinket \
    MotoActions \
    RemovePackages

# Device-specific overlays
PRODUCT_PACKAGES += \
    MotoRav \
    MotoRavT \
    MotoSofia \
    MotoSofiaP \
    MotoSofiaPSprout \
    MotoSofiaR \
    SystemUI_MotoRav \
    SystemUI_MotoRavT \
    SystemUI_MotoSofia \
    SystemUI_MotoSofiaP \
    SystemUI_MotoSofiaPSprout \
    SystemUI_MotoSofiaR
