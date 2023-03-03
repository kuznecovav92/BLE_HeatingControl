#include <stdio.h>
extern "C" {
	#include "app_assert.h"
	#include "sl_bluetooth.h"
	#include "gatt_db.h"
}
#include "bluetooth_stack.h"
#include "tools/logs/logs.h"
#include "tools/types.h"
#include "common/version.h"
#include "builders/bt_settings_builder.h"

namespace bluetooth {
#define _kDeviceName "MB-03"
Stack::responseData_t Stack::_responseData = {
    .flagsLen = 2,
    .flagsType = 0x01,
    .flags = 0x04 | 0x02, /* Flags: LE General Discoverable Mode, BR/EDR is disabled. */
    .shortNameLen = sizeof(_kDeviceName),
    .shortNameType = 0x08,
    _kDeviceName
};

void Stack::AddressPrint(bd_addr const* const address) {
#ifndef LogEnabled
    (void)address;
#endif
    LogCR(LogTypes::BluetoothStack,
          APP_LOG_COLOR_WHITE"Bluetooth address: [%02X:%02X:%02X:%02X:%02X:%02X]",
          address->addr[5],
          address->addr[4],
          address->addr[3],
          address->addr[2],
          address->addr[1],
          address->addr[0]);
}

void Stack::OwnAddressPrint() {
#ifdef LogEnabled
    // Extract unique ID from BT Address.
    uint8_t address_type;
    bd_addr address;
    sl_bt_system_get_identity_address(&address, &address_type);

    LogCR(LogTypes::BluetoothStack,
          APP_LOG_COLOR_WHITE"Bluetooth %s address",
          address_type ? "static random" : "public device");
    AddressPrint(&address);
#endif
}

uint32_t Stack::ScanerStart() {
    sl_status_t status;
    uint16_t max_mtu_out;
    sl_bt_gatt_set_max_mtu(BLE_MAX_MTU_SIZE, &max_mtu_out);
    // Print bluetooth address.
    OwnAddressPrint();
    status = sl_bt_scanner_set_parameters(sl_bt_scanner_scan_mode_active,
                                          100,
                                          16);
    if (status != SL_STATUS_OK) {
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_RED "sl_bt_scanner_set_parameters status = 0x%.8X", status);
        return status;
    }
    // Start scanning
    status = sl_bt_scanner_start(gap_1m_phy | gap_coded_phy,
                                 scanner_discover_generic);
    if (status != SL_STATUS_OK) {
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_RED "sl_bt_scanner_start status = 0x%.8X", status);
        return status;
    }
    return status;
}

uint32_t Stack::ScanerStop() {
    return sl_bt_scanner_stop();
}

void Stack::UuidPrint(uint8array const *const uuid) {
#ifdef LogEnabled
    Log(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" uuid -");
    for (uint8_t i = 0; i < uuid->len; i++) {
        Log(LogTypes::BluetoothStack, " %.2X", uuid->data[i]);
    }
    LogCR(LogTypes::BluetoothStack, "");
#endif
}

uint32_t Stack::AdvertisementsStart() {
    sl_status_t status = sl_bt_advertiser_configure(_advHandle, 0);
    if (status != SL_STATUS_OK) {
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"sl_bt_advertiser_configure Error code: %d",
              status);
        return status;
    }
    status = sl_bt_advertiser_set_timing(_advHandle,
                                         (1000 / 0.625), // 1000 ms min adv interval in terms of 0.625ms
                                         (3000 / 0.625), // 3000 ms max adv interval in terms of 0.625ms
                                         0,              // duration : continue advertisement until stopped
                                         0);             // max_events :continue advertisement until stopped
    if (status != SL_STATUS_OK) {
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"sl_bt_advertiser_set_timing Errorcode: %d",
              status);
        return status;
    }

    /* Set the advertising data and scan response data*/
    status = sl_bt_legacy_advertiser_set_data(_advHandle,
                                              sl_bt_advertiser_advertising_data_packet,
                                              sizeof(_responseData),
                                              (uint8_t *)&_responseData);
    if (status != SL_STATUS_OK) {
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"Unable to set adv data sl_bt_legacy_advertiser_set_data. Errorcode: %d",
              status);
        return status;
    }
    #warning Решить вопрос
    // status = sl_bt_extended_advertiser_set_phy(_advHandle,
    //                                            sl_bt_gap_phy_1m,
    //                                            sl_bt_gap_phy_1m);
    // if (status != SL_STATUS_OK) {
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"sl_bt_extended_advertiser_set_phy Errorcode: %d",
    //           status);
    //     return status;
    // }
    status = sl_bt_advertiser_set_channel_map(_advHandle, 7);
    if (status != SL_STATUS_OK) {
        return status;
    }

    /* Start advertising in user mode and enable connections*/
    status = sl_bt_legacy_advertiser_start(_advHandle,
                                           advertiser_connectable_scannable);
    LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"BLE custom advertisements enabled");
    return status;
}

