LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE           := fstab.default
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS     := ETC
LOCAL_SRC_FILES        := etc/fstab.default
LOCAL_MODULE_PATH      := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)
