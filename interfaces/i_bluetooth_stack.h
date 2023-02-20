#pragma once

#include <stdint.h>
#include "sl_status.h"
#include "tools/types.h"

class IBluetoothStack {
public:
    enum class Result {
        Success,
        ErrorBuffer,
        ErrorTransaction,
        ErrorFatal,
    };
#pragma pack(push, 1)
    enum class AddressType : uint8_t {
        PublicAddress = 0x0,             /* Public device address */
        StaticAddress = 0x1,             /* Static device address */
        RandomResolvableAddress = 0x2,   /* Resolvable private random address */
        RandomNonresolvableAddress = 0x3 /* Non-resolvable private random address */
    };

    enum class Phy : uint8_t {
        Phy1m = 0x1,    /* 1M PHY */
        Phy2m = 0x2,    /* 2M PHY */
        PhyCoded = 0x4, /* Coded PHY, 125k (S=8) or 500k (S=2) */
        PhyAny = 0xff   /* Any PHYs the device supports */
    };

    typedef struct {
        uint8_t value[6]; /**< @brief Bluetooth address in reverse byte order */
    } address_t;

    typedef struct {
        uint8_t connectionHandle;
        address_t remoteAddress;
        uint8_t bondingHandle;
        uint16_t maxPacketSize;
    } connectionInfo_t;
#pragma pack(pop)

    /**
     * @brief Запустить сканирование эфира
     * @return Результат выполнения операции
     */
    virtual uint32_t ScanerStart() = 0;
    /**
     * @brief Остановить сканирование эфира
     * @return Результат выполнения операции
     */
    virtual uint32_t ScanerStop() = 0;
    /**
     * @brief Стартануть рекламу
     * @return Результат выполнения операции
     */
    virtual uint32_t AdvertisementsStart() = 0;
    /**
     * @brief Остановить рекламу
     * @return Результат выполнения операции
     */
    virtual uint32_t AdvertisementsStop() = 0;
    /**
     * @brief Получить количество активх соединений
     * @return Количество активх соединений
     */
    virtual uint8_t ConnectionsActiveCountGet() const = 0;
    /**
     * @brief Получить максимальное число соединений, которое может быть открыто
     * @return Mаксимальное число соединений, которое может быть открыто
     */
    virtual uint8_t ConnectionsMaxCountGet() const = 0;
    /**
     * @brief Получить информацию об установленном соединении по его индексу
     * @param index Индекс соединения
     * @param info Ссылка на структуру
     * @return Результат выполнения операции
     */
    virtual uint32_t ConnectionInfoGet(uint8_t index, connectionInfo_t &info) = 0;
    /**
     * @brief Закрыть соединение
     * @param connectionHandle Connection Handle of the connection
     * @return Результат выполнения операции
     */
    virtual uint32_t ConnectionClose(uint8_t connectionHandle) = 0;
    /**
     * @brief Получить МAC адрес
     * @param address Ссылка на массив, в который будет скопирован адрес
     * @param type Ссылка на тип
     * @return Результат выполнения операции
     */
    virtual uint32_t IdentityAddressGet(uint8_t (&address)[6], uint8_t &type) = 0;
    /**
     * @brief Выполнить запрос RSSI установленного соединения
     * @param connectionHandle Connection Handle of the connection
     * @return Результат выполнения операции
     */
    virtual uint32_t ConnectionRssiRequest(uint8_t connectionHandle) = 0;
    /**
     * @brief Callback вызывается при получении ответа от хоста после проверки пароля
     * @param isConfirmed true - пароль подтвержден, иначе отклонен
     * @param connectionHandle Connection Handle of the connection
     */
    virtual void PasskeyConfirmCallback(bool isConfirmed, uint8_t connectionHandle) = 0;
};
