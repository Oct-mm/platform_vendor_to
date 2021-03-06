LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Team OctOs device maintainer info
ifneq (COMMUNITY, $(TO_BUILDTYPE))
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/serranolteusc/maintainer
endif

$(call inherit-product, vendor/to/config/common_full_phone.mk)
$(call inherit-product, vendor/to/config/nfc_enhanced.mk)
$(call inherit-product, device/samsung/serranolteusc/full_serranolteusc.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=serranolteusc TARGET_DEVICE=serranolteusc BUILD_FINGERPRINT="samsung/serranolteusc/serranolteusc:4.4.2/KOT49H/R890TYUBNE4:user/release-keys" PRIVATE_BUILD_DESC="serranolteusc-user 4.4.2 KOT49H R890TYUBNE4 release-keys"

PRODUCT_DEVICE := serranolteusc
PRODUCT_NAME := to_serranolteusc
