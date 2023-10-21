# Inherit device configuration for roth.
$(call inherit-product, device/wiko/s9321/full_s9321.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=thor \
    BUILD_FINGERPRINT="WIKO/s9321_wiko/s9321:4.4.2/KOT49H/eng.develop.20141124.103747:user/release-keys" \
    PRIVATE_BUILD_DESC="s9321_wiko-user 4.4.2 KOT49H eng.develop.20141124.103747 release-keys"

PRODUCT_NAME := lineage_s9321
PRODUCT_DEVICE := s9321
