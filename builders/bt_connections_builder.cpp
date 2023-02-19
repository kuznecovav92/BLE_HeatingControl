#include "bt_connections_builder.h"
#include "application/bluetooth/bluetooth_stack.h"

BtConnections_t &BtConnectionsBuilder::Make() {
    static BtConnections_t *btConnectionsPointer = nullptr;
    if (btConnectionsPointer == nullptr) {
        BtConnections_t::Init(bluetooth::Stack::StaticConnectionClose);
        static BtConnections_t btConnections;
        btConnectionsPointer = &btConnections;
    }
    return *btConnectionsPointer;
}
