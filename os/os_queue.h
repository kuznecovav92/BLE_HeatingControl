#pragma once

#include <stdint.h>
#include "os_functions.h"
extern "C" {
    #include "app_assert.h"
    #include "os.h"
}

namespace os {

#if OS_CFG_Q_EN == DEF_ENABLED

class Queue {
public:
    enum class Result  : uint8_t {
        Success,
        Error
    };
    Queue(uint8_t size) {
        RTOS_ERR error;
        OS_OBJ_QTY qty;
        OSQCreate(&_queue,
        		  NULL,
                  size,
                  &error);
        app_assert(error.Code == RTOS_ERR_NONE,
                   "[E: 0x%04x] Failed queue create\n",
                   error.Code);
    }

    /**
     * @brief Поместить сообщенеи в очередь 
     * @param message Указатель на сообщение
     * @return Результат выполнения операции
     */
    Result Post(void* message) {
        RTOS_ERR error;
        OSQPost(&_queue,                     /*   Pointer to user-allocated message queue.       */
                (void *)message,             /*   The message is a pointer to the APP_MESSAGE.   */
                (OS_MSG_SIZE)sizeof(void *), /*   Size of the message is the size of a pointer.  */
                OS_OPT_POST_FIFO,            /*   Add message at the end of the queue.           */
                &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

    /**
     * @brief Взять сообщение из очереди. При этом вызывающая задача будет заблокирована
     * @param timeout Таймаут, на котоорый будет заблокирована задача
     * @param message Указатель на возвращаемое сообщение
     * @param size Размер сообщения
     * @return Результат выполнения операции
     */
    Result Pend(ms_t timeout, void *message, uint16_t *size) {
        RTOS_ERR error;
        message = OSQPend(&_queue,
                          MsToTicks(timeout),
                          OS_OPT_PEND_BLOCKING,
                          size,
                          DEF_NULL,
                          &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

private:
    OS_Q _queue;
    Queue() = delete;
};

#endif

}
