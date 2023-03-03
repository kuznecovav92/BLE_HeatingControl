#include "ds18b20_uart_builder.h"
#include "tools/interrupt.h"

ISR_HANDLER(USART2_RX, HostUartBuilder::Make().RxInterruptHandler);
Uart *HostUartBuilder::uartPointer = nullptr;

void TransmiteCallback(struct UARTDRV_HandleData *handle,
					   Ecode_t transferStatus,
					   uint8_t *data,
					   UARTDRV_Count_t transferCount);

Uart &HostUartBuilder::Make() {
	if(uartPointer == nullptr) {
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
		static Uart uart(USART2_RX_IRQn,
						 TransmiteCallback);
		uart.Init(config);
		uartPointer = &uart;
	}
	return *uartPointer;
}

void HostUartBuilder::TransmiteCallback(struct UARTDRV_HandleData *handle,
										Ecode_t transferStatus,
										uint8_t *data,
										UARTDRV_Count_t transferCount) {
	if (uartPointer != nullptr)
		uartPointer->TransmiteCallback(*uartPointer,
									   handle,
									   transferStatus,
									   data,
									   transferCount);
}
