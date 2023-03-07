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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA