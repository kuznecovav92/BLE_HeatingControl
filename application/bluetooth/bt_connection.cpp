#include <string.h>
#include "bt_connection.h"
#include "tools/logs/logs.h"

namespace bluetooth {

BtConnection::typeConnectionClose BtConnection::_connectionClose = nullptr;

void BtConnection::RemoteAddressGet(uint8_t (&address)[6]) const {
	memcpy(address, _remoteAddress.addr, sizeof(_remoteAddress.addr));
}

void BtConnection::RemoteAddressSet(bd_addr const* const address) {
	memcpy(_remoteAddress.addr, address->addr, sizeof(address->addr));
}

void BtConnection::RemoteAddressPrint() const {
	LogCR(LogTypes::BluetoothConnection, "Remote address:  [%X %X %X %X %X %X]",
			_remoteAddress.addr[5],
			_remoteAddress.addr[4],
			_remoteAddress.addr[3],
			_remoteAddress.addr[2],
			_remoteAddress.addr[1],
			_remoteAddress.addr[0]);
}

void BtConnection::InfoPrint() const {
//	LogCR(LogTypes::BluetoothConnection, "**** Connection Info ****\");
//	LogCR(LogTypes::BluetoothConnection, "Connection handle 0x%x", _connectionHandle);
//	LogCR(LogTypes::BluetoothConnection, "Bonding handle = 0x%x", _bondingHandle);
//	RemoteAddressPrint();
//	LogCR(LogTypes::BluetoothConnection, "*************************");
}

BtConnection::Result BtConnection::InfoUpdate(sl_bt_evt_connection_opened_t const& conn_evt) {
	if(IsUse() == true) return Result::ErrorConnectionIsBusy;
	_isUse = true;
	_connectionHandle = conn_evt.connection;
	_bondingHandle = conn_evt.bonding;
	(void) memcpy(_remoteAddress.addr, conn_evt.address.addr, sizeof(_remoteAddress.addr));
	InfoPrint();
	return Result::Success;
}

BtConnection::Result BtConnection::ConnectionCheck(uint8_t connectionHandle) const {
	if(IsUse() == false || connectionHandle != _connectionHandle) {
//		LogCR(LogTypes::BluetoothConnection, APP_LOG_BACKGROUND_COLOR_RED"Unknown connection !!!");
		return Result::ErrorUnknownConnection;
	} else return Result::Success;
}

}
