#
# Copyright (C) 2013 The Android Open-Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sensors.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true

LOCAL_CFLAGS := -DLOG_TAG=\"MultiHal\"

LOCAL_SRC_FILES := \
    multihal.cpp \
    SensorEventQueue.cpp \

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    liblog \
    libutils \
    libhardware

LOCAL_STRIP_MODULE := false
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := android.hardware.sensors@1.0-service.s3ve3g
LOCAL_INIT_RC := android.hardware.sensors@1.0-service.s3ve3g.rc
LOCAL_SRC_FILES := \
        service.cpp

LOCAL_SHARED_LIBRARIES := \
        liblog \
        libcutils \
        libdl \
        libbase \
        libutils

LOCAL_SHARED_LIBRARIES += \
        libhidlbase \
        libhidltransport \
        android.hardware.sensors@1.0

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under, $(LOCAL_PATH))
