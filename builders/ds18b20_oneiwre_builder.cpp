#include "ds18b20_onewire_builder.h"
#include "tools/interrupt.h"

OneWireEmul &Ds18b20_OneWireBuilder::Make() {
	if(_oneWirePointer == nullptr) {
		constexpr auto queueSize = 1;
		/* Create uartdrv initialization structs */
		const OneWireEmul::config_t config = {
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
		};
		static OneWireEmul onewire(config);
		_oneWirePointer = &onewire;
	}
	return *_oneWirePointer;
}
