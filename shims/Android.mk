LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := wvm_shim.cpp
LOCAL_SHARED_LIBRARIES := libstagefright_foundation liblog libmedia libcutils
LOCAL_MODULE := libwvm_shim
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := imx175_shim.cpp
LOCAL_MODULE := libimx175_shim
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
