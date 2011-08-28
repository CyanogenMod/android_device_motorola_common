# Copyright 2011 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	alarm.c \
	draw.c \
	events.c \
	hardware.c \
	screen.c \
	main.c

LOCAL_STATIC_LIBRARIES := libunz libcutils libc

LOCAL_C_INCLUDES := external/zlib

LOCAL_MODULE := moto_charge_only_mode
LOCAL_MODULE_STEM := charge_only_mode

# Device screen size
LOCAL_CFLAGS += -DFB_WIDTH=480 -DFB_HEIGHT=854

# Battery position
LOCAL_CFLAGS += -DPNG_LEFT=105 -DPNG_TOP=71
LOCAL_CFLAGS += -DPNG_BOTTOM=318

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
