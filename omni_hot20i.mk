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

# Отключаем встроенные приложения и утилиты
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_BASH := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FSCRYPT := false
TW_INCLUDE_NTFS_3G := false
TW_INCLUDE_FUSE_EXFAT := false

# Отключаем лишние языковые пакеты и темы высокой четкости
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := ru

# Оптимизация бинарников (использовать единый toybox/toolbox вместо отдельных утилит)
TW_USE_TOOLBOX := true
