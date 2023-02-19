#pragma once

extern "C" {
    #include "app_assert.h"
    #include "os.h"
}
#include "os_functions.h"

namespace os {

#if OS_CFG_TMR_EN == DEF_ENABLED

#define OS_TIMER_ENABLED


class Timer {
public:
    enum class Type : uint8_t {
        OneShot = 0x01, /* Timer will not auto restart when it expires */
        Periodic = 0x02 /* Timer will     auto restart when it expires */
    };
    using typeCallback = void (&)(void*);
    enum class Result  : uint8_t {
        Success,
        Error
    };
    /**
     * @brief Конструктор
     * @param object Указатель на объект, который будет возвраще при вызове callback
     * @param callback Ссылка на функцию, которая вызывается по истечении заданного таймаута
     * @param delay Задержка. Если редим Type::Periodic, то это первая задержка до периодичного страбатывания
     * @param type Тип таймера
     * @param period Период срабатывания. Используется при Type::Periodic
     */
    Timer(void *object,
          typeCallback callback,
          ms_t delay,
          Type type = Type::OneShot,
          ms_t period = 0_ms) : _object(object),
                                _callback(callback) {
        RTOS_ERR error;
        app_assert(MsToTicksTask(delay), "Desired delay is less than timer task period");
        if (type == Type::Periodic) {
            app_assert(MsToTicksTask(period), "Desired period is less than timer task period");
        }
        OSTmrCreate(&_timer,
                    NULL,
                    MsToTicksTask(delay),
                    MsToTicksTask(period),
                    static_cast<uint8_t>(type),
                    &Callback,
                    this,
                    &error);
        app_assert(error.Code == RTOS_ERR_NONE,
                   "[E: 0x%04x] Failed timer create\n",
                   error.Code);
    }

    /**
     * @brief Запустить таймер
     * @return Результат выполнения операции
     */
    Result Start() {
        RTOS_ERR error;
        if (OSTmrStart(&_timer, &error) == DEF_FALSE ||
            error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }
    
    /**
     * @brief Перезаупстить таймер 
     * @return Результат выполнения операции
     */
    inline Result Restart() {
        return Start();
    }

    /**
     * @brief Остановить таймер. Функция обратного вызова не будет вызвана
     * @return Результат выполнения операции
     */
    Result Stop() {
        RTOS_ERR error;
        if (OSTmrStop(&_timer,
                      OS_OPT_TMR_NONE,
                      DEF_NULL,
                      &error) == DEF_FALSE ||
            error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

    /**
     * @brief Получить время в милисекундах оставшее до истечения заданного таймаута
     * @param time Время в милисекундах оставшее до истечения заданного таймаута
     * @return Результат выполнения операции
     */
    Result RemainTimeGet(ms_t &time) {
        RTOS_ERR error;
        OS_TICK ticks = OSTmrRemainGet(&_timer, &error);
        if (error.Code != RTOS_ERR_NONE) {
            time = 0_ms;
            return Result::Error;
        }
        time = TicksTaskToMs(ticks);
        return Result::Success;
    }
    
    /**
     * @brief Установить новое значение времени задержки
     * @param delay Задержка. Если редим Type::Periodic, то это первая задержка до периодичного страбатывания
     * @param period Период срабатывания. Используется при Type::Periodic
     * @return Результат выполнения операции
     */
    Result TimeSet(ms_t delay, ms_t period = 0_ms) {
        app_assert(MsToTicksTask(delay), "Delay is less than timer task period");
        RTOS_ERR error;
        OSTmrSet(&_timer,
                 MsToTicksTask(delay),
                 MsToTicksTask(period),
                 &Callback,
                 this,
                 &error);
        if (error.Code != RTOS_ERR_NONE) {
            return Result::Error;
        }
        return Result::Success;
    }

private:
    OS_TMR _timer;
    void *_object;
    typeCallback _callback;
    /**
     * @brief Функция обратного вызова. Вызывается когда таймер истекает
     * @param p_tmr Указатель на объект OS_TMR
     * @param p_arg Указатель на объект класса Timer
     */
    static void Callback(void *p_tmr, void *p_arg) {
        Timer *timer = static_cast<Timer*>(p_arg);
        timer->_callback(timer->_object);
    }

    /**
     * @brief Преобразовать милисекунды в тики задачи таймера
     * @param value Значение в милисекундах
     * @return Значение в тиках задачи таймера
     */
    static inline OS_TICK MsToTicksTask(ms_t value) {
        return MsToTicks(value) / (OS_CFG_TICK_RATE_HZ / OS_CFG_TMR_TASK_RATE_HZ);
    }

    /**
     * @brief Преобразовать тики задачи таймера в милисекунды
     * @param value Значение в тиках
     * @return Значение в милисекундах
     */
    static inline ms_t TicksTaskToMs(OS_TICK value) {
        return TicksToMs(value * (OS_CFG_TICK_RATE_HZ / OS_CFG_TMR_TASK_RATE_HZ));
    }
};

#endif

}
