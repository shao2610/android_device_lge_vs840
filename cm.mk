# Custom apns must come before cdma.mk is included
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/apns-conf.xml:system/etc/apns-conf.xml

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vs840/vs840.mk)

PRODUCT_NAME := cm_vs840

# Release name and versioning
PRODUCT_RELEASE_NAME := Lucid
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs840

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=i_vzw TARGET_DEVICE=i_vzw BUILD_FINGERPRINT=Verizon/i_vzw/i_vzw:4.0.4/IMM76D/VS920ZV7.47e5065f:user PRIVATE_BUILD_DESC="i_vzw-user 4.0.4 IMM76D 47e5065f release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch WiFiDirectDemo
