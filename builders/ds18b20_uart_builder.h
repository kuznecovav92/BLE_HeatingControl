#pragma once
#include "hal/uart.h"

class HostUartBuilder {
public:
	static Uart &Make();
	static void TransmiteCallback(struct UARTDRV_HandleData *handle,
								  Ecode_t transferStatus,
								  uint8_t *data,
								  UARTDRV_Count_t transferCount);

private:
	static Uart *uartPointer;
};
