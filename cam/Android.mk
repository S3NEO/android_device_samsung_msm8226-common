ifeq ($(strip $(TARGET_USE_NEO_HAL)),true)
include $(call all-subdir-makefiles)
endif
