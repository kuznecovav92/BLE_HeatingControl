#pragma once

namespace bluetooth {

#define BLE_MAX_MTU_SIZE 247

enum class Role {
	Unknow,
	Peripherial,	/* Сервер */
	Central,		/* Клиент */
	Ota,			/* Режим OTA */
};

}
