# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from msm8660-common
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mione

# Kernel
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=mione
BOARD_KERNEL_PAGE_SIZE := 2048
TARGET_KERNEL_CONFIG := mione_plus_defconfig
TARGET_PREBUILT_KERNEL := device/xiaomi/mione_plus/prebuilt/kernel

# QCOM Display
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false
TARGET_QCOM_HDMI_RESOLUTION_AUTO := false

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/bcmdhd.ko
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/fw_bcmdhd.bin nvram_path=/system/etc/firmware/4330nvram.txt"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_AP_DRIVER_MODULE_PATH := /system/lib/modules/bcm4329.ko
WIFI_AP_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_AP_DRIVER_MODULE_NAME := bcm4329
#WIFI_FIRMWARE_LOADER :=
#WIFI_AP_FIRMWARE_LOADER :=
#WIFI_DRIVER_LOADER_DELAY :=
WIFI_DRIVER_FW_PATH_STA := /system/etc/firmware/fw_bcmdhd.bin
WIFI_DRIVER_FW_PATH_AP := /system/etc/firmware/fw_bcmdhd_apsta.bin
WIFI_DRIVER_FW_PATH_P2P := /system/etc/firmware/fw_bcmdhd_p2p.bin
WIFI_DRIVER_FW_PATH_PARAM := /sys/module/bcmdhd/parameters/firmware_path
#WIFI_EXT_MODULE_PATH :=
#WIFI_EXT_MODULE_ARG :=
#WIFI_EXT_MODULE_NAME :=

# QCOM GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mione

# NFC
BOARD_HAVE_NFC := false

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 224395264
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 32768
BOARD_VOLD_MAX_PARTITIONS := 20
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
