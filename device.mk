#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

DEVICE_PATH := device/huawei/figo

PRODUCT_CHARACTERISTICS := nosdcard

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/algorithm/algorithm_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/algorithm/algorithm_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/dts/dts_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/dts/dts_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hi6402/mixer_volumes_FIGO_ce.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hi6402/mixer_volumes_FIGO_ce.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_paths_FIGO.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_paths_FIGO.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_ce.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_ce.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_cmcciot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_cmcciot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_gcf.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_gcf.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_telecomiot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_telecomiot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/mixer_volumes_FIGO_unicomiot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/mixer_volumes_FIGO_unicomiot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/hissc/pop_seq_FIGO.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/hissc/pop_seq_FIGO.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/mbdrc/mbdrc_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/mbdrc/mbdrc_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/modem/modem_FIGO_cmcciot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/modem/modem_FIGO_cmcciot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/modem/modem_FIGO_gcf.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/modem/modem_FIGO_gcf.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/modem/modem_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/modem/modem_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/modem/modem_FIGO_telecomiot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/modem/modem_FIGO_telecomiot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/modem/modem_FIGO_unicomiot.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/modem/modem_FIGO_unicomiot.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/sws/sws_3d_FIGO_normal.cfg:$(TARGET_COPY_OUT_ODM)/etc/audio/sws/sws_3d_FIGO_normal.cfg \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/sws/sws_3d_FIGO-Oversea_normal.cfg:$(TARGET_COPY_OUT_ODM)/etc/audio/sws/sws_3d_FIGO-Oversea_normal.cfg \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/sws/sws_FIGO_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/sws/sws_FIGO_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/sws/sws_FIGO-Oversea_normal.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/sws/sws_FIGO-Oversea_normal.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/volume/audio_policy_volumes.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/volume/audio_policy_volumes.xml \
    $(DEVICE_PATH)/rootdir/odm/etc/audio/volume/volume_point.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/volume/volume_point.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_effects.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-legacy \
    android.hardware.camera.provider@2.5-legacy \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    camera.device@3.3-impl \
    camera.device@3.4-impl \
    camera.device@3.5-impl \

# Charger
PRODUCT_PACKAGES += \
    libsuspend \

# Display
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3 \
    android.hardware.drm@1.3.vendor \

# FM
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.broadcastradio@1.0-service \

# GNSS/GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.1 \
    android.hardware.gnss@2.0 \
    android.hardware.gnss@2.1 \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss/config/gnss_lss_config_thirdparty.bin:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/config/gnss_lss_config_thirdparty.bin \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss/config/gnss_lss_rfg_key_thirdparty.pem:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/config/gnss_lss_rfg_key_thirdparty.pem \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss/config/gnss_lss_slp_thirdparty.p12:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/config/gnss_lss_slp_thirdparty.p12 \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss/config/gnss_suplconfig_hisi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/config/gnss_suplconfig_hisi.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss/gnss_lss_thirdparty.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/gnss_lss_thirdparty.conf \

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libvulkan \

# HiSilicon
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/default.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/ikedconfig.ini:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/ikedconfig.ini \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/racoon2.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/racoon2.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/tunnel_ike.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/tunnel_ike.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/tunnel_ike_natt.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/tunnel_ike_natt.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/ikedconfig/vals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ikedconfig/vals.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/device_state_monitor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/device_state_monitor.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/geoloc.conf:$(TARGET_COPY_OUT_VENDOR)/etc/geoloc.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/selinux_dmd.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/selinux_dmd.cfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/topazhp.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/topazhp.cfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/unrm_file_list.conf:$(TARGET_COPY_OUT_VENDOR)/etc/unrm_file_list.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/vdec_atlas.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/vdec_atlas.cfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/viacbp82d_log.bcfg:$(TARGET_COPY_OUT_VENDOR)/etc/viacbp82d_log.bcfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/viacbp82d_shutdown_log.bcfg:$(TARGET_COPY_OUT_VENDOR)/etc/viacbp82d_shutdown_log.bcfg \

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/usr/idc/cyttsp4_mt.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/cyttsp4_mt.idc \
    $(DEVICE_PATH)/rootdir/vendor/usr/idc/fingerprint.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fingerprint.idc \
    $(DEVICE_PATH)/rootdir/vendor/usr/keylayout/fingerprint.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/fingerprint.kl \

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \

