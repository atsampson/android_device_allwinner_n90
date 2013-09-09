# Release name
PRODUCT_RELEASE_NAME := N90

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/n90/full_n90.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n90
PRODUCT_NAME := cm_n90
PRODUCT_BRAND := Sanei
PRODUCT_MODEL := N90
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=n90 BUILD_FINGERPRINT="allwinner/n90/n90:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="n90-user 4.0.4 IMM76I 330937 release-keys"
