# Boot Animation
TARGET_BOOTANIMATION_USE_RGB565 := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# Recovery
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
TARGET_RECOVERY_FSTAB := device/samsung/espresso-common/rootdir/etc/fstab.tab2
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/espresso-common
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/espresso-common/custombootimg.mk

# TWRP
ifneq ($(filter p3100 p3110,$(TARGET_DEVICE)),)
TW_THEME := landscape_mdpi
else
TW_THEME := landscape_hdpi
endif
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NO_CPU_TEMP := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# RIL
BOARD_VENDOR := samsung
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6260
BOARD_RIL_CLASS := ../../../device/samsung/espresso-common/ril
