LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),hot20i)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