uint32_t Stack::AdvertisementsStop() {
    return sl_bt_advertiser_stop(_advHandle);
}

void Stack::Handle(sl_bt_msg_t *event) {
    static sl_status_t status;
    LogCR(LogTypes::BluetoothStack,
          APP_LOG_BACKGROUND_COLOR_YELLOW"sl_bt_on_event id = 0x%.8X",
          SL_BT_MSG_ID(event->header));
    switch (SL_BT_MSG_ID(event->header)) {
        // -------------------------------
        // This event indicates the device has started and the radio is ready.
        // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id: {
        /* Проинициализировать характеристики */
        char temp[25];
        snprintf(temp, sizeof(temp), "v%d.%d.%d",
                 VERSION_FIRMWARE_MAJOR,
                 VERSION_FIRMWARE_MINOR,
                 VERSION_FIRMWARE_PATCH);
        sl_bt_gatt_server_write_attribute_value(gattdb_firmware_revision_string,
                                                0,
                                                strlen(temp),
                                                (uint8_t *)temp);
        sl_bt_connection_set_default_preferred_phy(0xff, 0xff);
        /*
         * To enable AFH see
         * https://community.silabs.com/s/question/0D51M00007xeSRJSA2/enabling-afh-on-bg22?language=ru
         * */
        /* Set max and min transmit power to 20 dBm */
        int16_t tx_power_min_val = 0xFF;
        int16_t tx_power_max_val = 0xFF;
        status = sl_bt_system_set_tx_power(RADIO_TX_POWER * 10,
                                           RADIO_TX_POWER * 10,
                                           &tx_power_min_val,
                                           &tx_power_max_val);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"tx_power_min_val = %d, tx_power_max_val = %d",
              tx_power_min_val,
              tx_power_max_val);
        if (status != SL_STATUS_OK) {
            LogCR(LogTypes::BluetoothStack,
                  APP_LOG_BACKGROUND_COLOR_RED "Unable to set Tx Power. Errorcode: 0x%x",
                  status);
        }

        bd_addr ble_address;
        uint8_t type;
        uint16_t max_mtu_out;
        sl_bt_gatt_set_max_mtu(BLE_MAX_MTU_SIZE, &max_mtu_out);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"\n max_mtu_out = %d", max_mtu_out);

        status = sl_bt_system_get_identity_address(&ble_address, &type);
        OwnAddressPrint();

        sl_bt_advertiser_create_set(&_advHandle);

        // описание след. функции https://www.silabs.com/community/wireless/bluetooth/knowledge-base.entry.html/2018/11/07/using_bluetooth_secu-VDcD
        sl_bt_sm_configure((1 << 0) | (1 << 1) | (1 << 2)/*|(1<<4)*/, sm_io_capability_displayonly);

        // Set the default connection parameters for subsequent connections
        sl_bt_connection_set_default_parameters(0x0006,
                                                0x0006,
                                                10,
                                                3000 / 10,
                                                0,
                                                0xffff);

        break;
    }
        // -------------------------------
        // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id: {
        sl_bt_evt_connection_opened_t *conn_evt = (sl_bt_evt_connection_opened_t *)&(event->data);
        if (_connections == nullptr ||
            _connections->Add(*conn_evt) == BtConnections_t::Result::ReachMaxActiveCountConnections) {
            ConnectionClose(conn_evt->connection);
        } else {
            BtConnection *connection = _connections->Find(conn_evt->connection);
            if (connection == nullptr) {
                ConnectionClose(conn_evt->connection);
                break;
            }
            LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"BLE connection opened");
            sl_bt_connection_set_preferred_phy(conn_evt->connection, sl_bt_gap_phy_2m, sl_bt_gap_phy_any);
            sl_bt_connection_set_parameters(conn_evt->connection,
                                            0x0006,
                                            0x0006,
                                            10,
                                            3000 / 10,
                                            0,
                                            0xffff);
            if (SettingsBuilder::Make().RoleGet() == bluetooth::Role::Peripherial) {
                if (_connections->ActiveCountIsMax() == false)
                    AdvertisementsStart();
            }
        }
        break;
    }
        // -------------------------------
        // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id: {
        sl_bt_evt_connection_closed_t *conn_evt = (sl_bt_evt_connection_closed_t *)&(event->data);
        if(_connections == nullptr)
            break;
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"BLE connection closed, handle=0x%x, reason=0x%1x : [%d] active BLE connection",
              conn_evt->connection,
              conn_evt->reason,
              _connections->ActiveCount());
        BtConnection *connection = _connections->Find(conn_evt->connection);
        if (connection == nullptr)
            break;
            
        connection->Close();
        if (SettingsBuilder::Make().RoleGet() == bluetooth::Role::Peripherial) {
            AdvertisementsStart();
        }
        break;
    }

    case sl_bt_evt_gatt_mtu_exchanged_id: {
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_MAGENTA"MTU = %d\n",
              ((sl_bt_evt_gatt_mtu_exchanged_t *)&(event->data))->mtu);
        break;
    }

    case sl_bt_evt_connection_parameters_id: {
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"BLE connection parameters are updated :");
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  handle = 0x%.2x",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->connection);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  interval = %d",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->interval);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  latency = %d",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->latency);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  timeout = %d",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->timeout);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  security = 0x%x",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->security_mode);
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_COLOR_WHITE"  txsize = %d",
              ((sl_bt_evt_connection_parameters_t *)&(event->data))->txsize);
        if (((sl_bt_evt_connection_parameters_t *)&(event->data))->latency != 10)
            sl_bt_connection_set_parameters(((sl_bt_evt_connection_parameters_t *)&(event->data))->connection,
                                            0x0006,
                                            0x0006,
                                            10,
                                            3000 / 10,
                                            0,
                                            0xffff);
        break;
    }

    case sl_bt_evt_connection_tx_power_id: {
        sl_bt_evt_connection_tx_power_t* tx_power = (sl_bt_evt_connection_tx_power_t*)&(event->data);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"Tx power param :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  connection - 0x%.2X", tx_power->connection);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  phy - 0x%.2X", tx_power->phy);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  power_level - %d", tx_power->power_level);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  flags - 0x%.2X", tx_power->flags);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  delta - 0x%.2X", tx_power->flags);
        sl_bt_connection_set_power_reporting(tx_power->connection,
                                             sl_bt_connection_power_reporting_disable);
        break;
    }

    case sl_bt_evt_gatt_procedure_completed_id: {
        sl_bt_evt_gatt_procedure_completed_t* complete_evt = (sl_bt_evt_gatt_procedure_completed_t*)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(complete_evt->connection);
            break;
        }
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"Identifier of the procedure_completed event :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" connection - 0x%.2X", complete_evt->connection);
        LogCR(LogTypes::BluetoothStack,
              " result - 0x%.4X(%s)",
              complete_evt->result,
              (!complete_evt->result) ? "success" : "error");
        // if (complete_evt->result) {
        //     ConnectionClose(complete_evt->connection);
        //     break;
        // }
        // BtConnection *connection = _connections->Find(complete_evt->connection);
        // if (connection == nullptr) {
        //     ConnectionClose(complete_evt->connection);
        //     break;
        // }
        break;
    }

    case sl_bt_evt_gatt_service_id: {
        if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Central)
            break;
        sl_bt_evt_gatt_service_t *service_evt = (sl_bt_evt_gatt_service_t *)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(service_evt->connection);
            break;
        }
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE "sl_bt_evt_gatt_service_id event :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  connection - 0x%.2X", service_evt->connection);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  service - 0x%.8X", service_evt->service);
        UuidPrint(&service_evt->uuid);
        // BtConnection *connection = _connections->Find(service_evt->connection);
        // if (connection == nullptr) {
        //     ConnectionClose(service_evt->connection);
        //     break;
        // }
        break;
    }

    case sl_bt_evt_gatt_characteristic_id: {
        if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Central)
            break;
        sl_bt_evt_gatt_characteristic_t *char_evt = (sl_bt_evt_gatt_characteristic_t *)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(char_evt->connection);
            break;
        }
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE "sl_bt_evt_gatt_characteristic_id event :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  connection - 0x%.2X", char_evt->connection);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  characteristic - 0x%.4X", char_evt->characteristic);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"  properties - 0x%.8X", char_evt->properties);
        UuidPrint(&char_evt->uuid);
        // BtConnection *connection = _connections->Find(char_evt->connection);
        // if (connection == nullptr) {
        //     ConnectionClose(char_evt->connection);
        //     break;
        // }
        break;
    }

    case sl_bt_evt_gatt_server_characteristic_status_id: {
        if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
            break;
        sl_bt_evt_gatt_server_characteristic_status_t *status_evt = (sl_bt_evt_gatt_server_characteristic_status_t *)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(status_evt->connection);
            break;
        }
        BtConnection *connection = _connections->Find(status_evt->connection);
        if (connection == nullptr) {
            ConnectionClose(status_evt->connection);
            break;
        }
        // if (status_evt->status_flags == sl_bt_gatt_server_client_config) {
        //     LogCR(LogTypes::BluetoothStack,
        //           APP_LOG_COLOR_WHITE"characteristic= %d , GAT_SERVER_CLIENT_CONFIG_FLAG = %d",
        //           status_evt->characteristic,
        //           status_evt->client_config_flags);
        //     if (status_evt->characteristic == gattdb_spp_data) {
        //         if (status_evt->client_config_flags == sl_bt_gatt_notification) {
        //             if (connection->StateGet() != spp::State::WaitEnableNotification)
        //                 break;
        //             connection->CharacteristicHandleSet(gattdb_spp_data);
        //             StateSet(*connection, spp::State::DataExchange);
        //         }
        //     }
        // }
        break;
    }

    // case sl_bt_evt_sm_passkey_display_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"sl_bt_evt_sm_passkey_display_id %d",
    //           ((sl_bt_evt_sm_passkey_display_t *)&(event->data))->passkey);
    //     break;
    // }

    // case sl_bt_evt_sm_passkey_request_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_evt_sm_passkey_request_id");
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"sl_status_t = %d",
    //           sl_bt_sm_enter_passkey(((sl_bt_evt_sm_passkey_request_t *)&(event->data))->connection,
    //                                  123456));
    //     break;
    // }

    // case sl_bt_evt_sm_confirm_passkey_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"sl_bt_evt_sm_confirm_passkey_id %6d",
    //           ((sl_bt_evt_sm_confirm_passkey_t *)&(event->data))->passkey);
    //     //      sl_bt_sm_passkey_confirm()
    //     break;
    // }

    // case sl_bt_cmd_sm_enter_passkey_id:
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_cmd_sm_enter_passkey_id");
    //     break;

    // case sl_bt_cmd_sm_passkey_confirm_id:
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_cmd_sm_passkey_confirm_id");
    //     break;

    // case sl_bt_evt_sm_bonded_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_evt_sm_bonded_id");
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"connection = 0x%X, bonding = 0x%X",
    //           ((sl_bt_evt_sm_bonded_t *)&(event->data))->connection,
    //           ((sl_bt_evt_sm_bonded_t *)&(event->data))->bonding);
    //     break;
    // }

    // case sl_bt_evt_sm_bonding_failed_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_evt_sm_bonding_failed_id");
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE"connection = 0x%X, reason = 0x%.4X",
    //           ((sl_bt_evt_sm_bonding_failed_t *)&(event->data))->connection,
    //           ((sl_bt_evt_sm_bonding_failed_t *)&(event->data))->reason);
    //     break;
    // }

    // case sl_bt_evt_system_error_id: {
    //     if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
    //         break;
    //     LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE"sl_bt_evt_system_error_id");
    //     LogCR(LogTypes::BluetoothStack,
    //           APP_LOG_COLOR_WHITE" reason = 0x%.4X",
    //           ((sl_bt_evt_system_error_t *)&(event->data))->reason);
    //     break;
    // }

    case sl_bt_evt_gatt_characteristic_value_id: {
        sl_bt_evt_gatt_characteristic_value_t* char_evt = (sl_bt_evt_gatt_characteristic_value_t*)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(char_evt->connection);
            break;
        }
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE "sl_bt_evt_gatt_characteristic_value_id event :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" connection = 0x%.2X", char_evt->connection);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" characteristic = 0x%.4X", char_evt->characteristic);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" att_opcode = 0x%.2X", char_evt->att_opcode);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" offset = 0x%.4X", char_evt->offset);

        BtConnection *connection = _connections->Find(char_evt->connection);
        if (connection == nullptr) {
            ConnectionClose(char_evt->connection);
            break;
        }
        if (char_evt->att_opcode == sl_bt_gatt_handle_value_indication) {
            sl_bt_gatt_send_characteristic_confirmation(char_evt->connection);
        }
        // if (SettingsBuilder::Make().RoleGet() == bluetooth::Role::Central) {
        //     if (char_evt->characteristic == connection->CharacteristicHandleGet() &&
        //         connection->StateGet() == spp::State::DataExchange) {
        //         connection->IncommingPacketProcess((sl_bt_gatt_att_opcode_t)char_evt->att_opcode,
        //                                            MaxPacketSizeGet(char_evt->connection),
		// 										   Array{._count = char_evt->value.len, ._data = char_evt->value.data});
        //     }
        // }
        break;
    }

    case sl_bt_evt_gatt_server_attribute_value_id: {
        sl_bt_evt_gatt_server_attribute_value_t* attr_evt = (sl_bt_evt_gatt_server_attribute_value_t*)&(event->data);
        if (_connections == nullptr) {
            ConnectionClose(attr_evt->connection);
            break;
        }
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE "sl_bt_evt_gatt_server_attribute_value_id event :");
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" connection = 0x%.2X", attr_evt->connection);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" attribute = 0x%.4X", attr_evt->attribute);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" att_opcode = 0x%.2X", attr_evt->att_opcode);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" offset = 0x%.4X", attr_evt->offset);
        LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_WHITE" len = 0x%.4X", attr_evt->value.len);

        // BtConnection *connection = _connections->Find(attr_evt->connection);
        // if (connection == nullptr) {
        //     ConnectionClose(attr_evt->connection);
        //     break;
        // }
        break;
    }

