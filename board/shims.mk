# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libwvm.so|libwvm_shim.so \
    /system/lib/libcrypto.so|libboringssl-compat.so \
