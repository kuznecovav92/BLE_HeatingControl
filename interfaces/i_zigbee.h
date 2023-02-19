#pragma once

#include <stdint.h>
extern "C" {
    #include "ember-types.h"
}
#include "tools/memory/buffer_types.h"
#include "interfaces/i_zigbee_stack.h"

class IZigBee {
public:
    /**
     * @brief CallBack вызывается когда изменяется состояние сети ZigBee
     * @param status Текуший статус
     * @param networkInfo Информация о состоянии сети
     */
    virtual void NetworkStateChangedCallback(uint8_t status,
                                             const IZigBeeStack::network_info_t &networkInfo) = 0;
    /**
     * @brief CallBack вызывается, когда принят пакет данных от удаленного узла
     * @param address ZigBee адрес узла, от которого принят кадр
     * @param buffer Умный указатель на буффер с данными
     */
    virtual void InputTransactionCompletedCallback(uint16_t address,
                                                   tools::typeUniqueBuffer buffer) = 0;
    /**
     * @brief CallBack вызывается при завершении исходящей транзакции
     * @param address ZigBee адрес узла, от которого принят кадр
     * @param status true - транзакция успешно завершена, иначе false
     */
    virtual void OutputTransactionCompletedCallback(uint16_t address,
                                                    uint8_t status) = 0;
    /**
     * @brief Вызывается стеком после окончания процесса разрушения сети 
     */
    virtual void NetworkCrushedCallback() = 0;
    /**
     * @brief Вызывается стеком при обнаруженни конфликтов PAN ID 
     * @param conflictCount Количество конфликтов, обнаруженных за 1 минуту
     */
    virtual void PanIdConflictCallback(int8_t conflictCount) = 0;
    /**
     * @brief Вызывается стеком, когда удаленный узел присылает свой прикланой адрес
     * @param zigbeeAddress ZigBee адресс удаленного узла
     * @param appAddress Прикланой адрес удаленного узла
     */
    virtual void AssocAddressIndication(uint16_t zigbeeAddress, uint16_t appAddress) = 0;
    /**
     * @brief Вызывается стеком когд удаленный узел присыалет информацию для дерева
     * @param zigbeeAddress ZigBee адрес удаленного узла
     * @param branchTreeData Ссылка на структуру с данными дерева
     */
    virtual void NodeTreeDataIndication(uint16_t zigbeeAddress, const IZigBeeStack::NodeTreeData_t &branchTreeData) = 0;
};
