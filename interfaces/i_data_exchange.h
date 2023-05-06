#pragma once
#include <stdint.h>
#include <stddef.h>
#include "tools/memory/buffer_types.h"
#include "tools/queue/queue_types.h"
#include "os/os_timer.h"

class IDataExchange {
public:
    enum class Result {
        Success,
        Error,
        Timeout,
        Empty,
        ErrorTransmit,
        ErrorPort,
        Busy,
    };
    virtual ~IDataExchange() {};

    /**
     * @brief Отправить данные
     * @param buffer Буффер, в котором находятся данные для отправки
     * @return Результат выполнения отперации
     */
    virtual Result WriteThreadSafety(tools::typeUniqueBuffer buffer) = 0;

    /**
     * @brief Установить скорость интерфейса
     * @param value Желаемое значение
     */
    virtual void BaudRateSet(size_t value) {};

    /**
     * \brief Проинициализировать нотификатор
     * \param notifyOfRxDataReady Ссылка на нотификатор
     */
    virtual void QueuePusherInit(tools::typeQueuePusher &queuePusher) {};
#ifdef OS_TIMER_ENABLED
    /**
     * @brief Выполнить установку скорости интерфейса с задержкой
     * @param value Желаемое значение скорости
     * @param timeout Задержка в мс
     */
    virtual void BaudRateSetPostpone(uint32_t value, ms_t timeout) {};
#endif
};
