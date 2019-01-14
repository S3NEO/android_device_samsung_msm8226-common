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

#-include vendor/qcom/proprietary/common/msm8226/BoardConfigVendor.mk

VENDOR_PATH := device/samsung/msm8226-common

#QC_PROP_ROOT := vendor/qcom/proprietary
#PROTOBUF_SUPPORTED := true

include device/samsung/msm8226-common/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(VENDOR_PATH)/include

# CMHW
BOARD_HARDWARE_CLASS += $(VENDOR_PATH)/cmhw

# Filesystem
TARGET_FS_CONFIG_GEN := device/samsung/msm8226-common/config.fs

#ADB
TARGET_USES_LEGACY_ADB_INTERFACE :=true

#HIDL
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/manifest.xml:system/vendor/manifest.xml

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# FMRadio
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true
BOARD_HAVE_QCOM_FM := true

# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include device/qcom/sepolicy/legacy-sepolicy.mk
