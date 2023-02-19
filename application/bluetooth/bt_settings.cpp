#include "bt_settings.h"
#include "os/os_critical_section.h"

namespace bluetooth {

void Settings::RoleSet(Role role) {
	{
		os::CriticalSection criticalSection;
		_role = role;
	}
	_notify.SettingsChangedNotify();
}

Role Settings::RoleGet() {
	os::CriticalSection criticalSection;
	return _role;
}

}
