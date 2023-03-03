.PHONY = all clean


ifeq ($(OS),Windows_NT)
	POSIX_TOOL_PATH := C:/SiliconLabs/SimplicityStudio/v5/support/common/build/msys/1.0/bin/
endif
TOOLCHAIN_DIR := C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/gnu_arm/10.3_2021.10
SDK_PATH := D:/Kuznecovav/Distrib/SiliconLabs/SDK/4.2.0

ARM_GCC_DIR_WIN = C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/gnu_arm/10.3_2021.10
ARM_GCC_DIR_OSX = 
ARM_GCC_DIR_LINUX = 
POST_BUILD_EXE_WIN = C:/SiliconLabs/SimplicityStudio/v5/developer/adapter_packs/commander/commander.exe
POST_BUILD_EXE_OSX = 
POST_BUILD_EXE_LINUX = 

# Pre-defined definitions in this file
ifeq ($(OS),Windows_NT)
	ARM_GCC_DIR ?= $(ARM_GCC_DIR_WIN)
	POST_BUILD_EXE ?= $(POST_BUILD_EXE_WIN)
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		ARM_GCC_DIR ?= $(ARM_GCC_DIR_OSX)
		POST_BUILD_EXE ?= $(POST_BUILD_EXE_OSX)
	else
		ARM_GCC_DIR ?= $(ARM_GCC_DIR_LINUX)
		POST_BUILD_EXE ?= $(POST_BUILD_EXE_LINUX)
	endif
endif

AR      = "$(ARM_GCC_DIR)/bin/arm-none-eabi-gcc-ar"
CC      = "$(ARM_GCC_DIR)/bin/arm-none-eabi-gcc"
CXX     = "$(ARM_GCC_DIR)/bin/arm-none-eabi-g++"
OBJCOPY = "$(ARM_GCC_DIR)/bin/arm-none-eabi-objcopy"
LD      = "$(ARM_GCC_DIR)/bin/arm-none-eabi-gcc"

# Command output is hidden by default, it can be enabled by
# setting VERBOSE=true on the commandline.
ifeq ($(VERBOSE),)
  ECHO = @
endif

PROJECTNAME := BLE_HeatingControl
SRC := .
OUTPUT_DIR := vscode-build
OBJ_DIR := $(OUTPUT_DIR)/obj

ASM_FLAGS := 

C_FLAGS := 

CXX_FLAGS := 
  
LD_FLAGS := 


-include BLE_HeatingControl.vscode.project.mak


