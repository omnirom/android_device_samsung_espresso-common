include device/samsung/espresso-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/samsung/espresso-common/include-3g

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../device/samsung/espresso-common/ril
