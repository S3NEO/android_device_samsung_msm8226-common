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

# LineageHW
BOARD_HARDWARE_CLASS += $(VENDOR_PATH)/lineagehw

# Filesystem
TARGET_FS_CONFIG_GEN := device/samsung/msm8226-common/config.fs

# HIDL
DEVICE_MANIFEST_FILE := device/samsung/msm8226-common/manifest.xml
DEVICE_MATRIX_FILE := device/samsung/msm8226-common/compatibility_matrix.xml
    
# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true

# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# SELinux
include device/samsung/msm8226-common/sepolicy/sepolicy.mk

# Inherit from the proprietary version
-include vendor/samsung/msm8226-common/BoardConfigVendor.mk
