# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to n90 devices
#
# Anything that is generic to all allwinner products should go in the common directory
#
# Everything in this directory will become public

$(call inherit-product, device/allwinner/common/device.mk)
$(call inherit-product-if-exists, vendor/allwinner/n90/n90-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/allwinner/n90/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#

PRODUCT_COPY_FILES += \
	device/allwinner/n90/init.sun4i.modules.rc:root/init.sun4i.modules.rc \
	device/allwinner/n90/config/camera.cfg:system/etc/camera.cfg \
	device/allwinner/n90/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/allwinner/n90/config/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/allwinner/n90/config/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/allwinner/n90/config/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/allwinner/n90/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
#