#ifdef LogEnabled
    case sl_bt_evt_connection_phy_status_id: {
        sl_bt_evt_connection_phy_status_t *conn_evt =
            (sl_bt_evt_connection_phy_status_t *)&(event->data);
        // indicate the PHY that has been selected
        LogCR(LogTypes::BluetoothStack,
              APP_LOG_BACKGROUND_COLOR_BLUE "now using the %dMPHY\r\n",
              conn_evt->phy);
        break;
    }
#endif

//    case sl_bt_evt_sm_list_bonding_entry_id: {
//        sl_bt_evt_sm_list_bonding_entry_t *bonding_entry_evt = (sl_bt_evt_sm_list_bonding_entry_t *)&(event->data);
//        LogCR(LogTypes::BluetoothStack, "Bonding handle=0x%x, address type=0x%x, address: ",
//              bonding_entry_evt->bonding,
//              bonding_entry_evt->address_type);
//        AddressPrint(&bonding_entry_evt->address);
//        break;
//    }

    case sl_bt_evt_gatt_server_user_write_request_id: {
        if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
            break;
        sl_bt_evt_gatt_server_user_write_request_t *wrt_evt = &(event->data.evt_gatt_server_user_write_request);

        if (_connections == nullptr) {
            ConnectionClose(wrt_evt->connection);
            break;
        }
        BtConnection *connection = _connections->Find(wrt_evt->connection);
        if (connection == nullptr) {
            ConnectionClose(wrt_evt->connection);
            break;
        }
        // sl_bt_gatt_server_send_user_write_response(wrt_evt->connection, gattdb_passkey, 0);
        break;
    }

    case sl_bt_evt_connection_rssi_id: {
        // sl_bt_evt_connection_rssi_t* rssi_evt = (sl_bt_evt_connection_rssi_t*)&(event->data);
        // _bluetooth->ConnectionRssiCommandCompletedCallback(rssi_evt->connection,
        //                                                    rssi_evt->status,
        //                                                    rssi_evt->rssi);
        break;
    }

    default:
        break;
    }
}

