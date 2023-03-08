#pragma once

#include "uart.h"

class OneWireEmul : public Uart {
    public :
        OneWireEmul(const IRQn irqNumber,
                  typeTransmiteCallback transmiteCallback) : Uart(irqNumber,
                                                                  transmiteCallback) {

        }
private :

};