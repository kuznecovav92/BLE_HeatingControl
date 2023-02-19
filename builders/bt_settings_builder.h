#pragma once

#include "application/bluetooth/bt_settings.h"

class SettingsBuilder {
public:
	static bluetooth::Settings& Make();
};
