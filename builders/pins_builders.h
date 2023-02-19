#pragma once

#include "hal/pin.h"

class PinBluetoothLedTx {
public:
    static Pin::IOut &Make();
};

class PinBluetoothLedRx {
public:
    static Pin::IOut &Make();
};

class PinZigBeeLedTx {
public:
    static Pin::IOut &Make();
};

class PinZigBeeLedRx {
public:
    static Pin::IOut &Make();
};