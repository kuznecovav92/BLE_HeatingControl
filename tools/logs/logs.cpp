#include <stdint.h>
#include "logs.h"

#ifdef SL_CATALOG_APP_LOG_PRESENT

/**
 * @brief Вывести массив данных в лог
 * @param type Тип лога
 * @param data Указатель на данные
 * @param count Количество байт данных
 * @param lineSize Количество байт данных в строке, которое будет выводиться в лог
 * @param prefix Префикс, который выводится вначале строки выводимых данных
 * @param color Цвет выводимого текста
 */
void LogDataBytes(const LogTypes type,
                  uint8_t const *data,
                  size_t count,
                  const uint8_t lineSize,
                  char const *const prefix,
                  char const *const color) {
    if(!static_cast<bool>(type))
        return;
        
    uint8_t lineSizeCurrent = 0;
    Log(type, "%s%s", color, prefix);
    while (count--) {
        Log(type, "%s%.2X ", color, *data++);
        if (++lineSizeCurrent >= lineSize) {
            lineSizeCurrent = 0;
            Log(type, "\n%s%s", color, prefix);
        }
    }
    Log(type, "\n\n");
}

#endif
