#include "onewire_emul.h"
#ifdef __cplusplus
extern "C" {
#endif
	#include "sl_assert.h"
    #include "em_cmu.h"
#ifdef __cplusplus
}
#endif

OneWireEmul::OneWireEmul(const IRQn irqNumber) : _irqNumber(irqNumber) {
    
}

OneWireEmul::Result OneWireEmul::Init(const UARTDRV_InitUart_t &config) {
    CMU_Clock_TypeDef clock;
    if (config.port == USART0) {
        clock = cmuClock_USART0;
    } else if (config.port == USART1) {
        clock = cmuClock_USART1;
    } else if (config.port == USART2) {
        clock = cmuClock_USART2;
    } else {
        return Result::ErrorPort;
    }
    CMU_ClockEnable(clock, true);
    CMU_ClockEnable(cmuClock_GPIO, true);

    GPIO->USARTROUTE[config.uartNum].ROUTEEN = GPIO_USART_ROUTEEN_TXPEN | GPIO_USART_ROUTEEN_RXPEN;
    GPIO->USARTROUTE[config.uartNum].TXROUTE = (config.txPort << _GPIO_USART_TXROUTE_PORT_SHIFT) |
                                               (config.txPin << _GPIO_USART_TXROUTE_PIN_SHIFT);
    GPIO->USARTROUTE[config.uartNum].RXROUTE = (config.rxPort << _GPIO_USART_RXROUTE_PORT_SHIFT) |
                                               (config.rxPin << _GPIO_USART_RXROUTE_PIN_SHIFT);

    GPIO_PinModeSet(config.txPort, config.txPin, gpioModePushPull, 1);
    GPIO_PinModeSet(config.rxPort, config.rxPin, gpioModeInputPull, 1);

    /* Initialize USART registers to hardware reset state. */
    USART_Reset(config.port);

    config.port->EN_SET = USART_EN_EN;

    /* Configure databits, stopbits, and parity. */
    config.port->FRAME = (uint32_t)usartDatabits8 | (uint32_t)usartStopbits1 | (uint32_t)usartNoParity;

    /* Configure baudrate. */
    USART_BaudrateAsyncSet(config.port, 0, 9600, usartOVS16);

    // #if defined(_USART_TIMING_CSHOLD_MASK)
    //     usart->TIMING = (((uint32_t)init->autoCsHold << _USART_TIMING_CSHOLD_SHIFT) & _USART_TIMING_CSHOLD_MASK) |
    //                     (((uint32_t)init->autoCsSetup << _USART_TIMING_CSSETUP_SHIFT) & _USART_TIMING_CSSETUP_MASK);
    // #endif

    GPIO->USARTROUTE_CLR[USART_NUM(config.port)].ROUTEEN = GPIO_USART_ROUTEEN_RTSPEN;
    config.port->CTRLX_CLR = USART_CTRLX_CTSEN;

    config.port->CTRL |= USART_CTRL_LOOPBK_ENABLE | USART_CTRL_AUTOTRI_ENABLE;

    /* Finally, enable (as specified). */
    config.port->CMD = USART_CMD_CLEARRX | USART_CMD_CLEARTX;

    // Clear any false IRQ/DMA request
    USART_IntClear(config.port, ~0x0);

    return Result::Success;
}

OneWireEmul::Result OneWireEmul::WriteThreadSafety(tools::typeUniqueBuffer buffer) {
    return Result::Success;
}
