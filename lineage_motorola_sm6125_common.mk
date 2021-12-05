# Copyright (C) 2021 The OmniROM Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

PRODUCT_EXTRA_VNDK_VERSIONS := 29

TARGET_BOOTANIMATION_SIZE := 1080p

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/motorola/motorola_sm6125_common/prebuilt/product,product) \
    $(call find-copy-subdir-files,*,device/motorola/motorola_sm6125_common/prebuilt/system,system)

$(call inherit-product, device/motorola/dynamic_common/lineage-dynamic_common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/motorola/motorola_sm6125_common/sm6125_common.mk)

PRODUCT_SHIPPING_API_LEVEL := 29

# Discard inherited values and use our own instead.
PRODUCT_NAME := lineage_motorola_sm6125_common
PRODUCT_DEVICE := motorola_sm6125_common
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g8 power

TARGET_DEVICE := Moto G8 Power
PRODUCT_SYSTEM_NAME := Moto G8 Power

TARGET_VENDOR := motorola

PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_gl_backpressure=0 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1 \
    ro.config.use_compaction=true \
    ro.config.compact_action_1=4 \
    ro.config.compact_action_2=2 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.thrashing_limit=60 \
    ro.lmk.swap_free_low_percentage=20 \
    ro.lmk.swap_util_max=80 \
    ro.lmk.psi_complete_stall_ms=80

DEVICE_PACKAGE_OVERLAYS += device/motorola/motorola_sm6125_common/overlay

$(call inherit-product, vendor/motorola/sm6125_common/sm6125_common-vendor.mk)
