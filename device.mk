#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

TARGET_TEGRA_VERSION := t148

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

$(call inherit-product-if-exists, vendor/wiko/s9321/s9321-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/wiko/s9321/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.ceres:root/fstab.ceres \
	$(LOCAL_PATH)/rootdir/init.ceres.rc:root/init.ceres.rc \
	$(LOCAL_PATH)/rootdir/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
	$(LOCAL_PATH)/rootdir/init.icera_ceres.rc:root/init.icera_ceres.rc \
	$(LOCAL_PATH)/rootdir/init.icera.common.rc:root/init.icera.common.rc \
	$(LOCAL_PATH)/rootdir/init.modem_icera.rc:root/init.modem_icera.rc \
	$(LOCAL_PATH)/rootdir/init.icera.phone.rc:root/init.icera.phone.rc \
	$(LOCAL_PATH)/rootdir/ueventd.ceres.rc:root/ueventd.ceres.rc \
	$(LOCAL_PATH)/rootdir/init.hdcp.rc:root/init.hdcp.rc \
   	$(LOCAL_PATH)/rootdir/init.recovery.ceres.rc:root/init.recovery.ceres.rc
	$(LOCAL_PATH)/rootdir/init_charging.rc:root/init_charging.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/audio/conf/alsa.conf:system/usr/share/alsa/alsa.conf \
	$(LOCAL_PATH)/audio/conf/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
	$(LOCAL_PATH)/audio/conf/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
	$(LOCAL_PATH)/audio/conf/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
	$(LOCAL_PATH)/audio/conf/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
	$(LOCAL_PATH)/audio/conf/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
	$(LOCAL_PATH)/audio/conf/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
	$(LOCAL_PATH)/audio/conf/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
	$(LOCAL_PATH)/audio/conf/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
	$(LOCAL_PATH)/audio/conf/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
	$(LOCAL_PATH)/audio/conf/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
	$(LOCAL_PATH)/audio/conf/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
	$(LOCAL_PATH)/audio/conf/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
	$(LOCAL_PATH)/audio/conf/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
	$(LOCAL_PATH)/audio/conf/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf \
	$(LOCAL_PATH)/audio/conf/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
	$(LOCAL_PATH)/audio/conf/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf

PRODUCT_PACKAGES += \
    tinyalsa \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc
    $(LOCAL_PATH)/idc/touch.idc:system/usr/idc/touch.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0955_Product_7210.kl:system/usr/keylayout/Vendor_0955_Product_7210.kl

# Lights
PRODUCT_PACKAGES += \
    lights.ceres

# Media config
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# NVIDIA.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.feature.xml:system/etc/permissions/com.nvidia.feature.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml \

PRODUCT_PACKAGES += power.tegra

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf


