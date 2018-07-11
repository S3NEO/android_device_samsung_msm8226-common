LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    helper.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog libcutils

LOCAL_MODULE_PATH := /system/bin
LOCAL_MODULE := camera_helper
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