sl_status_t Stack::StaticConnectionClose(uint8_t connectionHandle) {
    LogCR(LogTypes::BluetoothStack,
          APP_LOG_BACKGROUND_COLOR_CYAN"Close connection !!!");
    return sl_bt_connection_close(connectionHandle);
}

uint16_t Stack::MaxPacketSizeGet(uint8_t connectionHandle) {
    uint16_t mtu;
	/* Calculate maximum data per one notification / write-without-response, this depends on the MTU.
	 * up to ATT_MTU-3 bytes can be sent at once */
	sl_bt_gatt_server_get_mtu(connectionHandle,
							  &mtu);
	return mtu - 3;
}

void Stack::SettingsChangedNotify() {
    BtConnection* connection;
    if(_connections == nullptr)
        return;
    for (uint8_t i = 0; i < _connections->MaxConnectionsGet(); i++) {
        connection = _connections->Get(i);
        if (connection == nullptr) continue;
        ConnectionClose(connection->ConnectionHandleGet());
        {
            os::CriticalSection criticalSection;
            connection->Close();
        }
    }
    sl_bt_scanner_stop();
    sl_bt_advertiser_stop(_advHandle);

    if (SettingsBuilder::Make().RoleGet() == Role::Ota) {
        AdvertisementsStart();
    }
}

