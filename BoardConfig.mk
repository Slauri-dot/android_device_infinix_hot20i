LOCAL_PATH := device/infinix/hot20i

# Архитектура устройства
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Обязательно проверь эти параметры в папке split_img после распаковки стокового boot.img!
BOARD_KERNEL_CMDLINE := bootopt=64S3Main,32S1Main,32S1Main loop.max_part=7
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOT_HEADER_VERSION := 2

# Указываем, что рекавери находится внутри boot.img (Virtual A/B структура)
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Разделы (Пока ставим базовые заглушки для старта компиляции)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPER_PARTITION_GROUPS := infinix_dynamic_partitions

# Платформа (Helio G25 базируется на mt6762)
TARGET_BOARD_PLATFORM := mt6762
TARGET_BOOTLOADER_BOARD_NAME := hot20i

# Конфигурация интерфейса TWRP
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_FLAVOR := "Infinix Hot 20i Custom TWRP"

# Точный размер boot-раздела Infinix Hot 20i (32 МБ)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432

# Отключаем тяжелые модули очистки и шифрования на этапе сборки ядра/рамдиска
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FSCRYPT := false
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Включаем сильное сжатие LZMA для ramdisk recovery
LZMA_RAMDISK_TARGETS := recovery
BOARD_RAMDISK_USE_LZMA := true
