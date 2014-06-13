# inherit from the proprietary version
-include vendor/lge/vs840/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := vs840
TARGET_OTA_ASSERT_DEVICE := vs840

# Try to build the kernel
TARGET_KERNEL_CONFIG := lucid_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/vs840/kernel

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/vs840/bluetooth