uint32_t Stack::ConnectionInfoGet(uint8_t index, IBluetoothStack::connectionInfo_t &info) {
    BtConnection* connection;
    {
        os::CriticalSection criticalSection;
        if (_connections == nullptr)
            return SL_STATUS_NULL_POINTER;
        connection = _connections->Get(index);
        if (connection == nullptr)
            return SL_STATUS_NULL_POINTER;
        info.connectionHandle = connection->ConnectionHandleGet();
        info.bondingHandle = connection->BondingHandleGet();
        connection->RemoteAddressGet(info.remoteAddress.value);
    }
    info.maxPacketSize = MaxPacketSizeGet(info.connectionHandle);
    return SL_STATUS_OK;
}

//uint32_t Stack::AdvertisementsConfigure(uint16_t appAddress,
//                                        const host::array_t &serialNumber,
//                                        const host::array_t &manufactureName,
//                                        const host::array_t &deviceName) {
//    sl_status_t status;
//    if ((deviceName.lenght + serialNumber.lenght + 1) > _kDeviceNameLength) {
//        return SL_STATUS_WOULD_OVERFLOW;
//    }
//    memcpy(_responseData.shortName, deviceName.array, deviceName.lenght);
//    _responseData.shortNameLen = deviceName.lenght;
//    _responseData.shortName[_responseData.shortNameLen] = '-';
//    _responseData.shortNameLen++;
//    memcpy(_responseData.shortName + _responseData.shortNameLen,
//           serialNumber.array,
//           serialNumber.lenght);
//    _responseData.shortNameLen += serialNumber.lenght;
//    memset(_responseData.shortName + _responseData.shortNameLen,
//           0,
//           sizeof(_responseData.shortName) - _responseData.shortNameLen);
//    _responseData.shortNameLen++;
//
//    // производитель
//    status = sl_bt_gatt_server_write_attribute_value(gattdb_manufacturer_name_string,
//                                                     0,
//                                                     manufactureName.lenght,
//                                                     manufactureName.array);
//    if (status != EMBER_SUCCESS)
//        return status;
//    // модель устройства
//    status = sl_bt_gatt_server_write_attribute_value(gattdb_model_number_string,
//                                                     0,
//                                                     deviceName.lenght,
//                                                     deviceName.array);
//    if (status != EMBER_SUCCESS)
//        return status;
//    // серийный номер изделия
//    status = sl_bt_gatt_server_write_attribute_value(gattdb_serial_number_string,
//                                                     0,
//                                                     serialNumber.lenght,
//                                                     serialNumber.array);
//    if (status != EMBER_SUCCESS)
//        return status;
//    // COSEM address
//    LogCR(LogTypes::BluetoothStack, "appAddress = %d", appAddress);
//    status = sl_bt_gatt_server_write_attribute_value(gattdb_app_address,
//                                                     0,
//                                                     sizeof(appAddress),
//                                                     (uint8_t *)&appAddress);
//    if (status != EMBER_SUCCESS) {
//    	LogCR(LogTypes::BluetoothStack, "status = %d", status);
//        return status;
//    }
//    // // ревизия(версия) прошивки модуля
//    // char temp[25];
//    // snprintf(temp, sizeof(temp), "v%d.%d.%d.%d",
//    //          REVISION_HARDWARE,
//    //          VERSION_APP_ZIGBEE,
//    //          VERSION_APP_BLUETOOTH,
//    //          VERSION_PATCH);
//    // status = sl_bt_gatt_server_write_attribute_value(gattdb_firmware_revision_string,
//    //                                                  0,
//    //                                                  strlen(temp),
//    //                                                  (uint8_t *)temp);
//    // if (status != EMBER_SUCCESS) {
//    //     LogCR(LogTypes::BluetoothStack,
//    //         "status = sl_bt_gatt_server_write_attribute_value(gattdb_firmware_revision_string, status = %d", status);
//    //     return status;
//    // }
//
//    // start advertising
//    return AdvertisementsStart();
//}

uint32_t Stack::IdentityAddressGet(uint8_t (&address)[6], uint8_t &type) {
    return sl_bt_system_get_identity_address((bd_addr*)address, &type);
}

uint32_t Stack::ConnectionRssiRequest(uint8_t connectionHandle) {
    BtConnection* connection = _connections->Find(connectionHandle);
    if (connection == nullptr)
        return SL_STATUS_FAIL;
    return sl_bt_connection_get_rssi(connectionHandle);
}

void Stack::PasskeyConfirmCallback(bool isConfirmed, uint8_t connectionHandle) {
    if (SettingsBuilder::Make().RoleGet() != bluetooth::Role::Peripherial)
        return;
    if (_connections == nullptr) {
        return;
    }
    BtConnection *connection = _connections->Find(connectionHandle);
    if (connection == nullptr) {
        return;
    }
    if (isConfirmed == false) {
        ConnectionClose(connectionHandle);
        return;
    }
}

uint32_t Stack::OtaStart()
{
    SettingsBuilder::Make().RoleSet(bluetooth::Role::Ota);
    return SL_STATUS_OK;
}
}

void sl_bt_on_event(sl_bt_msg_t* event) {
	bluetooth::Stack::Instance().Handle(event);
}
