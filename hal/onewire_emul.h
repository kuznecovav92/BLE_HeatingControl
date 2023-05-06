#pragma once

#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
	#include "em_usart.h"
    #include "em_gpio.h"
#ifdef __cplusplus
}
#endif
#include "interfaces/i_data_exchange.h"

class OneWireEmul : public IDataExchange {
public:
    typedef struct {
        USART_TypeDef *port;  /* The peripheral used for UART */
        uint8_t uartNum;      /* UART instance number */
        GPIO_Port_TypeDef txPort; /* Port for UART Tx pin */
        GPIO_Port_TypeDef rxPort; /* Port for UART Rx pin */
        uint8_t txPin;            /* Pin number for UART Tx */
        uint8_t rxPin;            /* Pin number for UART Rx */

    } config_t;
    OneWireEmul(const IRQn irqNumber);
    Result Init(config_t &config);
    Result WriteThreadSafety(tools::typeUniqueBuffer buffer) override;
private:
    const IRQn _irqNumber;
};
