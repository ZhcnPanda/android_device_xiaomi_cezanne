#
# Copyright (C) 2022 The ExThmUI Project
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

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Overlay
PRODUCT_PACKAGES := \
    FrameworkResOverlay \
    SystemUIOverlay \
    SettingsOverlay

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.common@6.0-util \
    android.hardware.audio.service \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.soundtrigger@2.3-impl \
    android.hardware.bluetooth.audio@2.1-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libaudiopreprocessing \
    libbundlewrapper \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libldnhncr \
    libreverbwrapper \
    libvisualizer \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    btremoted \
    libldacBT_dec \
    libbt-vendor \
    libbluetooth_mtk

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    libvulkan

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.cezanne 

# IFAA
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6885:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6885

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder
    
# Ramdisk
PRODUCT_PACKAGES += \
    init.mt6885.rc \
    init.mt6885.usb.rc \
    fstab.mt6885 \
    ueventd.mt6885.rc

# Motor
PRODUCT_PACKAGES += \
    XiaomiParts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/motor/popup_cangmen_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_cangmen_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_cangmen_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_cangmen_up.ogg \
    $(LOCAL_PATH)/configs/motor/popup_chilun_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_chilun_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_chilun_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_chilun_up.ogg \
    $(LOCAL_PATH)/configs/motor/popup_jijia_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_jijia_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_jijia_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_jijia_up.ogg \
    $(LOCAL_PATH)/configs/motor/popup_mofa_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_mofa_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_mofa_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_mofa_up.ogg \
    $(LOCAL_PATH)/configs/motor/popup_muqin_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_muqin_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_muqin_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_muqin_up.ogg \
    $(LOCAL_PATH)/configs/motor/popup_yingyan_down.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_yingyan_down.ogg \
    $(LOCAL_PATH)/configs/motor/popup_yingyan_up.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_yingyan_up.ogg