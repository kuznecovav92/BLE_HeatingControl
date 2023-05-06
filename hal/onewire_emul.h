#pragma once

#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
    #include "uartdrv.h"
    #include "em_usart.h"
    #include "em_gpio.h"
#ifdef __cplusplus
}
#endif
#include "interfaces/i_data_exchange.h"

class OneWireEmul : public IDataExchange {
public:
    OneWireEmul(const IRQn irqNumber);
    Result Init(const UARTDRV_InitUart_t &config);
    Result WriteThreadSafety(tools::typeUniqueBuffer buffer) override;
private:
    const IRQn _irqNumber;
};
