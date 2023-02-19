#include "builders/bt_settings_builder.h"
#include "application/bluetooth/bluetooth_stack.h"

bluetooth::Settings& SettingsBuilder::Make() {
	static bluetooth::Settings* pointerSettings = nullptr;
	if(pointerSettings == nullptr) {
		static bluetooth::Settings settings(bluetooth::Stack::Instance());
		pointerSettings = &settings;
	}
	return *pointerSettings;
}
