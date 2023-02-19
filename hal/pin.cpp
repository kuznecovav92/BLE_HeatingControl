#include "pin.h"
extern "C" {
    #include "em_cmu.h"
}

namespace Pin {

In::In(Port port,
       uint8_t pin,
       Mode mode,
       Pull pull) : Base(port, pin) {
    CMU_ClockEnable(cmuClock_GPIO, true);
    GPIO_PinModeSet(static_cast<GPIO_Port_TypeDef>(_port),
                    _pin,
                    static_cast<GPIO_Mode_TypeDef>(mode),
                    static_cast<int>(pull));
}

Level In::StateGet() {
    return (GPIO_PinInGet(_port, _pin)) ? Level::High : Level::Low;
}

void Out::Set() {
    GPIO_PinOutSet(_port, _pin);
}

void Out::Clear() {
    GPIO_PinOutClear(_port, _pin);
}

void Out::Toggle() {
    GPIO_PinOutToggle(_port, _pin);
}

}
