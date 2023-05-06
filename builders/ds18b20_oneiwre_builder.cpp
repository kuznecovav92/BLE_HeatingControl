#include "ds18b20_onewire_builder.h"
#include "tools/interrupt.h"

OneWireEmul &Ds18b20_OneWireBuilder::Make() {
	if(_oneWirePointer == nullptr) {
		constexpr auto queueSize = 1;
		/* Define RX and TX buffer queues */
		DEFINE_BUF_QUEUE(queueSize, bufferQueueRxUart);
		DEFINE_BUF_QUEUE(queueSize, bufferQueueTxUart);
		/* Create uartdrv initialization structs */
		const UARTDRV_InitUart_t config = {
			.port = USART2,
			.baudRate = 9600,
			.txPort = gpioPortD,
			.rxPort = gpioPortD,
			.txPin = 1,
			.rxPin = 0,
			.uartNum = 2,
			.stopBits = usartStopbits1,
			.parity = usartNoParity,
			.oversampling = usartOVS16,
			.mvdis = false,
			.fcType = uartdrvFlowControlNone,
			.ctsPort = gpioPortD,
			.ctsPin = 0,
			.rtsPort = gpioPortD,
			.rtsPin = 0,
			.rxQueue = (UARTDRV_Buffer_FifoQueue_t *)&bufferQueueRxUart,
			.txQueue = (UARTDRV_Buffer_FifoQueue_t *)&bufferQueueTxUart
		};
		static OneWireEmul onewire(USART2_RX_IRQn);
		onewire.Init(config);
		_oneWirePointer = &onewire;
	}
	return *_oneWirePointer;
}
