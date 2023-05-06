#pragma once
#include "hal/onewire_emul.h"

class Ds18b20_OneWireBuilder {
public:
	static OneWireEmul &Make();
private:
	static OneWireEmul *_oneWirePointer;
};
