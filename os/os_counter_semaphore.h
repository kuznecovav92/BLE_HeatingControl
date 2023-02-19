#pragma once

#include <stdint.h>
extern "C" {
    #include "app_assert.h"
    #include "os.h"
}
#include "os_functions.h"

namespace os {

#if OS_CFG_SEM_EN == DEF_ENABLED

class CounterSemaphore {
public:
    enum class Result : uint8_t {
        Success,
        Error
    };
    CounterSemaphore(uint32_t count) {
        RTOS_ERR error;
        OSSemCreate(&_semaphore,
                    NULL,
                    count,
                    &error);
        app_assert(error.Code == RTOS_ERR_NONE,
                   "[E: 0x%04x] Failed semaphore create\n",
				   error.Code);
    }

    CounterSemaphore() : CounterSemaphore(0) {}

    /**
     * @brief Взять семафор
     * @param timeout Время, в течении которого будет выполнена блокировка задачи, 
     * пока семафор не будет освобожден
     * @return Результат выполнения операции
     */
    Result Pend(ms_t timeout = ms_t(0)) {
        RTOS_ERR error;
        /* Странная особенность в операционке. Если семафор уже какая-то задача ожидает,
           то счетчик инкрементироваться не будет. Поэтому нет смысла проверять что вернула OSSemPend */
        OSSemPend(&_semaphore,
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
     * @brief Отпустить семафор
     * @return Результат выполнения операции
     */
    Result Post() {
        RTOS_ERR error;
        OSSemPost(&_semaphore,
                  OS_OPT_POST_1,
                  &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

private:
    OS_SEM _semaphore;
};

#endif

}
