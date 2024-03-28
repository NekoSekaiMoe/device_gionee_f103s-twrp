$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f103s
PRODUCT_NAME := omni_f103s
PRODUCT_BRAND := gionee
PRODUCT_MODEL := gionee f103s
PRODUCT_MANUFACTURER := gionee
PRODUCT_RELEASE_NAME := gionee f103s

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng..20151117.155937 release-keys"

BUILD_FINGERPRINT := GiONEE/F103S/GiONEE_F103S:5.1.1/LMY47V/1442558405:user/release-keys
