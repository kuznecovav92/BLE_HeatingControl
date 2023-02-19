#include "crc.h"
#include "em_gpcrc.h"

void Crc16::Init() {
#if !defined(_SILICON_LABS_32B_SERIES_2)
	/* The GPCRC is a high frequency peripheral so we need to enable the
	 * HFPER clock in addition to the GPCRC clock. */
	CMU_ClockEnable(cmuClock_HFPER, true);
	CMU_ClockEnable(cmuClock_GPCRC, true);
#endif
}

uint16_t Crc16::Get(uint8_t const* data, size_t count, uint32_t initValue) {
	/* Initialize GPCRC with the 16-bit CRC-CCIT polynomial 0x1021 and use
	 * the inital value of 0xFFFF. */
	GPCRC_Init_TypeDef init = GPCRC_INIT_DEFAULT;
	init.crcPoly = 0x1021;
	init.initValue = initValue;
	init.reverseBits = true;
	GPCRC_Init(GPCRC, &init);

	GPCRC_Start(GPCRC);
	for (size_t i = 0; i < count; i++) {
		GPCRC_InputU8(GPCRC, *data++);
	}

	return (uint16_t)GPCRC_DataReadBitReversed(GPCRC);
}