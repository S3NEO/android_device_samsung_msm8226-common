# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

VENDOR_PATH := device/samsung/msm8226-common

include device/samsung/msm8226-common/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(VENDOR_PATH)/include
# CMHW
BOARD_HARDWARE_CLASS += $(VENDOR_PATH)/cmhw

TARGET_USES_LEGACY_ADB_INTERFACE :=true

TARGET_LD_SHIM_LIBS += /system/lib/hw/camera.vendor.msm8226.so|libboringssl-compat.so:/system/vendor/lib/libqomx_jpegenc.so|libboringssl-compat.so:/system/lib/libcrypto.so|libboringssl-compat.so:/system/lib/libril.so|libril_shim.so:/system/vendor/lib/libwvm.so|libwvm_shim.so:/system/vendor/lib/libmmcamera_imx175.so|libimx175_shim.so
#HIDL
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/manifest.xml:system/vendor/manifest.xml

# Custom RIL class
BOARD_RIL_CLASS := ../../../$(VENDOR_PATH)/ril

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

