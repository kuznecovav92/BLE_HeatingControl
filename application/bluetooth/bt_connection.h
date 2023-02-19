#pragma once

#include <stdint.h>
#include <stdbool.h>
extern "C" {
	#include "sl_bt_api.h"
}
#include "os/os_timer.h"
#include "os/os_mutex.h"
#include "tools/function.h"
#include "tools/memory/buffer_types.h"
#include "tools/types.h"

namespace bluetooth {

class BtConnection {
public:
	using typeConnectionClose = uint32_t (*)(uint8_t connectionHandle);

	enum class Result {
		Success,
		ErrorConnectionIsBusy,
		ErrorUnknownConnection,
		ErrorTransaction,
		ErrorTryLockMutex,
		ErrorFatal
	};

	BtConnection() {
		Reset();
	}

	static void Init(typeConnectionClose connectionClose) {
		_connectionClose = connectionClose;
	}

	bool IsUse() const {
		return _isUse;
	}

	uint8_t ConnectionHandleGet() const {
		return _connectionHandle;
	}

	void RemoteAddressGet(uint8_t (&address)[6]) const;

	void RemoteAddressSet(bd_addr const* const address);

	uint8_t BondingHandleGet() const {
		return _bondingHandle;
	}

	void Reset() {
		_isUse = false;
		_connectionHandle = 0;
		_bondingHandle = 0;
	}

	/**
	 * @brief Вывести в лог адрес удаленого узла, с которым установлено соединение
	 */
	void RemoteAddressPrint() const;

	/**
	 * @brief Вывести в лог всю информацию по установленному соединению
	 */
	void InfoPrint() const;

	/**
	 * @brief Сохранить информацию по установленному соединению
	 * @param conn_evt структура с данными
	 * @return Результат выполнения оперцаии
	 */
	Result InfoUpdate(sl_bt_evt_connection_opened_t const& conn_evt);

	/**
	 * @brief Проверить валидность соединения.
	 * @param connection Дескриптор соединения
	 * @return Success - Проверяемый дескриптор соединения соотвествует текущему установленному,
	 * иначе ErrorUnknownConnection
	 */
	Result ConnectionCheck(uint8_t connection) const;

	/**
	 * @brief Закрыть соединение
	 */
	void Close() {
		Reset();
	}

private:
	bool _isUse;
	uint8_t _connectionHandle;
	bd_addr _remoteAddress;
	uint8_t _bondingHandle;
	uint16_t _maxPacketSize;
	static typeConnectionClose _connectionClose;
};

}
