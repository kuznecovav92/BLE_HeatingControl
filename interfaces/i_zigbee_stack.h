#pragma once

#include "tools/memory/buffer_types.h"

class IZigBeeStack {
public:
#pragma pack(push, 1)
    struct NodeTreeData_t {
        uint16_t nodeId;     // адрес
        uint32_t serialData; // последние 8 цифр серийного номера
        uint32_t mfcID;      // ID серийного номера счетчика (надежденский номер)
    };
    typedef struct {
        uint8_t securityLevel;                       // The security level used for security at the MAC and network layers
        uint8_t extendedPanId[EXTENDED_PAN_ID_SIZE]; // The network's extended PAN identifier
        uint16_t panId;                              // The network's PAN identifier
        int8_t radioTxPower;                         // A power setting, in dBm
        uint32_t channelMask;                        // Channel mask
        uint8_t radioChannel;                        // A radio channel. Be sure to specify a channel supported by the radio
        EmberNetworkStatus nwkStatus;
        EmberNodeType nodeType;
        EmberNodeId nodeId;
        EmberNodeId parentId;
        int8_t parentRssi;
        uint8_t capability;                          // Возможные варианты для nodeType
    } network_info_t;
#pragma pack(pop)
    /**
     * @brief Выполнить конфигурирование атрибутов
     * @param config Ссылка на структуру с конфигурацией
     * @return Результат выполнения операции
     */
    virtual uint8_t AttributeConfure(NodeTreeData_t &config) = 0;
    /**
     * @brief Получить текущую информацию о сети
     * @return Текущая информация о сети
     */
    virtual network_info_t NetworkInfoGet() = 0;
    /**
     * @brief Выполнить разрушение сети ZigBee
     * @return Результат выполнения оперции
     */
    virtual uint8_t NetworkCrush() = 0;
    /**
     * @brief Стартовать новую сеть
     * @param channelMask Маска разрешенных каналов
     * @param panId PAN ID желаемой сети
     * @param radioChannel Канал, на котором требуется создать сеть 
     * @param nodeType Тип узла, в качестве которого будет выполнено подклчюение в сеть
     * @param radioTxPower Мощность передатчика
     * @return Результат выполнения операции
     */
    virtual uint8_t NetworkStart(uint32_t channelMask,
                                 uint16_t panId,
                                 uint8_t radioChannel,
                                 uint8_t nodeType,
                                 int8_t radioTxPower) = 0;
    /**
     * @brief Покинуть текущую сеть
     * @return Результат выполнения оперции
     */
    virtual uint8_t NetworkLeave() = 0;
    /**
     * @brief Отравить свой прикладной адрес адрес координатору сети
     * @return Результат выполнения оперции
     */
    virtual uint8_t AppAddressReport() = 0;
    /**
     * @brief Отправить кадр удаленному узлу
     * @param address ZigBee адрес удаленного узла
     * @param buffer Ссылка на буфер с данными для отправки
     * @return Результат выполнения операции
     */
    virtual uint8_t Send(uint16_t address, tools::typeBuffer &buffer) = 0;
    /**
     * @brief Выполнить запрос прикладного адреса удаелнного узла
     * @param address ZigBee адрес удаленного узла
     * @return Результат выполнения операции
     */
    virtual uint8_t RemoteAppAddressRequest(uint16_t address) = 0;
    /**
     * @brief Выполнить запрос ZigBee адреса удаелнного узла
     * @param address ZigBee адрес удаленного узла
     * @return Результат выполнения операции
     */
    virtual uint8_t RemoteZigBeeAddressRequest(uint16_t address) = 0;
    /**
     * @brief Выполнить запрос данных дерева удаленнго узла
     * @param address Прикладной адрес удаленного узла
     * @return Результат выполнения операции
     */
    virtual uint8_t NodeTreeDataRequest(uint16_t address) = 0;
    /**
     * @brief Установить мозность передатчика стека ZigBee
     * @param power Желаемое значение мощности передатчика 
     * @return Результат выполнения операии
     */
    virtual uint8_t RadioTxPowerSet(int8_t power) = 0;
};