ASM_INCLUDES := -I"." -I"$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Include" -I"$(SDK_PATH)/app/common/util/app_assert" -I"$(SDK_PATH)/app/common/util/app_log" -I"$(SDK_PATH)/app/bluetooth/common/app_ota_dfu" -I"$(SDK_PATH)/platform/common/inc" -I"$(SDK_PATH)/protocol/bluetooth/inc" -I"$(SDK_PATH)/platform/bootloader" -I"$(SDK_PATH)/platform/bootloader/api" -I"$(SDK_PATH)/platform/CMSIS/Core/Include" -I"$(SDK_PATH)/platform/CMSIS/RTOS2/Include" -I"$(SDK_PATH)/platform/service/device_init/inc" -I"$(SDK_PATH)/platform/emdrv/dmadrv/inc" -I"$(SDK_PATH)/platform/emdrv/common/inc" -I"$(SDK_PATH)/platform/emlib/inc" -I"$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information" -I"$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc" -I"$(SDK_PATH)/platform/service/hfxo_manager/inc" -I"$(SDK_PATH)/platform/service/iostream/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc" -I"$(SDK_PATH)/util/third_party/mbedtls/include" -I"$(SDK_PATH)/util/third_party/mbedtls/library" -I"$(SDK_PATH)/platform/micrium_os/common/source" -I"$(SDK_PATH)/platform/micrium_os/common/include" -I"$(SDK_PATH)/platform/micrium_os/cpu/include" -I"$(SDK_PATH)/platform/micrium_os/ports/source" -I"$(SDK_PATH)/platform/micrium_os" -I"$(SDK_PATH)/platform/micrium_os/kernel/source" -I"$(SDK_PATH)/platform/micrium_os/kernel/include" -I"$(SDK_PATH)/platform/service/mpu/inc" -I"$(SDK_PATH)/platform/emdrv/nvm3/inc" -I"$(SDK_PATH)/platform/service/power_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public" -I"$(SDK_PATH)/platform/radio/rail_lib/common" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ble" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave" -I"$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/src" -I"$(SDK_PATH)/util/third_party/segger/systemview/SEGGER" -I"$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager" -I"$(SDK_PATH)/platform/common/toolchain/inc" -I"$(SDK_PATH)/platform/service/system/inc" -I"$(SDK_PATH)/platform/service/sleeptimer/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src" -I"$(SDK_PATH)/platform/emdrv/uartdrv/inc" -I"config" -I"config/btconf" -I"autogen" 
C_INCLUDES := -I"." -I"$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Include" -I"$(SDK_PATH)/app/common/util/app_assert" -I"$(SDK_PATH)/app/common/util/app_log" -I"$(SDK_PATH)/app/bluetooth/common/app_ota_dfu" -I"$(SDK_PATH)/platform/common/inc" -I"$(SDK_PATH)/protocol/bluetooth/inc" -I"$(SDK_PATH)/platform/bootloader" -I"$(SDK_PATH)/platform/bootloader/api" -I"$(SDK_PATH)/platform/CMSIS/Core/Include" -I"$(SDK_PATH)/platform/CMSIS/RTOS2/Include" -I"$(SDK_PATH)/platform/service/device_init/inc" -I"$(SDK_PATH)/platform/emdrv/dmadrv/inc" -I"$(SDK_PATH)/platform/emdrv/common/inc" -I"$(SDK_PATH)/platform/emlib/inc" -I"$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information" -I"$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc" -I"$(SDK_PATH)/platform/service/hfxo_manager/inc" -I"$(SDK_PATH)/platform/service/iostream/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc" -I"$(SDK_PATH)/util/third_party/mbedtls/include" -I"$(SDK_PATH)/util/third_party/mbedtls/library" -I"$(SDK_PATH)/platform/micrium_os/common/source" -I"$(SDK_PATH)/platform/micrium_os/common/include" -I"$(SDK_PATH)/platform/micrium_os/cpu/include" -I"$(SDK_PATH)/platform/micrium_os/ports/source" -I"$(SDK_PATH)/platform/micrium_os" -I"$(SDK_PATH)/platform/micrium_os/kernel/source" -I"$(SDK_PATH)/platform/micrium_os/kernel/include" -I"$(SDK_PATH)/platform/service/mpu/inc" -I"$(SDK_PATH)/platform/emdrv/nvm3/inc" -I"$(SDK_PATH)/platform/service/power_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public" -I"$(SDK_PATH)/platform/radio/rail_lib/common" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ble" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave" -I"$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/src" -I"$(SDK_PATH)/util/third_party/segger/systemview/SEGGER" -I"$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager" -I"$(SDK_PATH)/platform/common/toolchain/inc" -I"$(SDK_PATH)/platform/service/system/inc" -I"$(SDK_PATH)/platform/service/sleeptimer/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src" -I"$(SDK_PATH)/platform/emdrv/uartdrv/inc" -I"config" -I"config/btconf" -I"autogen" 
CXX_INCLUDES := -I"." -I"$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG21/Include" -I"$(SDK_PATH)/app/common/util/app_assert" -I"$(SDK_PATH)/app/common/util/app_log" -I"$(SDK_PATH)/app/bluetooth/common/app_ota_dfu" -I"$(SDK_PATH)/platform/common/inc" -I"$(SDK_PATH)/protocol/bluetooth/inc" -I"$(SDK_PATH)/platform/bootloader" -I"$(SDK_PATH)/platform/bootloader/api" -I"$(SDK_PATH)/platform/CMSIS/Core/Include" -I"$(SDK_PATH)/platform/CMSIS/RTOS2/Include" -I"$(SDK_PATH)/platform/service/device_init/inc" -I"$(SDK_PATH)/platform/emdrv/dmadrv/inc" -I"$(SDK_PATH)/platform/emdrv/common/inc" -I"$(SDK_PATH)/platform/emlib/inc" -I"$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information" -I"$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc" -I"$(SDK_PATH)/platform/service/hfxo_manager/inc" -I"$(SDK_PATH)/platform/service/iostream/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config" -I"$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc" -I"$(SDK_PATH)/util/third_party/mbedtls/include" -I"$(SDK_PATH)/util/third_party/mbedtls/library" -I"$(SDK_PATH)/platform/micrium_os/common/source" -I"$(SDK_PATH)/platform/micrium_os/common/include" -I"$(SDK_PATH)/platform/micrium_os/cpu/include" -I"$(SDK_PATH)/platform/micrium_os/ports/source" -I"$(SDK_PATH)/platform/micrium_os" -I"$(SDK_PATH)/platform/micrium_os/kernel/source" -I"$(SDK_PATH)/platform/micrium_os/kernel/include" -I"$(SDK_PATH)/platform/service/mpu/inc" -I"$(SDK_PATH)/platform/emdrv/nvm3/inc" -I"$(SDK_PATH)/platform/service/power_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public" -I"$(SDK_PATH)/platform/radio/rail_lib/common" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ble" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154" -I"$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave" -I"$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti" -I"$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/inc" -I"$(SDK_PATH)/platform/security/sl_component/se_manager/src" -I"$(SDK_PATH)/util/third_party/segger/systemview/SEGGER" -I"$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager" -I"$(SDK_PATH)/platform/common/toolchain/inc" -I"$(SDK_PATH)/platform/service/system/inc" -I"$(SDK_PATH)/platform/service/sleeptimer/inc" -I"$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src" -I"$(SDK_PATH)/platform/emdrv/uartdrv/inc" -I"config" -I"config/btconf" -I"autogen" 

