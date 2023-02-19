#pragma once
#include <stdint.h>
extern "C" {
    #include "os.h"
	#include "platform-header.h"
}
/*
 * https://docs.silabs.com/micrium/latest/micrium-kernel/04-kernel-programming-guide
 */
namespace os {

#if OS_CFG_FLAG_EN == DEF_ENABLED

enum class EmptyFlags {};

template <class typeFlags = EmptyFlags>
class Flags {
public:
    static constexpr size_t _kInfinityTimeout = 0;
    Flags() {
        RTOS_ERR error;
        OSFlagCreate(&_flagGroup,
        		     NULL,
                     0,
                     &error);
        assert(error.Code == RTOS_ERR_NONE);
    }
    /**
     * @brief Блокирующая функция ожидания установки требуемого флага(только одного) 
     * с последующим его стиранием
     * @param flag Флаг, который который ожидается что будет установлен
     * @param timeout Время (в тиках) ожидания установки флага
     * @return true - флаг установлен, false - ошибка или вышел таймаут ожидания
     */
    bool Pend(typeFlags flag, size_t timeout = _kInfinityTimeout) {
        RTOS_ERR error;
        OSFlagPend(&_flagGroup,
                   static_cast<OS_FLAGS>(flag),
                   timeout,
                   OS_OPT_PEND_FLAG_SET_ALL | OS_OPT_PEND_BLOCKING | OS_OPT_PEND_FLAG_CONSUME,
                   DEF_NULL,
                   &error);
        return (error.Code == RTOS_ERR_NONE)? true : false;
    }
    /**
     * @brief Установить флаг(маска флагов)
     * @param flag Флаг(маска флагов)
     * @return false - Возникла ошибка при попытке установить флаг, иначе true
     */
    bool Post(typeFlags flags) {
        RTOS_ERR error;
        if (!(OSFlagPost(&_flagGroup,
                       static_cast<OS_FLAGS>(flags),
                       OS_OPT_POST_FLAG_SET,
                       &error) & static_cast<OS_FLAGS>(flags)))
                       return false;
        return (error.Code == RTOS_ERR_NONE)? true : false;
    }
private:
    OS_FLAG_GRP _flagGroup;
};

#endif

}
