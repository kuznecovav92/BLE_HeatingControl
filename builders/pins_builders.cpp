#include "pins_builders.h"

Pin::IOut &PinBluetoothLedTx::Make() {
    using namespace Pin;
    static Pin::Out pin(Port::PortB, 0, Mode::PushPull, Pull::Up);
    return pin;
}

Pin::IOut &PinBluetoothLedRx::Make() {
    using namespace Pin;
    static Pin::Out pin(Port::PortB, 1, Mode::PushPull, Pull::Up);
    return pin;
}

Pin::IOut &PinZigBeeLedTx::Make() {
    using namespace Pin;
    static Pin::Out pin(Port::PortA, 5, Mode::PushPull, Pull::Up);
    return pin;
}

Pin::IOut &PinZigBeeLedRx::Make() {
    using namespace Pin;
    static Pin::Out pin(Port::PortA, 6, Mode::PushPull, Pull::Up);
    return pin;
}
