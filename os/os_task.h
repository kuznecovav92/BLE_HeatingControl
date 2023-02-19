#pragma once

#include <stdint.h>
extern "C" {
    #include "app_assert.h"
    #include "os.h"
}
/*
 * https://docs.silabs.com/micrium/latest/micrium-kernel/04-kernel-programming-guide
 */

namespace os {
/**
 * @brief Класс, описывающий RTOS задачу
 * @tparam stackSize Размер стека задачи
 * @tparam priority Приоритет задачи
 */
template <size_t stackSize, uint8_t priority>
class Task {
public:
    Task() {
        RTOS_ERR error;
        OSTaskCreate(&_tcb,
                     NULL,
                     &TaskFunction,
                     this,
                     priority,
                     _stack,
                     (stackSize / 10u),
                     stackSize,
                     10u,
                     0u,
                     DEF_NULL,
                     OS_OPT_TASK_STK_CHK,
                     &error);
        app_assert(error.Code == RTOS_ERR_NONE,
                   "[E: 0x%04x] Failed task create\n",
                   error.Code);
    }

    /**
     * @brief Функция, которая является непосредственно телом задачи
     * @param p_arg Указатель на аргумент, который был передан при свызове OSTaskCreate
     */
    static void TaskFunction(void* p_arg) {
        Task* task = static_cast<Task*>(p_arg);
        task->InitTask();
        while (true) {
            task->InfinityTask();
        }
    }

protected:
    OS_TCB _tcb; /* Task Control Block */
    CPU_STK _stack[stackSize];

    /**
     * \brief Процедура, вызываемая перед бесконечным циклом. Реализуется в конкретных дочерних классах.
     */
    virtual void InitTask() = 0;
    /**
     * \brief Процедура, вызываемая задачей в бесконечном цикле. Реализуется в конкретных дочерних классах.
     */
    virtual void InfinityTask() = 0;
};
}

