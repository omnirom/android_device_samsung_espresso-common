$(call inherit-product, device/samsung/espresso-common/device-common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungOmap4RIL
