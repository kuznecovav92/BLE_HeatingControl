#pragma once

#include <stdint.h>
extern "C" {
	#include "sl_bt_api.h"
}
#include "interfaces/i_bluetooth_stack.h"
#include "interfaces/i_settings_changed_notification.h"
#include "application/bluetooth/bt_connections.h"
#include "sl_bluetooth_connection_config.h"
#include "builders/bt_connections_builder.h"
#include "os/os_critical_section.h"

namespace bluetooth {

class Stack : public IBluetoothStack, public ISettingsChangedNotification {
public:
	static Stack& Instance() {
		static Stack _instance;
		return _instance;
	}
	void Init(BtConnections_t &connections) {
		_connections = &connections;
	}
	/**
	 * @brief Обработать событие стека
	 * @param event
	 */
	void Handle(sl_bt_msg_t *event);
	/**
	 * @brief Закрыть соединение
	 * @param connectionHandle Connection Handle of the connection to be closed
	 * @return Результат выполнения операции
	 */
	static sl_status_t StaticConnectionClose(uint8_t connectionHandle);
	/**
	 * @brief Перейти в режим OTA
	 * @return Результат выполнения операции
	 */
	uint32_t OtaStart();
private:
	static constexpr uint8_t _kDeviceNameLength = 26;
	typedef struct
	{
		uint8_t flagsLen;					/**< Length of the Flags field. */
		uint8_t flagsType;					/**< Type of the Flags field. */
		uint8_t flags;						/**< Flags field. */
		uint8_t shortNameLen;				/**< Length of Shortened Local Name. */
		uint8_t shortNameType;				/**< Shortened Local Name. */
		uint8_t shortName[_kDeviceNameLength]; /**< Shortened Local Name. */
	} responseData_t;
	static responseData_t _responseData;
	uint8_t _advHandle;
	BtConnections_t *_connections;


	Stack() : _connections(nullptr) {
	}
	/**
	 * @brief Напечатать адрес
	 * @param address указатель на адрес
	 */
	static void AddressPrint(bd_addr const* const address);
	/**
	 * @brief Напечатать свой адрес
	 * @param address указатель на адрес
	 */
	static void OwnAddressPrint();
	uint32_t ScanerStart() override;
	uint32_t ScanerStop() override;
	static void UuidPrint(uint8array const *const uuid);
	uint32_t AdvertisementsStart() override;
	uint32_t AdvertisementsStop() override;
	/**
	 * @brief Оповещение об изменении настроек 
	 */
	void SettingsChangedNotify() override;
	/**
	 * @brief Получить максимальное количество данных, которое может быть отправлено в одном кадре
	 * @param connectionHandle Connection Handle of the connection
	 * @return Максимальное количество данных, которое может быть отправлено в одном кадре
	 */
	static uint16_t MaxPacketSizeGet(uint8_t connectionHandle);
	/**
	 * @brief Изменить логическое состояние(фазу работы) установленного соединения
	 * @param connection Ссылка на обект соединения
	 * @param newState Новое желаемое состояние
	 */
	uint8_t ConnectionsActiveCountGet() const override {
		os::CriticalSection criticalSection;
		if (_connections == nullptr)
			return 0;
		return _connections->ActiveCount();
	}
	uint8_t ConnectionsMaxCountGet() const override {
		os::CriticalSection criticalSection;
		if (_connections == nullptr)
			return 0;
		return _connections->MaxConnectionsGet();
	}
	uint32_t ConnectionInfoGet(uint8_t index, IBluetoothStack::connectionInfo_t &info) override;
	uint32_t ConnectionClose(uint8_t connectionHandle) override {
		return StaticConnectionClose(connectionHandle);
	};
//	uint32_t AdvertisementsConfigure(uint16_t appAddress,
//									 const host::array_t &serialNumber,
//									 const host::array_t &manufactureName,
//									 const host::array_t &deviceName);
	uint32_t IdentityAddressGet(uint8_t (&address)[6], uint8_t &type) override;
	uint32_t ConnectionRssiRequest(uint8_t connectionHandle) override;
	void PasskeyConfirmCallback(bool isConfirmed, uint8_t connectionHandle) override;
};

}