-include $(CDEPS)
-include $(CXXDEPS)
-include $(ASMDEPS_s)
-include $(ASMDEPS_S)

rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

ASM_SOURCES := $(call rwildcard, $(SRC), *.s) $(call rwildcard, $(SRC), *.S)
C_SOURCES := $(call rwildcard, $(SRC), *.c)
CXX_SOURCES := $(call rwildcard, $(SRC), *.cpp) $(call rwildcard, $(SRC), *.cc)

ASM_OBJECTS := $(patsubst $(SRC)/%.s, $(OBJ_DIR)/%.o, $(filter %s, $(ASM_SOURCES)))
ASM_OBJECTS += $(patsubst $(SRC)/%.S, $(OBJ_DIR)/%.o, $(filter %S, $(ASM_SOURCES)))
C_OBJECTS := $(patsubst $(SRC)/%.c, $(OBJ_DIR)/%.o, $(filter %c, $(C_SOURCES)))
CXX_OBJECTS := $(patsubst $(SRC)/%.cpp, $(OBJ_DIR)/%.o, $(filter %cpp, $(CXX_SOURCES)))
CXX_OBJECTS += $(patsubst $(SRC)/%.cc, $(OBJ_DIR)/%.o, $(filter %cc, $(CXX_SOURCES)))
PROJ_OBJECTS := $(ASM_OBJECTS)
PROJ_OBJECTS += $(C_OBJECTS)
PROJ_OBJECTS += $(CXX_OBJECTS)

ASM_FLAGS += -MP -MD
C_FLAGS += -MP -MD
CXX_FLAGS += -MP -MD

override CFLAGS = $(C_FLAGS) $(C_DEFS) $(INCLUDES) $(DEPFLAGS)
override CXXFLAGS = $(CXX_FLAGS) $(C_DEFS) $(INCLUDES) $(DEPFLAGS)
override ASMFLAGS = $(ASM_FLAGS) $(ASM_DEFS) $(INCLUDES) $(DEPFLAGS)

DEPS := $(C_OBJECTS:%.o=%.d)

all: pre-build $(OUTPUT_DIR)/$(PROJECTNAME).out post-build
	$(ECHO)$(OBJCOPY) $(OUTPUT_DIR)/$(PROJECTNAME).out -O binary $(OUTPUT_DIR)/$(PROJECTNAME).bin
	$(ECHO)$(OBJCOPY) $(OUTPUT_DIR)/$(PROJECTNAME).out -O ihex $(OUTPUT_DIR)/$(PROJECTNAME).hex
	$(ECHO)$(OBJCOPY) $(OUTPUT_DIR)/$(PROJECTNAME).out -O srec $(OUTPUT_DIR)/$(PROJECTNAME).s37

clean:
	$(POSIX_TOOL_PATH)rm -rf $(OUTPUT_DIR)

$(OUTPUT_DIR)/$(PROJECTNAME).out: $(OBJS) $(PROJ_OBJECTS) $(LIB_FILES)
	@$(POSIX_TOOL_PATH)echo 'Linking $(OUTPUT_DIR)/$(PROJECTNAME).out'
	@$(POSIX_TOOL_PATH)echo $(OBJS) > $(OUTPUT_DIR)/objs
	@$(POSIX_TOOL_PATH)echo $(PROJ_OBJECTS) > $(OUTPUT_DIR)/proj_objs
	$(ECHO)$(LD) @$(OUTPUT_DIR)/objs @$(OUTPUT_DIR)/proj_objs $(LIBS) $(LD_FLAGS) -o $(OUTPUT_DIR)/$(PROJECTNAME).out

$(OBJ_DIR)/%.o: $(SRC)/%.s
	@$(POSIX_TOOL_PATH)echo 'Building $<'
	$(ECHO)$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c "$<" -o "$@"

$(OBJ_DIR)/%.o: $(SRC)/%.S
	@$(POSIX_TOOL_PATH)echo 'Building $<'
	$(ECHO)$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c "$<" -o "$@"

$(OBJ_DIR)/%.o: $(SRC)/%.c
	@$(POSIX_TOOL_PATH)echo 'Building $<'
	$(ECHO)$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c "$<" -o "$@"

$(OBJ_DIR)/%.o: $(SRC)/%.cpp
	@$(POSIX_TOOL_PATH)echo 'Building $<'
	$(ECHO)$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CXXFLAGS) -c "$<" -o "$@"

$(OBJ_DIR)/%.o: $(SRC)/%.cc
	@$(POSIX_TOOL_PATH)echo 'Building $<'
	$(ECHO)$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CXXFLAGS) -c "$<" -o "$@"

-include $(DEPS)