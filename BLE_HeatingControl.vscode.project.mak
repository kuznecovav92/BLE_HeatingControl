####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = D:/Kuznecovav/Distrib/SiliconLabs/SDK/4.2.0
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.2.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEFR32BG21A020F768IM32=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

ASM_DEFS += \
 '-DEFR32BG21A020F768IM32=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

INCLUDES += \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/app/common/util/app_log \
 -I$(SDK_PATH)/app/bluetooth/common/app_ota_dfu \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/CMSIS/RTOS2/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/micrium_os/common/source \
 -I$(SDK_PATH)/platform/micrium_os/common/include \
 -I$(SDK_PATH)/platform/micrium_os/cpu/include \
 -I$(SDK_PATH)/platform/micrium_os/ports/source \
 -I$(SDK_PATH)/platform/micrium_os \
 -I$(SDK_PATH)/platform/micrium_os/kernel/source \
 -I$(SDK_PATH)/platform/micrium_os/kernel/include \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/src \
 -I$(SDK_PATH)/util/third_party/segger/systemview/SEGGER \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/emdrv/uartdrv/inc \
 -Iconfig \
 -Iconfig/btconf \
 -Iautogen

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32BG21/GCC/libbluetooth.a \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg21_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.o: $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/rtos/sl_bt_app_ota_dfu_micriumos.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/app_ota_dfu/sl_bt_app_ota_dfu.o

$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(SDK_PATH)/app/common/util/app_log/app_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_log/app_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o: $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.d
OBJS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o: $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/startup_efr32bg21.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG21/Source/system_efr32bg21.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emdrv/uartdrv/src/uartdrv.o: $(SDK_PATH)/platform/emdrv/uartdrv/src/uartdrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/uartdrv/src/uartdrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/uartdrv/src/uartdrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/uartdrv/src/uartdrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/uartdrv/src/uartdrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(SDK_PATH)/platform/emlib/src/em_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/kal/kal_kernel.o: $(SDK_PATH)/platform/micrium_os/common/source/kal/kal_kernel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/kal/kal_kernel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/kal/kal_kernel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/kal/kal_kernel.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/kal/kal_kernel.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_ascii.o: $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_ascii.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_ascii.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_ascii.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_ascii.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_ascii.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_mem.o: $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_mem.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_mem.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_mem.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_mem.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_mem.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_str.o: $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_str.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_str.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/lib/lib_str.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_str.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/lib/lib_str.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/logging/logging.o: $(SDK_PATH)/platform/micrium_os/common/source/logging/logging.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/logging/logging.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/logging/logging.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/logging/logging.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/logging/logging.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/ring_buf/ring_buf.o: $(SDK_PATH)/platform/micrium_os/common/source/ring_buf/ring_buf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/ring_buf/ring_buf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/ring_buf/ring_buf.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/ring_buf/ring_buf.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/ring_buf/ring_buf.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_err_str.o: $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_err_str.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_err_str.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_err_str.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_err_str.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_err_str.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_utils.o: $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/common/source/rtos/rtos_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/common/source/rtos/rtos_utils.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/cpu/source/cpu_core.o: $(SDK_PATH)/platform/micrium_os/cpu/source/cpu_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/cpu/source/cpu_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/cpu/source/cpu_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/cpu/source/cpu_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/cpu/source/cpu_core.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/cmsis_os2.o: $(SDK_PATH)/platform/micrium_os/kernel/source/cmsis_os2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/cmsis_os2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/cmsis_os2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/cmsis_os2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/cmsis_os2.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_cfg_app.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_cfg_app.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_cfg_app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_cfg_app.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_cfg_app.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_cfg_app.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_core.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_core.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_dbg.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_dbg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_dbg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_dbg.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_dbg.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_dbg.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_flag.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_flag.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_flag.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_flag.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_flag.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_flag.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mon.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_mon.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_mon.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_mon.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mon.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mon.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_msg.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_msg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_msg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_msg.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_msg.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_msg.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mutex.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_mutex.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_mutex.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_mutex.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mutex.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_mutex.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_prio.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_prio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_prio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_prio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_prio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_prio.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_q.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_q.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_q.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_q.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_q.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_q.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_sem.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_sem.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_sem.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_sem.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_sem.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_sem.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_stat.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_stat.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_stat.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_stat.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_stat.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_stat.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_task.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_task.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_task.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_task.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_task.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_task.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_time.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_time.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_time.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_time.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_tmr.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_tmr.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_tmr.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_tmr.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_tmr.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_tmr.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_var.o: $(SDK_PATH)/platform/micrium_os/kernel/source/os_var.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/kernel/source/os_var.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/kernel/source/os_var.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_var.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/kernel/source/os_var.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.o: $(SDK_PATH)/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/generic/arm_cpu_dwt_ts.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.o: $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_cpu_c.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.o: $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv7m_os_cpu_c.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.o: $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_cpu_a.o

