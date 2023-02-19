#pragma once

extern "C" {
    #include "app_assert.h"
    #include "os.h"
}
#include "os_functions.h"

namespace os {

#if OS_CFG_MUTEX_EN == DEF_ENABLED

class Mutex {
public:
    enum class Result : uint8_t {
        Success,
        Error
    };
    Mutex() {
        RTOS_ERR error;
        OSMutexCreate(&_mutex,
                      NULL,
                      &error);
        app_assert(error.Code == RTOS_ERR_NONE,
                   "[E: 0x%04x] Failed mutex create\n",
                   error.Code);
    }

    /**
     * @brief Взять мютекс
     * @param timeout Время, в течении которого будет выполнена блокировка задачи,
     * пока мютекс не будет освобожден
     * @return Результат выполнения операции
     */
    Result Pend(ms_t timeout = ms_t(0)) {
        RTOS_ERR error;
        OSMutexPend(&_mutex,
                    MsToTicks(timeout),
                    OS_OPT_PEND_BLOCKING,
                    DEF_NULL,
                    &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

    /**
     * @brief Отпустить мютекс
     * @return Результат выполнения операции
     */
    Result Post() {
        RTOS_ERR error;
        OSMutexPost(&_mutex,
                    OS_OPT_POST_1,
                    &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

private:
    OS_MUTEX _mutex;
};

#endif

}
