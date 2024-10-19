LOCAL_PATH := device/jsr/d10f

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

TWRP_REQUIRED_MODULES += \
    awk

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=D10A_HighScreen

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.board=MSM8226 \
    ro.board.platform=msm8226 \

$(call inherit-product, build/target/product/full_base.mk)

