APP_PATH := packages/apps/JamesDSP

PRODUCT_SOONG_NAMESPACES += \
    $(APP_PATH)

PRODUCT_PACKAGES += \
    JamesDSP \
    libjamesdspaidl

# this is wrong, we can't override device configs.
# this must still be added on device level with their respective audio config files, as a drop-in.
#PRODUCT_COPY_FILES += \
#	$(APP_PATH)/proprietary/vendor/etc/audio_effects_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_config.xml

# Sepolicy
BOARD_SEPOLICY_DIRS += $(APP_PATH)/sepolicy
