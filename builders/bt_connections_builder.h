#pragma once

#include "application/bluetooth/bt_connections.h"
#include "sl_bluetooth_connection_config.h"

using BtConnections_t = bluetooth::BtConnections<SL_BT_CONFIG_MAX_CONNECTIONS>;

class BtConnectionsBuilder {
public:
    static BtConnections_t &Make();
};
