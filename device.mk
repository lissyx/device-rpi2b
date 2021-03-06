#
# Copyright (C) 2014 The Android Open Source Project
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

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/init.rpi2b.rc:root/init.rpi2b.rc \
    $(LOCAL_PATH)/fstab.rpi2b:root/fstab.rpi2b \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(PRODUCT_COPY_FILES)

PRODUCT_PACKAGES += \
    libGLES_mesa \
    gralloc.drm \
    #hwcomposer.$(TARGET_PRODUCT)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.version = 1.0.0

$(call inherit-product-if-exists, vendor/raspberrypi/rpi2b/device-vendor.mk)
