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

include device/samsung/msm8226-common/board/*.mk

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := device/samsung/msm8226-common/system.prop

# SELinux
include device/samsung/msm8226-common/sepolicy/sepolicy.mk

# Inherit from the proprietary version
-include vendor/samsung/msm8226-common/BoardConfigVendor.mk
