# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Pardus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := vestel
PRODUCT_DEVICE := Pardus
PRODUCT_MANUFACTURER := vestel
PRODUCT_NAME := lineage_Pardus
PRODUCT_MODEL := Venus V7

PRODUCT_GMS_CLIENTID_BASE := android-vestel
TARGET_VENDOR := vestel
TARGET_VENDOR_PRODUCT_NAME := Pardus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 9 VT1060 1560329181 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Vestel/Pardus/Pardus:9/VT1060/1560329181:user/release-keys
