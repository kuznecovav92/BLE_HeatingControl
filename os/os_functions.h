#pragma once

#include <stdint.h>
extern "C" {
    #include "common\source\kal\kal_priv.h"
    #include "os.h"
}
#include "tools/types.h"

namespace os {

/**
 * @brief Преобразовать милисекунды в тики тактовой частоты микроконтроллера
 * @param value Значение в милисекундах
 * @return Значение в тиках
 */
inline uint32_t MsToTicks(ms_t value) {
    RTOS_ERR err;
    return (((value.count() * OSTimeTickRateHzGet(&err)) + 1000u - 1u) / 1000u);
}

/**
 * @brief Преобразовать тики тактовой частоты микроконтроллера в милисекунды
 * @param value Значение в тиках тактовой частоты микроконтроллера
 * @return Значение в милисекундах
 */
inline ms_t TicksToMs(uint32_t value) {
    RTOS_ERR err;
    return ms_t((value * 1000 + 1 - 1000) / OSTimeTickRateHzGet(&err));
}

#if OS_CFG_TICK_EN == DEF_ENABLED

/**
 * @brief Блокирует выполнение вызывающего потока в течение периода времени, указанного timeout.
 * Выполнение текущего потока останавливается до тех пор, пока не пройдет по крайней мере timeout.
 * @param timeout Интервал времени, по истечении которого вызывающий поток должен возобновить выполнение.
 */
inline void SleepFor(ms_t timeout) {
    KAL_Dly(timeout.count());
}

inline uint32_t SystemTimer() {
    RTOS_ERR error;
    return OSTimeGet(&error);
}

#endif

}
