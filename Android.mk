#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),figo)

# OpenCL Symlinks
LIBOPENCL1_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1
$(LIBOPENCL1_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/libOpenCL.so.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib/libOpenCL.so $@

LIBOPENCL641_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1
$(LIBOPENCL641_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libOpenCL.so.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so $@

LIBOPENCL11_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1.1
$(LIBOPENCL11_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/libOpenCL.so.1.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1 $@

LIBOPENCL6411_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1.1
$(LIBOPENCL6411_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libOpenCL.so.1.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1 $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(LIBOPENCL1_SYMLINK) \
	$(LIBOPENCL641_SYMLINK) \
	$(LIBOPENCL11_SYMLINK) \
	$(LIBOPENCL6411_SYMLINK)

# Vulkan Symlinks
LIBGLES_MALI_LIBRARY := /vendor/lib/egl/libGLES_mali.so
LIBGLES_MALI64_LIBRARY := /vendor/lib64/egl/libGLES_mali.so

VULKAN_SYMLINK := $(TARGET_OUT_VENDOR)/lib/hw/vulkan.hi6250.so
$(VULKAN_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/hw/vulkan.hi6250.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI_LIBRARY) $@

VULKAN64_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.hi6250.so
$(VULKAN64_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/hw/vulkan.hi6250.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI64_LIBRARY) $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(VULKAN_SYMLINK) \
	$(VULKAN64_SYMLINK)

# Gatekeeper Symlinks
GATEKEEPER_SYMLINKS := $(TARGET_OUT_VENDOR)
$(GATEKEEPER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating gatekeeper symlinks: $@"
	@mkdir -p $@/lib/hw
	@mkdir -p $@/lib64/hw
	@ln -sf libSoftGatekeeper.so $@/lib/hw/gatekeeper.hi6250.so
	@ln -sf libSoftGatekeeper.so $@/lib64/hw/gatekeeper.hi6250.so

ALL_DEFAULT_INSTALLED_MODULES += $(GATEKEEPER_SYMLINKS)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
