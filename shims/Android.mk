LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := wvm_shim.cpp
LOCAL_SHARED_LIBRARIES := libstagefright_foundation liblog libmedia libcutils
LOCAL_MODULE := libwvm_shim
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := imx75_shim
LOCAL_MODULE := imx174_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)