$(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.o: $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.d
OBJS += $(OUTPUT_DIR)/sdk/platform/micrium_os/ports/source/gnu/armv8m_os_cpu_a.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_rtt.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_rtt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_rtt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_rtt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_rtt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_rtt.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.o: $(SDK_PATH)/platform/service/system/src/sl_system_kernel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_kernel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_kernel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_kernel.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_rtos_adaptation.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_rtos_adaptation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_rtos_adaptation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_rtos_adaptation.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_rtos_adaptation.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_rtos_adaptation.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o: $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=eJztvQmT3LiZrvtXOhQTJ87iSqqqWt2yTrcd7ZK6rTOSpasqee7MyMFAkshMuriZSy2a8H+/AAjuBLF9JEv33nM8rcpM4P0e7DvwX88+fvrwf95c3bjXHz5/unpz/ezVs5/++BCF393hLA+S+Ocvz853z788+w7HXuIH8ZF88fnm17OXX5798Q9fsi/xT2mW/B17xXfk3xRnxeO1R/4lrvj3X54xZ99999MhCX2cfRejiP6MyiI54rj5mToIQlz/fERF4fr7nUdMl1lAvqG/vnKuXjmfc4Lm3JZfY+wld+hu9x+//NW5DqI0DLyA2C9KP0icuxfufZLd5inysPs1OO4xdvchdv707o37Z4wKEpSrJC6yJHQ4itOx6cxTnTagOgmpdl7muV4SH4Ij/XNFtpFlAWEeEqUSF0lSnFZN0qFhFb41E3doWMyHUmqMiCSxWzymeG3MKfsC2k83b9yrJEqTGMdFviro2LQ4Rr3anUuChcLkuHaUTgKIeX18FxD5IA6IhzDxbvO1i9I0gZgY39HAnVDshzhbO3ZHxlU5V47UkXExZ5DkRYZRxF2vW7QE9jVoV47YKfsKtCx3B3FeoNjbMIrHGAL2aI/9Isx5M+xyrVW5xQji+B74KTIU54ckizYJgCKPIDRZkeSkbsy9LEhp+7gq+pRxAWeaI9fLHtMi2TKzzFIIyMMgvsUZ/WYX+iuyDuzWdD851VhmemQTROiIReMaUrb9iDSh0fH5Lo2PK4SF4Tgju6K83Lg734jvXJHvYiO+C0W+y434LhX5vt+I7/s+33xZOmLvNnFz/9b9fndB5yE6oeo5TENU0Oq642Lk5jXrvvZcjNxcByScSfwO7fOBw5HTN79+urz4028X5yOHY9WkzEaWa5fddvExL3Dk4kN2ebE/XpyPukyvXzn/2iSN8zognYVg73SgnevX/+qwuHLqKHGqcPdcNexOheZMWXakuAXKijLdhHfK9Bh4kLuECfQ29sLSV0ihxh56fvH88OMPL4Po8mLUfsIHmwM6QvvSxGp8usiL0i2QG8M6rBNd8FVQh31uKem+PHiboNaGtVgzFG0Eyy3r0RZbRS23rEHrReUmrNyuBimdzokPySa0Hds6xBFqxjrJeEZpFfARgg5/GobbUHPDGqx4o3yMtfPxIc+8bXJxY1mD9ph62Ta1WWNZizbYJmprw5qsbppkxWbAjXUN6tNhq9zbWNaifdgK9kGXNbjYppxxuzqkyN8IlRvWYfWQdxovP65C25jW4A1Ji70JbW1Yk/Vhj7bp2XSNGzCTXtEhiDcark1B6IQBF0E0sUS5CnprW4d4s1YjNGg1wq1ajVC/1Qjvjv42rNywBmuUb9NscLsapGm2TcXA7eqRunlwjFG4GXHXvgZ5VnjbZIfasAZrjiMUhPvkYRPgnnUd6o3GxLn2mDh/zL3DeEfTKrCNaQ3e7dpfk9a33K75LU3a3zJHG42KG8satPf+xF68NWBrw3LWiO+FWxOza1O+NDdcz1sPdMq08src5NcTX0591V/S85IoSuL51d4g9iZWeQcbb4skCoDa1YrJIWadnvIwekZbVaM8yN0kv3ArhSVopmxIuIKOJ/xQuAXKb90MH4l5qMq8xyi1J4tHHJdAy179uKt1ZfaPdCcDP1mxBMdQX8aD8hxDNQyDvN0oS/P2cjlaNR+7JGvli0RDIywlKFBRAg04BgiNsiOrVEf1Y55J68f5MgmyH4SHh8BI64CJTSCCPA9P1lFWy28LIDTC+mldJEnonVAwbDKVMsXE/l4cJdkjaBgbwjq0rY1RhAt6F/LmXxQSlseA66k2QLysjkxN9Jum43kFLDWeo+e5aYaDqjO4LNfYllI+MOpO7pOkCBNEvpnvUqI0dflRyABP7SHsRFffLUxZaTmdvrwztqZfSaA0mA/SvgjdICZV8QGRkQp8iAJnZGG2su25Jm1hkqHjClxdS7N83WN1ncQBKTYDQLEpaQziLEsyL4EqzxMx17OgnqKL8fQsaOSwFGU51NhnNoO1hgzy//J4HUtSvgznmJ51gtqKNgHWNyGt9+TNwdX767fX8y3BVZKNNxQr7zvuxVLV5aXnRYOpk5RGscRC4FDIZuZmbEbS3lceQAe0QqyZYe2AqvhKTxYVZHSwGFLfhFIsHaEWZ4QxdBStwvRpiEcyhrq8XI6ma0FCE6Wli7Lo7uViND0Lpv3DUcH9dPPh+gK0dJMBLWQcMMBBBuEmJEmS5G4ReLfLwXQMmI3bhMdphuGgU9HUEkh/rxsUfgqlb2K5wQdp6eVHlzqn82UZU23gO3HcHyRP8NA4Hf16RDdtUj7q7PoD27isyCncsDwHCbjrUxFzZrfnPCjU1h1lTtGWnTnM+A5qjUYRszZoVoOpzaENcplLqm+QmmwqiHxKbdqkSd5ek7SxqJ+3147Ujk2DHL4maW0QrM/Egh6hmIwLh5NohgWkqwgbN13lOnKG1uTp1/XhnlAIntlkmB2jUtqg75ON5WMEdF5pBnjG7pLT+r3UXC6MvOkYWtNMjcUBx+bAin19pQ1Mka/VYMtRrVqXoa4VeTFvLu3JcIGyIy7cvPAD4CZQhDhhVIe4AFqHlGMWk0ujM2wkPGGwb+4XXIVyZHPJKqjJZaCluwkbr3q6VjRzxipctSXjnLEO5cgmWAUZpSXQmntawhYTItistVfaiy60p8ADd4pfL2Gnk4N04zRLk3vSVwHtzPYkYdOxJ12n6MievAD2vJDBwr4ErpfloK1VXdwl+t8KvFo98L7XNAvuUAG0XDeHPGN4yQLfz4ELhpJXAiN7Zjl+ZdDWqm4GWp50wiBYFVvtI4epW/medDqvAVsBVMLN9ru+GXn24h5uyYgXhyuQtYaWLNfdaADNgjxM9c7Wvhnd2F6erDUEVyhCjFN2ZAmoYDR6wLmv0W23pnYtKSRW4541oeyM4WqIPZParGmW0Huj1qVtjWrzVtdcrYvb2NSmXTm39m0qNMF9r8DVzBB0ytyiVXtbipcKWHN0omtJK94XRhuaWm7dH0d+didZ9Y/Q2I1JY1AJwZQrxu1UiiyjtuKLZU5uAiTpe/w00VtxsJZ88nyiScAx3MbcKtyd80NYuCXXNNj0miy2xJOVqXSfikK27elB5t6eMMvEI1OL5eW+JcCk7QeKpvDIFFhKx3fRJUACUxl6rQ8qw4If6XOre9khU5taYYk8b07SDDHPtL9wCFE+fukIjK9nQoWJbqVaDqdWX6w8dBMFsjiwYNBSMDSgEKeLcSjah+tcTsWFoCs5n9+XpGlNKOf3xXBqdbP8HgZ7WX4nTpihq/eXl2xbNwIOCjHgTBkBq/xLlBUw/VKuBFl7cUlWgXXkF6u+ahuAGbIOAs2THfklhyLjfKt7WhxHkFMNjIilYVd39rQRcUivyYY3z1WlxpMM6PBh3zqXlZnHi4Qdq4WdXegLb72WlZlnt3HCm69lZebpjXnw1rmqzDi9BA/eOFeVGYebuO1ZF03ODs3nSxS4XKm4VasAS5hvhGUIgHOlPQLhfOgQoLr/Cx6g0dU/wy699KlpToDaa4rNJlMi8YMSo5biFAC90dKzX8uqtJILWJ8+KTNhnB1CRWBjvT5DR1x6wdUycdFXlsUH5C1NvbhQvKSJ5Vugs1+D0iC/foB1b+BuiOrnBbULomhrg6JDGS9RI3SUZRCg56x7EKpXhtV9zSWSIpNfFsA7m/DWBUf4Jruw8NZFT11MdmHhzYvuqZ/qwsJbF1wlPWF8uTahL67Sm4ZnEFxUPdmbXqAWEtzgPNGbhjeeK5V8yBuN++aF9xULOvSLIHBhtQ49PIF4MXuyQw8PILgo2PC4vEfgikfJdBW7ITJNYhzLFyLbB6LzMqWv/Mgf/axOCsiflKzcnVVHL8+Q5+EQZ2jyIWnDfQxVbDjdADvjEDkViDPPMzH7rvjG5vRc73iLCceC2uGjGPj6mENrfBzSqf22zWvWm/AOAcxTZ3oaW5w662bN+hRHa1yaOgjnLoJaLtQC7ViWUnpetBFlx7KcMkLeVpgd0/ISiflO9IgobpFFh/blxCd0vlHMdk2rcF68+GE70o5xFdYX5xfbsXaMS1mPm5X/o0b5x97fU3SLNyIdWJfSFif62nwQHzfiHdnX7Uls0bYOAZR7EooX3oRM38+Cu4mjC6Z9xQq6yGKwY4iCOGvZex2v2rJyAlcaoOeQ9IgHALrgfMZ0S/QWQQmeNMl8dtP1cYpjH8ce2GXLOkGYAVENCI+BfRmERRC7t/hxm3AIODSDQbx1e0sbBmRMYhAUUnvRQ7PBFsVjjkQzKIg0XVsGoLaviU1GCVtSc/Oa0OyZv6KE2hNkht6D0AyAF6QnuLNYJvQtgSp6kaE4T1FG1J9AMGZpLIJ0Att/bh+gk3CjunJwNquVZlgsgrNVbSVGMQnME2j15nFUA5Wk6B/l5k3JJIVmEJ5AkghJzFJjw7pZBGIWkM2qsGkMhUAwvaDIXXYqZWX0kfElljb6VzqVe8I+6XI6au5QWEK91aISMXSipoJ0RgSTySmKn3HQc6QS7vpqTlLtlnmBfdj3RJSjIEfOHMlUVEwU0KcTGBmNQoDY8znrkzdmtbOfdIpp1bAIEaymmFYPwgyIySzAFvwD+2bj0Q3BWwK7KaQNgzAmsZvY2zgouguyo3mdDfm5ec0OJ91PTJNumxpoCkIzAMVjulH1OQQwGRZvG/1CEpOgbJcQkxTQa5L1bg24BUm31Vx0wISHd4727aoM7lofblkEYJcP6uI2xjWZV5gXmKPWmg3oeiTKWZICPYxsAN6xr0m++JTyHLbGHHLX24rzYXP0RpNhQ4ETiv0wWHirgywUXQjNMKyz2jUXAN2lrq5fVBQ4L7bNRgMG1Ra99p7kcNcRKrFPWjehdqv3C7MC7JFE0xAMSZbfcN1p2dcJeX3/Ys+uZmnx8SGIF+46zhB37WuSL9/lnePWGXiMOlFbQdfGNZmbKU+2f2gr+BGFbv0E/U6WUgiEBLq96BP2boHfUdFOgiGEbhg2pjfmXn6ycpZbZ6ZyagSxFXjHvskIZivsk/D6Op0RzFb0RpPCwsHDlqHoQhiPYLYKQI/AYgSzFf+AYYFDBllSJF4S8pMMkCcN+spuhvwgQcvvJO+bbXfEz+AodWFqDyvuwRYERUCidjahr7n0XLVaYih3I6dCvk0IBCR2BdTo8H4UeFlQRmS0PX98X+3+9DwpMw/Lq4FbFMqrgVs2TIB7qqcNan3neoXrEENO35g0O92yJ0ACoEtGpWS1KfP5j+lrcAehoi8uotwLgoUjnN+H29qSxjd1TWyuxMUtKVFFUHcOSqmi6UsIRXG1Rv7sRBhEHk2OR9JVVMinlcOl472y4nSsyeO+cksG2berxH8fsWdWmXUDTvu8klGZfXmQZ5ba5cK5pTbjdO1J06B2vEYijAghkqEYdRymQklcuTjLVqjCqSlnaE+eDNQDnVgFGl8o4DXWNOBWySV9QoA8Iug6jsLJn/9YIYz808CgeQjTDJOevofzPJna3DIIZ9f1GqHt2nMmjQNPDASxF5b+9DBglN5LBZ5DOHO7i4dd+qVZbpWe+Wh7xgvj9AwpQPn4sAYSN6MAFKECaIZ5nqi2o4IEdWOhhGj6/kLBqGkFIG5GAahq+FZAagzJoHj/fmmk1owEqO6+LE3UtaOClKTFGnXA0JYKWrpCTdAzpASVQV1gLIPKpq80noIC3HEhoZrbSCzofK+BpVotMMegl4BLwGauBR+gFUkSeicUQG16F4P1LY1uqzV+jTMtLaaSu33ItAR85qcbD2nZjBY6NpRiwLhDnALdtj4IR9MVTifvXZ+KUuSdgJZdxSytFQWiRdqdAY9ae0Nd0pvc3BzqVfsZpK4hsNJHRcezNoZLOcd4XJRHcYay6O5l5NIQod01cJyx4NSFleA4Q2vyy2uJhx8rD0CXUcjwutZ08KgYeKabI6wNqkKSdmyJakyE2JpTAnxZ+1gxG3YN6sXiipmxa9B8HuyIY5wJLnUYBpPZ8+8Lt4Cfc+2HsoJyxjbBl9vH69xsRRmmq0OTaImeTsVYx1bHiqQdpC4PRxel6QpIrSE5lb+HXxkcEXEjcppDiFbAqa3IecAuFJ3DEV4ZOqLJV4gcbkSBpizwwwo8tRk5ERvZLw5UW5Hz/GN5mH+okeQL7LsYseSiLRcjmgIB7eebxeFW5DwFyoFeoJ/jqa0o8ATRCi1XbUWBJ4JfiB7jRILV5yHNHVqBhhuRjW7ZgTt63G5ZoJ4dpXoQfpl0qh5Uf9fbdJYngZ+04wGpJw4SlelNGtylZjFGPLPzGBOlM0Me/PTTmKqxo4D0mK5CxM2YzvXIN/yyrcfze30zFITu1IZR1Y0d/Xl0BHVYkqE7NV09VV3ry6bzqbfoALQ6K0apbajgVC/CuuxeNzLs8qEWZmbopk2qwAIuHM3wKS8aUccHzE7nLE/VNWTWONQnAeQTqvtwqgmZCj5xuUjIa1aHGHC6liyO32OMXz6/OH/xvWLYWg/LBrG140zYNQ/w13t0p5qOzO2ywWQmnL414F1f9LFzee7Gh+zyQuV+WObw4XjxoHJVKgsYBXDzFHvBIQC6R25YJRALDgNzGjxn2rbWFZ1W8Y7KIjni6WZ4eASEsWY4xChXyJy1hzqs5+7R82rvO7RABPOwOANUR0oCnJfTsDwGClGaojMSOL5wL9oIPZmtzxVvPmbBplsW3BS5XpndLdTaVSF2+gFqcvm5I0axuYyWCrXmquSFGXgqBU9kXrpM00TAJsgDy0q0o2Cul4lE5pVjueoUbsI9ZV47d6yPPEurfLajLe9FoHR5Us/HkoWiZ8iZsqxyWr/vacFUkuACpVJ2YLsTNVOK+1ontbgxR0Sgl2q1x1VSbhZ9lbPb4y8GHcG03/9Wma0ZuKGBks36EDN8FkE289O6tEoiIlMPximf08o6fQuSKQOScssTjYyYTRdQjTCZOgo7imHizKrwTgWGaDodbUnE1i6ho7RLoZy8S4H05Zebn92HJS6SZFSPG93HQImTArn+YWqTntFZThIP+8LtCLt8Qjux28dD470Je50CHTPVwUSJda1mdC5QywZl0pw8ew/82OZyTUSVEhiszDhlz6zCPaKCLlBld4GHXR+zf4KY9gzY9UmyiphEl0QBPiokBh01JrCaTNY9mZwBN6v8pm6RmsyJPhkZFUHe3hto1cttp8XrlKjv8xHZGkXuBCRxTezT5FgectKWCqT/SD4HHstQ/n55UKE9FdjwwkPp8oxDMypoKbrPVs2WYoNKuDgLEp+kA1FYgXXami7oenE7a1QFO3+MveU5B1aUKqUTIjVF6OZJGfvsZpnFqyaxRQkw9c0O0CEfpRB3xos4BYYU8PICebek5Q0sNwnOkfVtOLL2e2r7klKjWqULPSxluRIxDkx92/LYikqeHZfC5fAmbZm19ovG4diWeWu/HKjQnnZrvxzj0IxFa78cpNigaWu/IOu0NcvWfh1es/jttsPLcQ6s2LT2C1ZNYosqwLyisD4UPMvYN2LQCVkETWBIuROyZNJOWVEAC8PFqXompEhHlFquB4pZam2FeFmQohFXw2C3GpO8tid2Csu3CCRQY1N6/euFM3ZtQwEKYMPsHI9wp+wECsg1JnMwwrtLVEYeJNVlIw9iY/fA3EHyE0Gnq62PrrBL/s2vny4v/vTb5I6vgdPfrq6UduU1IbDbhDeOELry3fA6BMcZWtt+mXu0Rj34vTgFmU96wlnxOD+LHO2xX4TSizDY3sNsqDVKFhK/pIag76faHnVjy46dUDgc1OEkzsiU7LqgU4aRb3thshSrZ0aCVG+7WJaoa0URyP51VmWqmbdYe2j72I1KuyM0UqbWhgwmOMZlBPMMl5xqbEx2fJE9s+TeZyhdFm1gSIZlf9WpQq2geNFpr/pYKSXFNjVh71AeWB6W0IZtbUpgsZe2L9yh0K4zKsWcsqYEuEYcDi3JwKpXxtw0CRfOiUNLErDIX6Ey6RiR4aT0fpblK5O+HQUodqBweabGjAIS7Y1YvvinxNTaUYCyP9qsxKR6sjlFfph4t8sCdYzIcG5XKG0dI1Kc+ywoFk6ujhHZmdcc0XrePeEwJePtZbEmjMm2f5GhtI/35XEdwElzCoheGNg+/KXE1tpRgIqC3O7IohJSbUUBiHg9v1yprzBtTxnS+kFjDUDxs8X9ioMUHv5SIM8Gy44op8wpjZQWnqhobGgM21YgagwpJ+Na6acF5SLS81gtZ9XGNLL+Clls0pw6op+R2qbKD6wJWYt1wq46dB4mBdQ7ojrQE3Y1oIskIx7Xg23tqUOSUetqgNyWOhx70notutqYOl6E7K6r1aHjttThSG92NThuS6NorFgqVAqEd8J0CZ/XqvYr8/JWedqgZkO47ChtbEy7IVwLsDWngZhYvrOuBZiInlRXbafXIp2wq9earAXKbWm2JmvR1cbU8dYZeQoMamAW6+VFbkuvRV4LjtvSaJFR7CeRG0TpwhP+Ypt63YfVICtbWt2HtdhyzeIxHDGsxjm2qz9SWQ22tQd/8azSjpdRbCDLjWvC4NdXndaf0cwdUj2gLFioBI6IuCU5Uh6fr4TELSkhLbhiMcU1s3Yx3DmCcvyD3W2OymStLTkW22OyElZjS45VBqHPzmqvhNazJ8XzyD9huFaZ7FqTo3krpSY3JAc6IfK/i+crUXWsKaKlSWi3p1sTrrangIdhTixoAOLZ0wtjxAWH9iO4mXH9EGuxvv8IStjzH++BS1FxdrF7WAmsZ08Bjx04TZfq6Y/xuvZU8Dp7ftci7JuUQxaZ62f7tcpqx5oUje0UWIerMaUAtVI3W3jN+xDotFLbyQ1JgbDnLzRLNSSqLakgrVVHNKYUoP6eotuVKoaOMQWwheZAx1CCCdDpnaYrQbXG5GDL7aAcYYl3UQ6gjmt1po+KnenTrW935leZqLYkRyI9oBWbvZ45KRz3tWonemxTjrnQ8t0ITbByN8J5sRbPCzUgHCXZo7svDwecuSgMk5W69wLDUuAYF26eeLd4qQWSIejAoByQmHVv71eCa41JwZJgpbLADUmBUrxSG8ANyYEW2q8+4hFsWR/hePm53S3vGki1LSWslWqxxpQcqj6RuQ5Xx5oy2ooj7JFJdUh2dnRdyNqkHDIJH88vn6+V+TrW5GhZcIcK7CLPw/lKLdPYphwzR2umcMeaFC0LSDXtn/+w0nR2z5wcbq2RuXCRfnhK4YRWWiSsLakgXbz4YTUobksF68VarWhrS46Vr1QIuSEVINdD3mmlJqpnTg2OrVLkZVCsNbs5ZVUNNUlugzUjsrGnhFcEdDizHl5rT4rX3vWxCl3PnBwuiNYja2xJsSAuYVLmEl7INAH28OL579ehqi0pIbletlLd27WmirZSuexaU0TLV5pF7lpTvhZqtCeNdD7l+9H44bhFg0VAnNaOfK2z2rxH980UQcxurUvy5du8llJgWhecjE6ioAhs35U0Ae+bVgWv1vVXg23NqQMuP9XeA1TfrNI71LDkPSITnCOr2rhxgR+KfIuiNo9gGpANit48gmpAiNds4YF2h7mxpoq3ziRjh1BrnrHZSs8TYzXKnkVlzODritmzsaaMV2Slt15j0JpTBbS/BFaHT3gnrAjvDoXlinytOeUOo+o9oqOOZY6PR5zJbvfMH/MCR3cBvpcfn7h+89tvbz7Je6uVO/fTzQ3sud4qRE6L7FSWnL5BadpXzmETXcKmlCc7wViTrTYIniXljz3mVQDckIRA8uRZQN2wk7OyLM2X7KvjT+MCMJxoColLtqxvnVe7oXE6wE6fyOmZlF3z07i1zhL6eBOZAupa4+HH4euetE/fSbrhO3kFdTG4BbkTa90nER+icBBzV6+czznOcue2ib/df/zyVxJ3UUqiKCger4uSvoZ898K9T7LbPEUedr8Gxz3G7j7Ezp/evXH/jBEZwx2vErrFLeTbmZ0KzBnZd0Sk7IXCynOZVa8Z1IFbmXmGxBGl4kRmrfKSYAy4YCimbDvTmG215xKR8Xa6BSknTAsg47vokr69gcqw2CA6BeYFsL27DdZGnTQuAO28H7JJFh0bnwGt753fCHXCvBj2dHhI6hZkG14BgQC5JD0jPxM+87Qg6tiyAJE/t70B4tiyANFLS9c7rMrWMalYdOL59+ZWLEVjElG8sknC1aO2Z1WAVlVf64J1bc5h4SzbBK1jd6Yso5wwbNGWTxoXF548xDilO/I2qsgn7Ytx0+SeuNy06REhCKD9CG3T9IwMi2M1Q0HINsW5JCm2iVURggB6/WpJWinRgpdmSUqfS8Rb9DiFACpNp/xxybWaTsmLk8Mg+Pgu8DB7qszFUbkNvRhCDZx1ZzcnH1Ao1Rdo8+oCaSJnB+Jnq3HWHIZqVsm8J5FX+hgC+H0RVs+2HKihlavsSeOqoG5+4Y13M69J2xAIkHEUBns2qcufBlg/U8wgiHOz5JTmwtOGwuOao0nqDnWEgni0ZLAEaG3ImaIgDfwqscXtTDLQrakR3kX+ChwdW5MsHnFQUN8u/Tbf7VGxRl6asqrEl6+S1SeMTtKRwsBWAQgAq9ab2p1u7qiWBNbI8WoYTQh6axZ1UF5XU9eENkR7HPa+2Sco86+6z+xWUy67alFsx37fxUmMXz3fkf9PvNCF1KGPyCt3KIt2+JBdXuz2x4vz6k/6F3p+8fzw4w8vg+jygngn3djQO5GCPGM1z3fU2S7wMZNt/OyOcbnz/OLV+fPd5e58d/H84vz5y4vviW7u384p+rc79mrvLi/JEOAVWwvcuWc/Xl78/seXv//9i+4Cm49zLwtSGod/+Mnpfqrrwl48s29/om+o/h17Bfv07HfPrt++//ju7dXbm393r28+v377wX3/4fXnd2+un7169p//RauKKLnDpPC+OqAwx7+r7nkjaf/mge2VyMkv//m39uvrpMy86ltS15VFcsSxs/Oy5oF38ueXZ9RDlPhliInDL89+4lCv3r9nX373EIVx/op/+/OXL1+enYoifeU49/f3dVyRaHPy3PlYOdphttD8hWaWioR5K7Ky+jLw2efS21V2dzkuynRXerX/ca7eHT2P+U39qCf2hy8k8lgMsw0jdNd6TvJbQR+2Yw53/5P+1+Humjivg/eHL8/aCCMRQHX/+TvryK4q/N8JqtSJ7/PK+RF7t4lLsp5bLT0Toc4Du9UUY3d9lM2gNc9fN1+7UUAyYBkl7G0IE92RJJyQYUjzMLBQklSJKrWm2Bq3wfYJtNOFnT/1/RIeI+9h0ixAzKTYnC89W5xT7LHe3ehcvb9+e+1c0S0Tb/neLi/Kg2o7LCkDmbEAqRuM/XZOuuj6p510L7q8NPAbpaVLWqm7lwZ+i6/1Blw1z59uPlxfDEKd5BcmnpOcnfLS8VpVi9Qn3UBFPU/nysbza1bwejtx2jfFa5Cmp+AiL0plPLqS1R5DQMV9eZDmUG3JDEXwmgU0pxeJqmlTRVoz84tmIVUj0qTwblsirYp0xdPqtVhASQwer4c886Bj9ZiSLia4ZgCPGSRumggbWlNdNqcHrvkALRlcQKdRgHxwyeYcOaBoSIr9ApIPewRdhdSydFdZEIO3UCFmS8bQqgvk/xA+/4d3Rx9YMsqh83+aQac5UXTz4BiT4S2wMulGQAc/xxEKwn3yAK0L3o6Sfi5fGQEUXaJ0lksUzzJH4M3ovS8fXepJdicYYZQjPmMAoladNXEbXCtRPgLLC5IwZdoRtRmI1aJDUInmPkmKMKEP3jsoDegkAhFnsyudjRay0A5E6DIfu5LWS3xp9E/4bZYINeH7fi3s0nNGubx0z0p03iu11tDnyHCOC1dlVNbz3N1dM/goCwifigpij81Azc2SifwUSRRIW6m+n2bypHMOXcO3gR/MX3xR93GkLhRntfo+8zDINSORVCpFKS2wPT9BJxbxQ+EWKL8lGehIbMvLAFciI9VOsqtlFe6nCqSOl3lgNaVmNapJJc8juR3zQ66KwR6pVEd27HyzoChnlVaExydHkEQDjvzsrpsPsEplXfmqtl0yX9WfWt4oJvemxEinAliVmJVpwYz2vlGz3RehCH0RJRJ6hogB0D/U7Pa81OePTLyekHS+SuDNPYT8tU5dz2Ein1nu+AuDPf0/5vXq/eUlWwVAyt5pogxOabHt+2EQ38qL9ZRQG3gDzyzwSv74ARgWb/xvtVirPVKbtUepRRrLrLxGio1sz4vShPLAh7Q16bn3ToF0+r/vQT7eG7rvXOKj7k2prR94yRRqxI4HhSngnnuVidOeB5XZsZ4HhVmPoXuTyFWYCum5z1B0KGM9NJUpjJ6HXC/x1GYJhl4KLO0N9rwoTRv0fCiN33s+FPuarR/apdIpibTCaioTpRqL+6AWtNzTEqjjAWsaYCVQxwMrgToeaAnUcU+Lko57Vix0POR6McrzuI6XKo/r+KjyuMQH30FDuv2dfitf+Fep28X+b+WdK7Fnuj0Y5V4Q2EmQXo+dQIQKaS9PoiCvy+YF8kJatc0L0I0s0pZkRiI5HvntrWYC9elHS4UkLezSk6mkVglaSWTyDoZEormCykLDMlmZhmKjJlZpBsoGJHk1uco/8YEJfQfAWIpUOfT/XDK0iXGoX/UNZKxY+MCN12KmKLVKJG8tpBq0IgHQsIyWqjZpahVjoL4OGSHdgoLZiaUZTrOEvmSRZL0PdrIZBduXh+YP4+gbKVmC0e25zSl3m4zWKlX1G5COdvDSsu0IpdIevNinq7SfY8a/ZpM38E13+5DOqVZPjEjUVTPlVxgtdHxXVW/DkOi0CyO/JvhjkSJTWLmaVyDNtb5AHYnNVlTtWMybXaX0WB/dbW8jYZSQrX9/r1Nbj7wfQmTlP6oO9Bh7z+2slwV+sBFgnUY7/zr118j/P2yM51q9j7H3AumMQ0f+6VKUlX/6cJiN/0inPRt5v0M63mmVl9e+jzjGWeA5KItc1hjcF26h0yj21eKSKt39WIlJZzgUdVR2lCpI0SpKq6WdF7IP3ssqeGh3ba3DkaRSGaKnINlhf9rjrg+zkb/ZdxkOMcpx85ltSHlgW3s9r/5Vtjo0sEGXFqodQ04t91D9Sn9x8xR7wUG+g2CoWnXG6Gdzn/V9RGzbi0uXUqW9iRmxA0ZFmVlJRAfpXM6Mb6VB/8B/GpZkNOKk6MxLYj5az5uEOh9faVFmd0BGqgsy6o9VXpMVKXNhKGIa/iqmFxCGjoWuphFn7/aj0XVIZpwSTUtOfn3J5J0mtryz2prcWVIkXhI69PQ5+5b8YaoRYIxfPr84f/F99WP72VTx6z2641zsT5lOjkleC+gt32H1LEeM44J821znXG90ar6BV3TpaWXaFVSYcDRQJ6Ns77ZzPQe0PHs6bwnhpYgVT1AYKGN6Vj2VbsgyUD4pbKoxkGVbkmI2Mfy4RIQQWRLd7AXbZTI3NXBCsR8qLMQYyLPjEbRztIC2Uq/HQLd+ixdANpjKK9ba9U7MtkqVNG/6ir0qFV6d13nwwnUFAq98UtiYZiA7KODLGGgKOLx8W8DhtVlBhJHtFcQkByuEI12+15muD0h73gIb7ZVgeZnScX97QTL956w6J3NG3zMPcWbTMIwt0WoLkZEDkm971dL0vAheM0IeuCj2/p6iWwyue1wgApqsFxFHsMondA6Py14jX0L2xfkFvGzzNbBs4LYvRoBKN680g8ZFfUyBx4VZdSyS7cWFqXQ9duU6rXT/e+MYUdR32ZAayY9eaRuqhbulfQ0bxhFG0rR66pDlS/oAHZtohRRsBl5FVuYF9lUP3+nYoPGyuJ1yHwZe/UP7QB+Edl2+Rk+/Qok3T1q6iNQ8yyhbTY9ItEFG1wo24MtU3wbpCAELJyn6R4lduuufRg1olmzlbUbwIukiQ3Geoow4Wgy/a2OJMPCpfJI3Uxz7OPYUDnWrmOBtOf0mKHKXnYszbkiGslN1zTLi9LpvaOkiMx4eT2oOqsZFlOuH3Nnc4yIWrOZpJNogMx8KNiA6TXM2aOW7iLDt1IpInle+y2XPvoFF8lDfBHwScP1F82i3FVkuMSasLJIiE3Yspkw1rMAnftfIojlgsp2XmmD36zqdpy/q+YruaxgePRCt0GlQElM4KKuopHShn7KW/CIzRan4Tr4PaUqKd6iGj+3Id+QqilXRBaX1kMCRsRhTlOo+jVnHfvc71Zif0AnshXjgejomAZvQYVcaqEf5hFw/fBpLiJVikORFhlFUx3r92da/mxUKQ1mJRl741VstatsUBmo8upsQKcaxyL+b4QJlR1xQLPmGarlcodDdlGj0I0hRLarOaVChSL7pteurnulNpWeya1+9hwdrq70vVe3LlarnfGz0Agi0egjdUzKKriklHkg4Pb0KaEpwEGvsuAAqFOY/K8n2Nc32lqz6G2ONwE6kucmq0VCMnzkNFtVKVywoq6VZAimncvWAsphdvAUDOeVEZLcbNDmpujyRTQfZCPBDvXoSdbR0GFRjY0pg/mBxu2e0fpWD3hyY05dBdg/kT1VfPNz7I/EjCq/YF307xNQbv6aGPxRkIhKGkq7CnGd2XhP5KJ3fJTonwZ4yskCo/M9l1jnfs9PMcx4lB/FFXqunYqYePtVW8U4oJnnbzZMyZsvTNlrMK92Bqh0Ztf/xK+jaKv5jjKLAYw/e+LIe7KwSV5g5ijvrPbzwUGpjP0X3GVAypzgLEp/ECpGD0gHAyh9jT9s/3RLf3tX729UV/ab5WXQOaqzD6/iJCki5om8lOhWIpm9BYTZRERVmI61RYTRRmS6MJkq90mQiIChNRlITpclWBwCrW5qm/bPHrfLqzmuXvm3nVE/csVPiDr8ytRlikOEmCsNE1C81FJsu50ysOAWZTy+MLh4dviepOY9ffxa/X6QukQWim//UNfJYdHG5lsZ9FgjHa8pCe5TjH0SnitRVgqP4PmZ1lTII/bnbspWVPBThMLRPKs+zDhSpWMn/Lp7D6KRJKOpkayhhWYdXXWtuF4+6iniji7oGG4ecXexED2FoKLG+aJrbZ58kJo073UxC7xOwFSsy18/21kk2N9+mIWJdlfon67KFPV90+EtHwz6h+e5yexnRnb3qErMn7dRlZvZ1Kosc7WvP060vGkGpa9DzBBAlZ/yiu5WaaGOlhsILa4mqq7UvDwe6TQGilxXTtZbEu8WFdRURB3nh3t7byiSBdVSnwjs51SVEl7hrKHj5uej0kZaKdb6pJz+hdEBayEZs5qSnuhjpaZ1fPrePqWpdxaXHunLrEkH3m0CELgtIjvbPf7Dulmb2jSc9lASgcfHiBwCVF/YFLM+tkyen+4xmrgHUE2J99Lwko0Xr/Mf0kuQ2ACGjzx5j0bS5slJzPspaKIgAVOYn5pVlHl48/z2Ehutl1tmR61inVKWTG3cs6eGd2UNfGgrNLmu2ny+3KRwToqTWj4IiEN+spCM6+xKEnpBNx7UjpHLyyEiPPd+ew6bJUBw0bYhiZtwCdnRsO1QdqWanOYRW8BUkmvIiKz2ILDy3XqqjM3siTyjErtHLHvl8p2zbnlwmdqPS2Defx7Mp2o3U3M5xRd/ufYZE181qSZiGwagyan13p+pMQ9EVsc4dQ7U7lAfCi7ukathL20Ov4oPkijqWLNUklUvGWMaxE/lWuSVKc8Pmq6tgNE3WFaA9V/2Kuqswd1e1VCBF/szrcnLvt1ZpkN4aLWE13usm07C09qcLTEVk9xxoKMwdE9KWMY3UVsauURgLARCFgfi4n5aQ+Ek5HRnes6RlIMXCB6NsFO0Z6ZqCPZfBysSEyszBMW0ZexrbVqwrpT/XPaEiPvGmq2LPkqHYT0gPN0qNW+iuWi56rU1XxZ5F+PCapggASZgU8mPMNooAjLPvp5soGTKRxKfdVveEQ5uakU1gVs2IhQJbQ4dAiQLhy6BK/snn80vrmqxVmrnuVKrSzsMqZpYcH9n+LrZT/i7A9871m99+e/OJ/6PKIZFxP93cABExqYoqiEhedmiA6dgsOj7fpfFx8pdz4S8Xwl8uhb983/wSoaDeblr9vIt89okkJt0z6fJzCe3xTtrZbXap/o1KJH4Z4i/PXn159lOaJX/HXvHq/Xv25XcPURjnr/i3P3/58uXZqSjSV45zf3+/q3br7cgAiuQd52PlaIdpt4q6/I5PgzJvRVZWXwY++1x6u8ruLsdFme6a89TX7OOf3r1x/4wJZny8Sug4MdwdPY8JpH7UU/zDly/Zly/xd9/9xCZ42C3p36X0htOsMr37n/S/Dnf3kzMI4x9YdHFWEgtU95+/+y8an1Fyh0lsvjqgMMetozcPbCIpJ7/859/ar6/Z8w3s2y/P+KWObY5xSTjqTQz8R9K7q58q6E3cdH4Ok6PwNxKOlG76xPmkk31B/2AukwK5/qHckdSccMGySfVVyS+crH7puw2riYMDGWi67du8op/d/MI777vhL/WN/LJHN4ZfVo/STwaMPVbKOu+8Bp5yNHi8fOygehyp/11vbDD2wnZ5jzw1z5eNfqEbu+tttsL97lNuVRxMHnTouOWb0gU/D8+0Kzhjp9XVHD4I3fXOOwvc8BZF+HO1WUXwa/84o8BR/+kLqZsikDvizwWIHHYOxE254A/Od357MhVz6V1VUN98lVy/isPqO3/PW83ht08p7lFKz4Tsi/+3pcCnmzekOeQNft3TbB8tim9JOxKQWAj93i/9isHlXw+8j+pwgTtWOxJeLwvSzqHB+mdSZknLGQYeaxC7L/l1XLRnhjzxTyNfTVfHJeKItPBjJxN3vYws4DsqwS7/bubnhD+PLDTXEFQuJvRHLsQajDNg6xTelMNBwrEbeNicaydpnkyhK70bHNFZYfytF7gnE6W8H0a69jQq883j9W/Pfvfs+u37j+/eXr29+Xf3+ubz67cf3I+v318/e/Xspz/SbvKX7/gOnp+/PDvfPf/yjHyDYy+hI1vy1eebX89efnn2R2KW2iWGuV3iLEYR/lm/IaUWeJf+8doj/xKNWvRZY4c4Iv/76ZCEPs5aY1XJGrkTuK6795Ouaz+kAm59jEYR5Cf2yCApJiTNq+SiX7Lam37DcmuVMIo2ZsYhdtZ+cqoIEEROD2Kqg2lpvW9gYkQIqi8Y+IDamBwngVqYHMGAW5gYcEHbEAx4QM2MRw+g8uN5CFD5zvB/0QQeD5hhg9Gb3QCV7s47wAt3pi7As81odgs6hSfH1dBGRHMKoHZGE17QoRBNaIDaWSijCqc7l6sxJufroM2Jp+GWtDSYoFswo6FVzIzn3paNvf48KKityWn2ZS00M/WgZmYm6aETZzxfbGpBMFD4ie8c/kgyGflYZgGVIBivnKtXzmdSReTObfmVdDCSO3S3+49f/upc0y0TgReQoVxR0rdY716490l2m6c01r8Gxz3G9GlYZzwYdOqx3IhuCwynHoK1NM0Yu/nmu+XGzLK5GKtRM59+Eg6bha3DrjLczIG0WWyc77SbHp6DQcWn5jJBbYyndKGDMDltCm1keuIV2spobnZZAwuEYGpyeHEbS4ZjPIUNakq8dAEdIpW5dlCbUwspoAZmV3RALQ2Wnky1n0Y3omncNmm51fbzWLXebFOUWts92qH1ZdwZXCFJBNvF1IrZcCvZ0wjCuVEQLp5SEC6MgnD5lIJwaRSE759SEL6fDoKoLh1WBoNNnaorYfXpH8la2MDXa9ZLnPUj8Hld3Xb4Du1zBe8CkebuUmUJEQ1bK9ZUmcxU/J5rfMguL/bHi3PeV6syUc4yxyuHpE57X3YVh04nQjp3slZgzpTq3IKiKmyBMtIogdNOyerhzq5UKifr26qfAZGuTVjQ84vnhx9/eBlElxe832UaXRzPEWoDJHGj7SIvSqGBG1FY0mbcAQhaaYJy7suDBw5aiwKTZtVrOMCoXBWatVgiWrkqKKtXvRgGSso1QTnpbA6/RxaUtaMLyxuhZiSdZPDYI3lY+rQ6xw/LzEVBSfEC+RcvkH8POX9PD5S0UQVlPaZeBl9/NarArAF8tNai4KRumlSXboHjNsqgzM0rkKC8jSow68MSqA/wpMEFfOnimrCcyF8AlIvCkjZ3K8KyNrKgtCFpvcFZa1Fw0oc9gu+/dIUXIab7ZoN4gWHYlAHYEODmuTxY8FYXlneRNiJcpI0Il2gjwiXaiPDu6MOTclFQ0iiHbyS4JihnmsFXBlwTmtPNg2OMwkV4u9qg3OzVSmjgWhSUNMcRCsJ98gCO21OGZV5gnJsvMM7NH/N2qyMgaiMLSrtMS7tMO1su09CWy7S0ZY4WGOk2qqCs934Cn2NrUQjSiG9mg4Ls6kEswg3X9mAwp2QXXYNTdq7gUMXJ+OQnPXdkshYdxJ7GGvRoR2mRRIFC213x1U/Wtr5UE2ViI2iUB7mb5Bedq1t1GKb8G9MEHTn8ULgFym/dDB8Dkg0VGokemVTLPM4wf5hPJ55qP+ZWj3Q/RuclBB3rQ7/mFNUhNO2c2viyyKlm+dM+V7okM+XaQW48WdgtUFEqDEEGhhtfcsvq9e2wvsszi/puvmxK94/w8NZvrUq0rPO6Hk/Hl22O0zTceFoy3YskCb0TClQaSYCsI4qg6loB5RhqqOu4av0rJ5JmT8amgzAfapa7NWrCNvC8hhjJaPbpRKlhCQRBcvQ8N80w3xxuTjTWAc8nC3Vh90lShAm9At+kG9s/G2xaw/dV5KW0ZR7cxeiMlZas3FAamAa5dxJUM8SBM/Jt2HT0z6N2Lho2p+mqGFJ1z8t1ElNaOAdYYhmL2GLPTXiJSl0xEUs93xBpZkTR8w2Sc1KU5SojrtmM04qA5mY7qI6KBVWGc1y4atvhJnD63kFqNJOm4ur99dtrk1biit5bZtz/M9tRPbwhhnX66cGoIFTJqSysDgVvZrfGEla9j0pOeYAuBDIYpk/yFF/r99mMYPreAWLmqLI4JYyVo8kq1OhWoQyT0eLlpRlH17cVR5SWLsqiu5dGHD3fW/RKBcX6082H64snUSskucKpiipmGfQgq3HvVkmc5OwlVjOMjue1RqdGh5fGYaYLBpRc2uPsBpuf+Ol7/1aGW/xFAJNWtHM9gnmxgZhWmLinQZpvebidjt967DwtZzuyH9zuBEZotNVc4VIjMEDDvbryW6sACU22X80Dxncq62GKgLXYWrUpxAzn8DYz0ihJa9Wp6OATntNy8LkeirFRg871kBHZ0QPP+1CMtdgT6il2r3HddhmhS6Ie411fdZQPlWzzQ++q2xMKtbKtDLAjaMkZ9HW77/Mao85ofkuLNb0cYRYfvCkbKoGmmRXaWOoJVTP1dVTbVjE1hXrprX3UJberYFutNFd0ZbhA2REXbl4QEnu4CUE41kJhLVwOWGgtykupSDirWznZRZn2fCO9b6mya/Kocm3SxAOv5LoKoDnHmqhWWSjn2PON9J5QJRyl5cY7RdJSvXASx80Okcrft1QIKbJybqJBrbdfpFpTICvkmt4l8dvmnx6Kek7qeavz1EjLtkrpX6bP7oaGRGwVYUF1xzMKpIAjmr5wmgV39Mpk5YI1BTsj+i1VMP38axgjvNIZaS1RFgARW0XYDGbHOCH2hKrx6vzItvU3P8NC58LUK5zKU7Oxti9hm1G53C3OYhxaMrUi31I90o1Q5ezPw1/vcu9LwKaJHVMr8pSKYvO2z8bFseHQyPmNn3are1fFOvHbd49oN4KdeAaB68kBU6ZZQm+jg+NsBYFJq2vz4EAbPWBOwFzZ17PuMPSFNaqnIeKU1DfVcLTl3iQSmqNZXRXA1LGAGsp8K/tfcORnd0a7X9gTbRs2RhWAvLyzEDqVa1aMWo/fTNHhyNLs2QsrzZitxyfUl1E+pb1UdGK1AwNVbHZOZ2LtowLLRya9upAtsWZlarEPzbo49jhUS2XPEyucI5lvpoz2yRUzVz8CaB4byTyhvEafU94wiw1ec2ZPzFav1KjmN6rAstm8lFWXgknT/uMhRPnJjKzn3Z6GbuI0A6l9fjOlsJuwqoWQBZmWvaFn65g3IgCxrDbQmAq/5rBCpQyYcrTegcqAEUjtc60yEAZ7uzJABBj41fvLS3bwBmkEm3h2pgSeUDPEn3jfsCXiBKp1KnfOqtWO12+mUq2ZFYtPHVxagjpev50hsVoJhLxTBUeq02yMjuWkrh/Ds7BEgj41oWeU+7AwmWQKh9r7NrkXc6NYO5zYNpzsEnw9m7UXc6PsFms9o7UXc6P0tlk9m9yHuUl6cayeSe7D3KTawkLPpu7iwdhorltUcsuCUq2C6RptPJkbVpy/79nVnqMfm61uxNQz2/hZ8jYTiysJm6ZBocWmwWKTW5H+A0kTdfspUHhhrGe19mLXhmna1Ds1OGmSXT2AlEaZfcsdjxZXLeqHu+/LPOyqdwj2wm19hSDLnwonWwc52uaCGdbxULu1sJ/GtpcW0pYDRYcy1i3BHV/mppXvwOiZtr+esu7n6UZ2ZnMdDO/o6dnUPHQs6Brq2dR9UknQNdQzqvsmynTXUM+m5tMFkybN6ua+R7u+qZ5lzWcQBH1TzbpC82WAyb6pnsncsqSq3o3fN6p9872wU6xtmHuy7RTr2dXfhCDoFOuZ1bhafrHLPDwCWzwaTd6wu4bTJMaxzTJq6EZ77Bdh7uZlSl+Us32WujoVBPF8caV0Vh0uP0Oeh0Ocsev4VPa9VDHrdKPJGYfWqYw487Y0Z/NB3oHWn/OdjMQ2yCo7zRQjrT6y1ArrxZCANHDTHLle9pgWSidEtWiH4lukqf7EtixN4QpCfTarFQZIU4RzF6ksbGphdlQBGD0vWoCxowrBGCFvCciOLEQJxvxcSERsQmfNoTYE7wmdLxCrXVkYyosXPyzD2RGGIX1xfrEMaUcYgPS4SJk/gpZ57P09Rbd4Ac6BMgBrccow8oP4uADtSBu+rwHdig7FF+1rWF8eFjJaPwvuNA7riMSgeq1VFBZZrHTAWJA6bbh6ncBaFTAjVVaUT/3p8Q7E4bH5/O9S4K08EDrpDPDZW9fHKY59HHtKF//rBGDGCFwweAztyyAsgti9xY/woRDYAA8EEe720RYKxtjKIgEhtRo9Mh9AF4s5K+ABQaThXAq/1gaHJmOSpZi5NDgye2C3KFV2CZmB9wyA43tBelI7iWjC3qrDgRcZivMUZcT+woGYtbRogE5Ku/Htg3My2ravGZhFaqIZO4sGZokaSmxmmaAs3MbNm4ILUpKif5SLNh2TFsADsHByCK0slRIL1cYiI0sFY5Fqa9oESBCYxaDIXXYuBxB8JPxtLZ8Mr3sr92FgpjUX8XcoLFXeGVOJdjqRVGE6I3WjrGKSAqLoyxFc3NXXLZMmo8wL7Ku/u6UcjTly5qyYRKcgGwTuOsGRWQILEntwDpa9kVw9GytMgYGFVCi/8BQYaABmjCwzVwFNP9BeauS8EHarvvQU10IBGFtZetJxwYDALz+P5qYWoufS4J1kunObJix8rTNlABy/eEwXqDCH4ssM35eLeqGVZQKyTCJMWnjaq7D1/panswTrtkzGQ0k8vEW5rwkz6G013bIIlK441YVthMGJLWdK5piB50e60sR2lqSPi2B3tMG5rSbV56BBZ9G7wkAzg3PsC00LDk2cUOyHgcWGDlkYugbAQ2C/xjeHD7/A11VHRYHzYrkMNNCH6ynUBpJc7RpSJfJJ5WWY3eqF36xQeiLYlH9o5duam53pddjHWH0Da08TvHz5+BDEFt3YGd6uNji3Xed7jhp2+DPqiC2BXAuDEzcTtWzn1RLoIwvwtZnOS4tK/EJ1+B72CXu3Gq9faUf/0AB8CBZkX5DabnJ0lhp2ZnRq9LEEdkd7mZHNEtAnoysNFYiB5qDn2BeagBYOPJYKQ9fAgiObJfB76ouObJagH+g/7SlE9qZGkXhJyM+ePJmpxGBI5maIpA+y27Pfl2xPHsyYAuoY1ZJA+90FARFYgTr/0bdqMwevlhCAHdOpmIHnF1h5GpXAQldSRIGXBWXkJrnJpRS2LyXkSZl52LbaukUhRLV1ywZUao+mtdFWv79QBcUhIk5fCKAI3LLnkwKFC26lXLXMFnNG+hdHT8YGfYsY5V4QWCQTv0W61QFIJaqXFwpLO1IqrgLEFKnclillivSuz5THk22O7kTWtrk6OR5JVx0kZ1dSNqlVKTgdJYgUq9Rc73RrnWp9wJ4kICkw5Zb5K6MA+/IAkcFqLYscVks4XS2AlKvlbJNuxLdt4hVKHSt57BAdF2eZZQNDZZyhFkTiUUk6oa4wvlOAa5RA0axzVp9v03yl2fGeiR/+uJBl3PBPA7EtYibNMBnfeTjPE92tVZPx09WzjaWuljMp/DTGmoKoDWIvLH394dpEfjOJRG7eMd1bPx5U2VDcAjxD1I5ALEB6ItY4Pj7YwnAJa5QIFQorHPMstYY9jMrtqhIWvbtWhSi02bZE4RLWKFVDbQnTiNjh8BGPDUwrYYVSd7BsWLoa9jBJWtiW7KGOPVRqWb57IgA4mcqV5zKcTO8SdDGO4l4dCY/pZnhh994WCKawMynlZwAkSAYPA0xCFUkSeicUqBzSECP1VZRvyF7hVeS0XH2iv99zTEvFp7m6sZuWzRil4x88XgXhhukypwrvPwzC3HSWU62XIMQRj7yTwoYBMUWrYM2i3ZINSCBaMKpDb4B0c6w5jBjAdEWeUGmnWOozVwst7B1j9SpnJq1QFt29jFwa22h3rZFWLBLq6oPAOEMliCuzieSPlaTCZTYyuK4SLBw1p5XR5/hqMThE0o7rVpMiwFYKCO9lrQmU/bpi0DEIlAm7YlvMAh5xjDPDK1/G0cPC4t8XbqE3v92PnQrJGes9jUk/87ai2uuwbeeQZjjdvmHFXadPR8GqZ0B1DkcXpaklTCtiy+Pv9daURyxcwJbjECJLkFrBlkTp+uM5EKMLjic4cssI4QLWHGWBHyxJaglbFjaHYoVSK9iS/MMO4x8QDLnm7p0RRW6ycWeCo0AKe15nQbiCLUmB8ls7klrBmiSILFucWsGaJNLbFjAGiQz2Aow57pAlBxewG5uz47H0cKw5Sk8DoEbTWzaeqtG01oefxLxVojcRygNdT44k9tPENOJM5mhGJEazNMKymiFPbyptzNNoWMM8ptYsXGKL2SuTLe9sm7/JbvcMBaGrs4kZZtvOcO0DqRyIZoF0auJ6kaH2a7f4QkWjg8J6uBii9m8PUr3b7bJbJskAzldZNJvhmpazx1RczpshA1rKo1IHzE7o2fF0RdZqluqTO7YTy/tQt2kTRybR0o7HOhwO8ex0VTa5ygNj/PL5xfmL78HipJU0j5pWw5nQ3CKivt6jO7h8w9TMo4d5d/pKT2MiURB73ilIbcstPmSXFzB3gjOph+PFA9zV1iwxaDDdPMVecAgUbvgcVrDEt8PQnAbQmdZd7TrllfMJKovkiPU7SePDZizeMhxilIMU21qyTplz9+h5tYEd0kxqHk5nAOpIrTzpUp6G5TGwTrwUnXlJzDfmmB6gEBT4c9B3AFhS0U1Nbopcr8zuDHpVVZw5/UA35f/cEZvZ9kp1itICVxlWPuWiFHiRNMByZxOB4MADVSDWUTTAZC+RNGAMV0MWcOop6QXyBSywMSvQObS2/igCoIv7epqmxagn4kypwtwh05c1TFsJ7OZpmx3Yfmjw9OW69mnMhRyROnRa19LW6T0L/mRGXrYTpvM/jjrq6fx4znz2c+STRrf5rCsB5fN6djOvrY4wQxEn9SQZZXZaL07ft9UkHsmFdiwjgbUm8KjVMNG9LGEiHYiIsDqaCjhx73T8WUV/raMT8V37QMlvgtD3+q2s2OzDEhdJotSygd9RROMrKZDrH3Q3Iy92GwBJxX3hdsBcvkCXiPcn0hzRxGOdNzoS1fF2ifIq3Zv5oJoHcFLKtiAOFOfKoyacfS0RANJNaa3VaBxRQRffs7vAw66P2T9BTPtt7KJGu8aERLxEXy/aJGKOmr0nVzPrdQ2V1ulgq3mduysFJcUno/YiyNtbkoXjnXb5rk79+g5BkY5ygk6iEZ0Ys6eZ7NAmdezQ/EfyOfBYpvb3dnhCLTvE8MJDqR3ZUMIOKEX3GVh2E4tZQuIsSHySGkTbknBaCQ4PJh5nBe1g88fYs6MbKFhWJydE6oHQzZMy9tktbFaViljNGJPqssPZyEep7CUbEZ1AxAoqL5B3S1rrYGYz9BxP378cxfxUjs4LLcJWh6QjPS47s6Y1Dmz93sNYwS7XjsulGdSkDnT7bBxfY50l2mczPKEWYPtsRjaUWKR9NkMTi8G3z4aE00qLtc/2lNBx2W1dzegGCsu0z4aViljNDpNXA7PXMcyS9QVAOwvaQAIRgM6CaeJNKVjhhKEVS8+7BcgRpTMrsGKC2p9VHBjabjzaGmcvEZDctQ/CoJh5dUiCMpaB6tVaZNPavxWKZKP8HIX2DvlJAOm1UnMIWndJmfftSQ4w79sTzt0DU1ANH3HsdP0tGTSr8zVvfv10efGn37T3+I2Efru6Atox2sSieIPoOMLpHoQmLA6BcYZK/1/ccCDdBTDyUZyCzCc98Kx4NJlTjvbYL0KLa5DYXt5MxfZMJiKNLqlf6cv2c8eN2TJvJ7wOh3c4gzOSsbvs7pRh5M89ViAF6klYwdTbeMxZugogKPMv0yvzGL5DP4Dax25Uig8NSmla/3YYwTEuI/nTonKesZDdgXH2vKR7n6HUHGogYgc0f0m2QlkHuSK7V2UApJtYDxTzDuXBzNEqbcxWzwoTe2n7ci8KxV1tKeCUEgCabbwNVeyQqrdT3TQJLXLcUMUKKfItq4iOgB1ISu+qsqsi+hrWOOzAtB1NI2ENQ/sVMy8RK9G0GtY48xc+KNHA3PeQIj9MvFtzlI6AHcitZUnqCFiC3GdBYZE4HQG7c/k5ojW5e8JhijPxBIgUaELIbhsZGfj7eF8e7dEmpazhvDCYew5UiarVsMaJglx87FcJplawRiHC55cA7fq0FhDeLX60zFJ9HbvqgBQe/oowzxLmI7gpKYBRisUEQOMfbLBkydKIACUaRGoB4riI9CFAclAtBJa5LbPSpBQUnJ+RGqbKG6yRgKCc0ITCzcOkUHkXXAd3QhMMt0gyIguD2WpB4ZExJAga14HCOqFcfPxRh6sWggKLkPjCbh0urgOFRXqhIFhcByzzA+V7+yzvnTBd2Od16PyqvLw1nRYDbcbMR0hjIeBmDAKtlQKDo5eJg6BxoaXaVwjGCU3IFgECkeuAtggQXLUQFJj9eE8gBgZYwOQ5rgPZkkJgcR2wlhTFfhK5QZRaTIOL9SAbfBC8SgewwYegykELwLB3D0I41oQeMYBgtlpP/Spry70gM3GLZja4CSOzvnC5/owsbgAb4GSBQdkd8XAVCKA8PgcA4ipAQIbrBFNUhisGk2h7lOMfxLesKnO1OhBQbH8GAFSjAwFVBqHPzlkDgPW0AOA88k8YQpTDrhIEmAeQjlwEAueEyP8ungMwdZTAwNIkFO/p1kSrtUDgsPwcggYeNjqTMAdoOJAfoRmO4qehjEYEIySj8cA0ENvzf3axewDA6mmBwLGjnqnJOGAM19WCgevsfYXg68tBIBaZ62d7iPLZUQIAYyv29lSNDAgSQAfa6GmHaZwTQBvJRQBwsOcbzEwNeWoVGCCIWqGRAUH6e4puAaqCjhAIlsFc5xjJYKJzGqfaPQmA1ApBYJntNRxBme03nEQ6QnSTj2Dd5NOtLz6Tq8xTq0AAkV4QUPPWkwJA47pg3eOxHgSkwQLcCMxg7U0A8wKC5gUUDo6S7NHdl4cDzlwUhglAt10gCoAb48LNE+8WmyyDDDEHYhB4QV64t/cAaK0QAFYSAJQALgKAk2KA+p6LQOAY7Oke0Rhs6xbAePm5+P58DaBaBwgKoNZqZCCQ6jOH9lQdJUAwoNHySA4SkZ2PhEOs5SAQk/Dx/PI5RKbrKEGAZcEdKrCLPA/nAG3QWA8CMkdQadtRAgDLAlJt++c/AExB96Qg0CBG2UYL8JM4+QkBLOPVKjBAFy9+AEHiOjBQLyBay1YHAioHKHhcBAbH9ZB3AmiMelJQaGzVIS+DAmJeckoRCjRJbgOoSGy0gOCKgA5jYOBaLQC49p4Ka7aeFARaEMFwNToAULILlJSptC5TkmI9vHj+e3umWgUIyPUygJq2qwQHBlAWu0pgYDnA3G9XadGrlOpwDC/IzxHETjJ+ZM04OgiG02pArGJW2/zo/pgiiNktdUlu1y62jAJZeGwyoomCIph7y9MEuy8Lh12t5YOgtlKQeHYT6z08yE0nvaMLpvdpTFCOFBeAjQv8UOTQBWxefrlgABe4eXm4YBDxzGLI3SFulODg7KcXO3zAM4zNtnqeVCCMPTVAyOArULZslADhiqz0YKr+VgoOb/4yVx067btd5XB3KCyB6FqpRTuTkPdy1jEzfEYJH4/ks/GNl/ljXuDoLsD3tgcurt/89tubTxC95ErJ/XRzo376t4oHpw2OU6k4fTGA3FgJqmdDCRlQGekEE4qsFvtmiojJU5V5EAak3+GGaK9yVmjKP/HJzvyaF0K+eaE6DqZemCczAr2QqNr+MFt2uuF2OoFw+ixOT87uCqFGaTaD6oNpZNGtL0oWfT3YIIOC+vWkMIhvsU++O6Awx514oz5eOVevnM85znLntvwaYy+5Q3e7//jlr841PS4aeEHxeM3i17l74d4n2W2eIg+7X4PjHmN3H2LnT+/euH/GiIx2j1cJ3fQXOrX1YZwOz1il9dbHDRi5cQkinbuN8C7yt8LsAEhQPeK0oDou/T7f7VHBCI84xhn5hXKT/h6eDImmdn4Ck1Z4HNOzMMZ7bh9RcVohtRQBujVW8x79axZwYp5VXu9o3dXeB/+2PtGqrS9+EhxIjL3tbaQ09/6sTUxyNfYamr7K5FsPNjh7IhIm9GpRGBVn8kEGdaWr99dvr50r2iCaZ6uB2qebD9cXEHK8GnCaaiAobOMfR3525/gRov+AaNllsFaLvvlgJmLyDrF9uI9pkLBLqLMytU6WOqVPh4ek6ZIBaQZJXpAmK7LX88ivdJwTVhOjMY4L1m/kO77zMk2TrODH11YxZRYk2dQGpGTzBIZ5bPAn6N0krzN3npSZZ1W1jDXNwz4pmpbAijS9c9CQA4Hd4izGIWyacE2AGKxrgahKEPt6L76LLqGqpjS5xxlcfSeoNOgOyGpmfCUTTlruScfVxlKGaG87Q0Ho0oaxKqOAgp2enVX2EskGGOOXzy/OX3y/hPrXe3QHie2dgtTBh+zyovrvw/HiAZI7LI9B7KTojDSNfFePVe2jot+E5BzeEvtMmzw3Lay63zL57ECa02JqasK2zOKFq51WP89A+iii2WVTbcWJQYCxJ+mXh94JBdaDhLrZqOIATC3EOKVnMxZsHnjFxa8BM8wSg4a4JNlCPIqLkJclr/GBDhrpeKeZY2rmUX55fvH81x9/ePn2/eWFjsD1O/eXjx/dj58+fHzz6ebtm2sdz9XY4C+f37vXr//Vvfnzpze/vHbffbj65Z17ffPh0y+/vXE/fnj7l5s3n67ZnBZbWST+dAmvPrz/+OEvb/5y4179cvPLuw+/Ed431+Szjs77P715ffPumoj95de3v7m/vn33pgf138Lif3cGJfXunD+Y2Ph4/Yt79enfP958mDXXuxfVwByJmk+/vH3nvnv7J/f953c3b0ky3ny4+kCi//PHjx8+3fQsPjeR/nxD/vPxlzoYfyYpTGupcbx1WhFkFppPNzfu5+s37i/X7y24m9U59/rN1c3bD3/pw/6jTIr/3TqqPutFzFsSM6/ffvjlzbX76c3/9fktyYru+1+u//XtX36bEOJDxl+rqWGlWTn9BzPlVia6/dQM+T/6t3v1/vLSPXqenfigA4DKIjniuBo10/YfhxjluPnc9Gmo5fpXBYLmmoKpqnLSqbLDSNVhnJB2a8IxbR4/pDzL0A9v2ax+8+2u9HZNE8qyZsK+n3O2I+PvXi4mLXuBH86iy8u1CA4DgkN69+IsT1czHyaocNE+6EGcUDa1eKRCQBt0kp7ZPEDtapdmuBm9Ty9pUo/vgrxoDNeQdBWI5O5WYXJtzmkNmwSHLntEe2l4GmdPPkBs9UsSmsoN/+fay4K06GWPfyFV69+xV3TqIeqSrpHtwpUyzqGMPfqlS3qTRTVQ7BBWi31rcPioQOAMGokUo5j0cWirsFUMJFFQuIeM1N5uWk31bwQS0w2yHk63zA6EISuKYIOMUK91v0cpa1C3Cb/n0ivvfNZ+dNvV3/9+JfsPDwKC//W/zqemeBZguEdZHMTHfIfCcKNkaBDYjvGtIVLso7gIvH5HR7D7YtEEyXD1fmi+FQp1EQVf+eJqt/EPvqojROgWs9YWZdGODi4KlB1xMWQQOBv1es8i8s3PBn1fS47iVEb7AQn/bh2AYef7LCLf/My74Gf++Q+rgUx2wwkO/f6MfP+zVpd8ZKatH6VErVNRZX6WF/7POjX6jI001QBKU3H9XkFpVfLAWFNN/9khTs6qbzeDEvSJGFr3t3XzVl0nu8NG8uzf2DfrR9fyREbxM27Bz/6Nf7dhHC1KpRNPwgb17ANIntaNoaV5dOJGPDY9O9Dfztrf1o+oVeF0Ym1+ZuHsUP++aextAqlVLudnBc4O1MEZc3DWONiguG6DqROTT29GETD+v4HACaeAxS6/hWBNTy0JnInngu2mgC2p2OTnaOrzjAzesJf/TH/dsT/X4qnn4NzqsxuhtE/2f3O9L9+dvUfpz//y3z98vvn4+cZ9/fbT/3D+5b9//PTh/7y5uvnLL+/f/I8d86zIXS0a7gKSW/jc/BCZ7+1O0n6vhK0U7o8X5+j5xfPDjz+8DKLJbQ6aFcEowoLc0y4JZ5EXTc3LSP0ppL9UY2pjtnahI9Gxq/YMsaTJg8uLKpr8YldtHPLZG1FsQW53jMtdp3qkb20N47EjOHBdOdrRiN4lxQlnIQnWtxXlwqOeM34OEc5zEo9nIY6PxennqS0NayQbHW7rJFzX/f+fdHBJF6Bsh+9TViGJKqO3b+hA9UM976EdX9PxbMZKOekXfDtCnSXuXuy+350PwWc88DyEfJ/tqkEhPae4fRBV21Oj5uHfwt+dnR29uSGOOfApyYsFmjSVrsmSXVYj6AfyoZE8uw+K0xnr6G/TQPK+lqSW1ZXzgswrQ5T5OMWxj2Pv0XzV7OmEKia52B91kPXWu8xaw+mCbqOlm0Q/Obwr3Hzz3U9/fIhC6qXa/E88ne+eMxGiltAbV8lXn29+PXv55dkfW6G6S93sUSu9XZT4JSlxOS7KdOfjAyrD4hoXBVtnHB/z3rE9dUSBaKU4Kx6vPfLvz/Sadd5dd5bHLL2PlRMjwGFuGV4nwkeCouqlf4R/52VevZnVyyrL/ALEJim/TB3gH9c5g7stVkx2lCLv1t0XV1U4No9UdpjX3+8sonNW9wSYTPzrde9aaGJzrpZ49rtn12/ff3z39urtzb+71zefX7/90NnG/+zVs//68mws/uXZqy/kly9kMI7usH9dJN7tX+lz14Qlp1+/ov+hDuj/IzVhGhBX/u27xKsWC/gPr+o/jti7Tdzcv3W/312Q/Mq//l39Bz3v8iEd+5se0vMf/1n9h6g8e11VWprcRlYbZuNQ19z/JKlTidBNTjlJjP/827N//j/DsyvQ=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA