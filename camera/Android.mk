ifeq ($(TARGET_PROVIDES_CAMERA_HAL),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    system/media/camera/include

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils libcutils libdl libgui libhidltransport libsensor \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0
    
LOCAL_STATIC_LIBRARIES := \
    libbase \
    libarect    

LOCAL_HEADER_LIBRARIES := libnativebase_headers

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.msm8226
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
