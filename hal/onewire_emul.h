#pragma once

#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
    #include "em_usart.h"
    #include "em_gpio.h"
    #include "efr32bg21_usart.h"
#ifdef __cplusplus
}
#endif
#include "interfaces/i_data_exchange.h"
#include "os/os_mutex.h"

class OneWireEmul : public IDataExchange {
public:
    typedef struct {
        USART_TypeDef *port; ///< The peripheral used for UART
        uint32_t baudRate;   ///< UART baud rate
        GPIO_Port_TypeDef txPort; ///< Port for UART Tx pin.
        GPIO_Port_TypeDef rxPort; ///< Port for UART Rx pin.
        uint8_t txPin;            ///< Pin number for UART Tx.
        uint8_t rxPin;            ///< Pin number for UART Rx.
        uint8_t uartNum;          ///< UART instance number.
        USART_Stopbits_TypeDef stopBits; ///< A number of stop bits.
        USART_Parity_TypeDef parity;     ///< Parity configuration.
        USART_OVS_TypeDef oversampling;  ///< Oversampling mode.
        bool mvdis; ///< Majority Vote Disable for 16x, 8x and 6x oversampling modes.
    } config_t;
    OneWireEmul(const config_t &config) : _uart(*config.port) {
        Init(config);
    }
    Result Init(const config_t &config);
    Result WriteThreadSafety(tools::typeUniqueBuffer buffer) override;
private:
    const USART_TypeDef &_uart;
    os::Mutex _mutex;

};
