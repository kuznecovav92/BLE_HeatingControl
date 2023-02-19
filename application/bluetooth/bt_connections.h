#pragma once

#include <stdint.h>
#include "sl_bt_api.h"
#include "bt_connection.h"

namespace bluetooth {

template<uint8_t maxConnectionsCount>
class BtConnections {
public:
	using typeConnectionClose = uint32_t (*)(uint8_t connectionHandle);

	enum class Result {
		Success,
		ErrorNotFound,
		ConnectionAlreadyOpen,
		ReachMaxActiveCountConnections,
		ErrorNullptr,
		ErrorFatal,
	};
	BtConnections() {}

	static void Init(typeConnectionClose connectionClose) {
		BtConnection::Init(connectionClose);
	}

	/*
	 * Добавить в список новое соединение
	 * @param[in] - sl_bt_evt_connection_opened_t указатель на структуру с информацией об открытом соединении
	 * @return - результат выполнение операции
	 * */
	Result Add(sl_bt_evt_connection_opened_t const &conn_evt) {
		BtConnection* connection = nullptr;
		connection = Find(conn_evt.connection);
		if(connection != nullptr) {
			/* Обновить информацию */
			connection->Reset();
			connection->InfoUpdate(conn_evt);
			return Result::ConnectionAlreadyOpen;
		} else {
			connection = UnusedGet();
			if(connection == nullptr) {
				LogCR(LogTypes::BluetoothConnection,
					APP_LOG_BACKGROUND_COLOR_RED "Reached maximum(%d) active BLE connections",
					maxConnectionsCount);
				return Result::ReachMaxActiveCountConnections;
			}
			connection->Reset();
			connection->InfoUpdate(conn_evt);
			return Result::Success;
		}
	}
	/*
	 * Найти в списке соединение с указанным дескриптором
	 * @param[in] connectionHandle - дескриптор соединения
	 * */
	BtConnection* Find(uint8_t connectionHandle) {
		for(auto &connection: _connections) {
			if(connection.ConnectionCheck(connectionHandle) == BtConnection::Result::Success) {
				return &connection;
			}
		}
		return nullptr;
	}
	/*
	 * Получить количество активных соединений
	 * @return - количество активных соединений
	 * */
	uint8_t ActiveCount() const {
		uint8_t count = 0;
		for(auto &connection: _connections) {
			count += (connection.IsUse() == true)? 1 : 0;
		}
		return count;
	}
	/*
	 * Проверить достигнут ли предел одновременно открытых соединений
	 * @return - true если количество одновременно открытых соединений достигло
	 * 		максимума, иначе false
	 * */
	bool ActiveCountIsMax() const {
		return ActiveCount() == maxConnectionsCount;
	}
	/*
	 * Получить указатель на объект BtConnection
	 * @return - указатель на объект BtConnection, если он проинициализирован. Иначе nullptr
	 * */
	BtConnection* Get(uint8_t index) {
		if (index >= maxConnectionsCount || _connections[index].IsUse() == false)
			return nullptr;
		return &_connections[index];
	}
	/*
	 * Получить максимальное количество соединений, которые возможно открыть одновременно
	 * @return - максимальное количество соединений, которые возможно открыть одновременно
	 * */
	uint8_t MaxConnectionsGet() const {
		return maxConnectionsCount;
	}
private:
	BtConnection _connections[maxConnectionsCount];

	/*
	 * Найти неиспользуемую запись
	 * @return - указатель на BtConnection, если есть неиспользуемая запись,
	 * 			nullptr если свободных записей нет
	 * */
	BtConnection* UnusedGet() {
		for(auto &connection: _connections) {
			if(connection.IsUse() == false) return &connection;
		}
		return nullptr;
	}
};

}
