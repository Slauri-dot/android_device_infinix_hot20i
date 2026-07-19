# Наследование базовой конфигурации Android для 64-бит
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Подключение базовых конфигураций самого TWRP
$(call inherit-product, vendor/omni/config/common.mk)

# Определение характеристик телефона
PRODUCT_DEVICE := hot20i
PRODUCT_NAME := omni_hot20i
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 20i
PRODUCT_MANUFACTURER := infinix

PRODUCT_RELEASE_NAME := Infinix Hot 20i
