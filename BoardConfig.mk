#
# Copyright (C) 2015 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/wiko/s9321/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := $(TARGET_CPU_VARIANT)

# Assert
TARGET_OTA_ASSERT_DEVICE := s9321

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t148
TARGET_TEGRA_FAMILY := t14x
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
# Remove if/when M libs are released
TARGET_TINY_ALSA_IGNORE_SILENCE_SIZE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/wiko/s9321
TARGET_KERNEL_CONFIG := tegra_s9321_android_defconfig
BOARD_KERNEL_CMDLINE := "androidboot.selinux=permissive"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/wiko/s9321/bluetooth

# Graphics
USE_OPENGL_RENDERER := true
NEED_WORKAROUND_CORTEX_A9_745320 := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS -D__ARM_CACHE_LINE_SIZE=32
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE :=  8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=  8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14061404160
BOARD_FLASH_BLOCK_SIZE := 4096

# PowerHAL
TARGET_POWERHAL_VARIANT := tegra

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB := device/wiko/s9321/rootdir/fstab.ceres

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "/data/misc/wifi/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/data/misc/wifi/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

BOARD_HARDWARE_CLASS := device/wiko/s9321/cmhw/

MALLOC_IMPL := dlmalloc

BOARD_SEPOLICY_DIRS := device/wiko/s9321/sepolicy/common \
                       device/wiko/s9321/sepolicy/raydium \
                       device/wiko/s9321/sepolicy/product

# Vendor Init
#TARGET_INIT_VENDOR_LIB := libinit_ceres
#TARGET_LIBINIT_DEFINES_FILE := device/wiko/s9321/init/init_ceres.cpp