# NFC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/odm/etc/libnfc-brcm.conf:$(TARGET_COPY_OUT_ODM)/etc/libnfc-brcm.conf \
    $(DEVICE_PATH)/rootdir/odm/etc/libnfc-nci.conf:$(TARGET_COPY_OUT_ODM)/etc/libnfc-nci.conf \
    $(DEVICE_PATH)/rootdir/odm/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_ODM)/etc/libnfc-nxp.conf \
    $(DEVICE_PATH)/rootdir/odm/etc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_ODM)/etc/libnfc-nxp_RF.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_bln_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_bln_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_nem_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_nem_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_nmo_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_nmo_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_pra_L31.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_pra_L31.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_venus_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_venus_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_brcm_venus_L31.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_brcm_venus_L31.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_bln_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_bln_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_nem_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_nem_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_nmo_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_nmo_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_pra_L31.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_pra_L31.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_venus_L21.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_venus_L21.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc_nxp_venus_L31.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc_nxp_venus_L31.conf \

# Performance
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/perfgenius_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perfgenius_config.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/perfgenius_event_policy.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perfgenius_event_policy.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/perfgenius_scenario_policy.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perfgenius_scenario_policy.xml \

# Power
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/system/product/etc/xml/power_profile.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/xml/power_profile.xml \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# Ramdisk
PRODUCT_PACKAGES += \
    activity_recognition_service.rc \
    aptouch_daemon.rc \
    hinetmanager.rc \
    hisecd.rc \
    init.audio.rc \
    init.balong_modem.rc \
    init.charger.rc \
    init.chip.charger.rc \
    init.chip.usb.rc \
    init.connectivity.bcm43xx.rc \
    init.connectivity.bcm43455.rc \
    init.connectivity.gps.rc \
    init.connectivity.hi1102.rc \
    init.connectivity.hisi.rc \
    init.connectivity.rc \
    init.device.rc \
    init.extmodem.rc \
    init.hi6250.rc \
    init.hisi.rc \
    init.hisi.usb.rc \
    init.ko.rc \
    init.manufacture.rc \
    init.performance.rc \
    init.platform.rc \
    init.post-fs-data.rc \
    init.protocol.rc \
    init.recovery.hi1102.rc \
    init.recovery.huawei.rc \
    init.tee.rc \
    init.vowifi.rc \
    isplogcat.rc \
    modemchr_service.rc \
    ueventd.hi6250.rc \

# Recovery
AB_OTA_UPDATER := false

PRODUCT_PACKAGES += \
    fstab.hi6250 \
    fstab.modem \
    init.recovery.hi6250.rc \
    resize2fs_static \

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5 \
    android.hardware.radio.config@1.2 \
    libxml2 \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/balong/basic_name:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/balong/basic_name \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/balong/FieldTest.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/balong/FieldTest.cfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/VIA/basic_name:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/VIA/basic_name \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/VIA/viacbp82d_FieldTest.bcfg:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/VIA/viacbp82d_FieldTest.bcfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/hids_ue_msg.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/hids_ue_msg.cfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/viacbp82d_log.bcfg:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/viacbp82d_log.bcfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/modemConfig/viacbp82d_shutdown_log.bcfg:$(TARGET_COPY_OUT_VENDOR)/etc/modemConfig/viacbp82d_shutdown_log.bcfg \
    $(DEVICE_PATH)/rootdir/vendor/etc/factory_modem.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/factory_modem.cfg \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# WiFi
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/hostapd_hisi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd_hisi.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/p2p_supplicant_hisi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/p2p_supplicant_hisi.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wpa_supplicant.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant_hisi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wpa_supplicant_hisi.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wpa_supplicant_overlay.conf \

# Get non-open-source specific aspects
$(call inherit-product, vendor/huawei/figo/figo-vendor.mk)
