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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA