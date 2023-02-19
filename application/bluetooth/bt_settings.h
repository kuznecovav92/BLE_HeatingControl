#pragma once

#include "bt_definitions.h"
#include "interfaces/i_settings_changed_notification.h"

namespace bluetooth {

class Settings {
public:
	Settings(ISettingsChangedNotification &notify) : _notify(notify) {
		_role = Role::Unknow;
	}

	void RoleSet(Role role);
	Role RoleGet();
private:
	Role _role;
	ISettingsChangedNotification &_notify;
};

}
