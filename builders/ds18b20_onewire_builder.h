#pragma once
#include "hal/onewire_emul.h"

class Ds18b20_OneWireBuilder {
public:
	static OneWireEmul &Make();
	static void TransmiteCallback(struct UARTDRV_HandleData *handle,
								  Ecode_t transferStatus,
								  uint8_t *data,
								  UARTDRV_Count_t transferCount);

private:
	static OneWireEmul *_oneWirePointer;
};
