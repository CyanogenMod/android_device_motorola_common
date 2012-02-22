# Copyright 2005 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	alarm.c \
	draw.c \
	events.c \
	screen.c \
	main.c

ifneq ($(BOARD_CUSTOM_LIGHTS_CONTROL),)
  LOCAL_SRC_FILES += $(BOARD_CUSTOM_LIGHTS_CONTROL)
else
  LOCAL_SRC_FILES += hardware.c
endif


LOCAL_STATIC_LIBRARIES := libunz libcutils libc
LOCAL_SHARED_LIBRARIES := libhardware
LOCAL_C_INCLUDES := external/zlib
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= charge_only_mode

include $(BUILD_EXECUTABLE)

