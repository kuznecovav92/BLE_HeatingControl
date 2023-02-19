#pragma once

#include <stdint.h>
#include "tools/memory/buffer_types.h"

class IBluetooth {
public:
#pragma pack(push, 1)
    typedef struct {
        uint8_t len;    /**< Number of bytes stored in @p data */
        uint8_t data[]; /**< Data bytes*/
    } uint8array;
#pragma pack(pop)

    /**
     * @brief CallBack вызывается когда стартует стек Bluetooth
     */
    virtual void StackStartedCallback() = 0;
    
    /**
     * @brief CallBack вызывается при открытии нового соединения. После этого можно передавать данные
     * @param connectionHandle Connection Handle
     * @param address Адрес удаленного узла
     * @param bondingHandle Дескриптор привязки
     * @param maxPacketSize Максимальный размер пакета
     * @param protocolId Протокол, который ходит по данному каналу
     * @param remainTime Время простоя канала, оставшееся до закрытия соединения
     */
    virtual void OpenedNewConnectionCallback(uint8_t connectionHandle,
                                             uint8_t (&address)[6],
                                             uint8_t bondingHandle,
                                             uint16_t maxPacketSize,
                                             uint8_t protocolId,
                                             uint32_t remainTime) = 0;

    /**
     * @brief CallBack вызывается после вызова TriggerRssiMeasurement, который запускает измерение RSSI
     * @param connectionHandle Connection Handle
     * @param status SL_STATUS_OK if successful. Error code otherwise.
     * @param rssi The median of the last seven measured RSSI values on
     * the connection. Units: dBm. Range: -127 to +20.
     * Ignore this parameter if the command fails.
     */
    virtual void ConnectionRssiCommandCompletedCallback(uint8_t connectionHandle,
                                                        uint8_t status,
                                                        int8_t rssi) = 0;

    /**
     * @brief CallBack вызывается, когда принят отчет от сканера
     * @param address Адрес удаленного узла
     * @param rssi The median of the last seven measured RSSI values on
     * @param data Scan response data
     */
    virtual void ScanerReportCallback(const uint8_t (&address)[6],
                                      const int8_t rssi,
                                      const uint8array &data) = 0;

    /**
     * @brief CallBac вызывается, после закрытия соединения
     * @param connectionHandle Connection Handle
     * @param activeCount Количество активных соединений 
     * @param reason Reason of connection close
     */
    virtual void ConnectionClosedCallback(uint8_t connectionHandle,
                                          uint16_t reason,
                                          uint8_t activeCount) = 0;

    /**
     * @brief Получить пароль для установления соединения.
     * Функция не должна быть блокирующей, ожидающей и т.д.
     * @param connectionHandle Connection Handle
     * @param address Адрес удаленного узла
     */
    virtual void PasskeyRequest(uint8_t connectionHandle, uint8_t (&address)[6]) = 0;

    /**
     * @brief Отчет о проверке пароля
     * @param connectionHandle Connection Handle
     * @param result Результат : true - пароль подтвержден успешно, false - пароль отклонен
     */
    virtual void PasskeyConfirmResultCallback(uint8_t connectionHandle, bool result) = 0;

    /**
     * @brief CallBack вызывается, когда принят пакет данных от удаленного узла. Обрати внимание,
     * что нужно самому выполнять соотвествующие телодвижения, если в теле обработчика будет
     * осуществляться взаимодейтсвие с дургими задачами. Этот вызов выполнятся из задачи event_handler_thread
     * @param connectionHandle Connection Handle
     * @param buffer Умный указатель на буффер с данными
     */
    virtual void InputTransactionCompletedCallback(uint8_t connectionHandle,
                                                   tools::typeUniqueBuffer buffer) = 0;

    /**
     * @brief CallBack вызывается при завершении исходящей транзакции, когда используется
     * передача с подтверждением
     * @param connectionHandle Connection Handle
     * @param status true - транзакция успешно завершена, иначе false
     */
    virtual void OutputTransactionCompletedCallback(uint8_t connectionHandle,
                                                    bool status) = 0;

    /**
     * @brief Запрос проверки пароля
     * @param connectionHandle Connection Handle
     * @param protocolId Протокол, который ходит по данному каналу
     * @param passkey Пароль, который требуется проверить
     */
    virtual void PasskeyConfirmRequest(uint8_t connectionHandle,
                                       uint8_t protocolId,
                                       uint32_t passkey) = 0;
};
