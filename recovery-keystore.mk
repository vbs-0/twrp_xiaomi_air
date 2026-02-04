# device/oplus/ossi/recovery-keystore.mk
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),air)

# keystore / keymint / vendor security binaries (from proprietary folder)
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/bin/hw/android.hardware.security.keymint@2.0-service.trustonic:root/vendor/bin/hw/android.hardware.security.keymint@2.0-service.trustonic \
    device/xiaomi/air/proprietary/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    device/xiaomi/air/proprietary/vendor/bin/hw/vendor.microtrust.soter@1.0-service:root/vendor/bin/hw/vendor.microtrust.soter@1.0-service

# vendor helper binaries
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/bin/teei_daemon:root/vendor/bin/teei_daemon \
    device/xiaomi/air/proprietary/vendor/bin/vndservice:root/vendor/bin/vndservice \
    device/xiaomi/air/proprietary/vendor/bin/vndservicemanager:root/vendor/bin/vndservicemanager

# vendor libraries: TEE / keymaster / gatekeeper pieces (64-bit)
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/lib64/libMiClient.so:root/vendor/lib64/libMiClient.so \
    device/xiaomi/air/proprietary/vendor/lib64/libkmsetkey.so:root/vendor/lib64/libkmsetkey.so \
    device/xiaomi/air/proprietary/vendor/lib64/libMiTeeSoter.so:root/vendor/lib64/libMiTeeSoter.so \
    device/xiaomi/air/proprietary/vendor/lib64/libMiGatekeeper.so:root/vendor/lib64/libMiGatekeeper.so \
    device/xiaomi/air/proprietary/vendor/lib64/libSoftGatekeeper.so:root/vendor/lib64/libSoftGatekeeper.so \
    device/xiaomi/air/proprietary/vendor/lib64/gatekeeper.microtrust.so:root/vendor/lib64/gatekeeper.microtrust.so \
    device/xiaomi/air/proprietary/vendor/lib64/libladder.so:root/vendor/lib64/libladder.so \
    device/xiaomi/air/proprietary/vendor/lib64/libTEECommon.so:root/vendor/lib64/libTEECommon.so \
    device/xiaomi/air/proprietary/vendor/lib64/vendor.microtrust.hardware.soter-V1-ndk.so:root/vendor/lib64/vendor.microtrust.hardware.soter-V1-ndk.so

# keymint NDK glue (critical)
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/lib64/android.hardware.security.keymint-V2-ndk.so:root/vendor/lib64/android.hardware.security.keymint-V2-ndk.so

# Optional 32-bit glue if present
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/lib/android.hardware.security.keymint-V2-ndk.so:root/vendor/lib/android.hardware.security.keymint-V2-ndk.so

# vendor hw module dir
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so

# vendor vintf manifest (so KeyMint / keystore2 are discoverable)
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/etc/vintf/manifest.xml:root/vendor/etc/vintf/manifest.xml \
    device/xiaomi/air/proprietary/vendor/etc/vintf/manifest_mt6835.xml:root/vendor/etc/vintf/manifest_mt6835.xml
# optional firmware dir
PRODUCT_COPY_FILES += \
    device/xiaomi/air/proprietary/vendor/etc/firmware:root/vendor/etc/firmware

endif

