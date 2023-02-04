#
# Copyright (C) 2018 The Android-x86 Open Source Project
#
# Licensed under the GNU General Public License Version 2 or later.
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.gnu.org/licenses/gpl.html
#

LOCAL_PATH := $(call my-dir)
TARGET_EXTRA_KERNEL_MODULES += v4l2loopback
LOCAL_MODULE := $(notdir $(LOCAL_PATH))
EXTRA_KERNEL_MODULE_PATH_$(LOCAL_MODULE) := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE := v4l2loopback-ctl
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter -Wno-pointer-sign -Wno-return-type
LOCAL_SRC_FILES := utils/v4l2loopback-ctl.c
include $(BUILD_EXECUTABLE)
