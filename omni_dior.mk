# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dior device
$(call inherit-product, device/xiaomi/dior/device.mk)
$(call inherit-product-if-exists, vendor/xiaomi/dior/dior-vendor.mk)

# Inherit some common CM stuff (mini)
$(call inherit-product, vendor/omni/config/common.mk)

# Product configuration
PRODUCT_NAME := omni_dior
PRODUCT_DEVICE := dior
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := HM NOTE 1LTE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := suhas

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dior
