#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product, vendor/lenovo/jd2019/jd2019-vendor.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Properties
-include $(LOCAL_PATH)/common-props.mk

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothResCommon

# Camera
PRODUCT_PACKAGES += \
    Snap

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Display
PRODUCT_PACKAGES += \
    libvulkan \
    vendor.display.config@1.0

# Fingerprint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fingerprint/android.hardware.biometrics.fingerprint@2.1-service.lenovo_sdm710.rc:system/etc/init/android.hardware.biometrics.fingerprint@2.1-service.lenovo_sdm710.rc

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_BOOT_JARS += \
    qcom.fmradio

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf \

# Doze
PRODUCT_PACKAGES += \
    LenovoDoze

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims-ext-common_system \
    ims_ext_common.xml


PRODUCT_BOOT_JARS += \
    ims-ext-common_system

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.safailnet.rc

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sdm670-mtp-snd-card_Button_Jack.kl:system/usr/keylayout/sdm670-mtp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:system/usr/keylayout/fts_ts.kl \
    $(LOCAL_PATH)/keylayout/slip-cover.kl:system/usr/keylayout/slip-cover.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

# Lights
PRODUCT_PACKAGES += \	PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sm6150	    android.hardware.light@2.0-service.lenovo

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Placeholder
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/placeholder:system/etc/placeholder

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/proto/mot_camgest.proto:system/etc/sensors/proto/mot_camgest.proto \
    $(LOCAL_PATH)/sensors/proto/mot_chopchop.proto:system/etc/sensors/proto/mot_chopchop.proto \
    $(LOCAL_PATH)/sensors/proto/sns_zuk_patpat.proto:system/etc/sensors/proto/sns_zuk_patpat.proto \
    $(LOCAL_PATH)/sensors/proto/sns_zuk_pickup.proto:system/etc/sensors/proto/sns_zuk_pickup.proto

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Wallpapers
PRODUCT_PACKAGES += \
    WallpapersBReel2018

# WiFi Display
PRODUCT_PACKAGES += \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_V1_0.xml
