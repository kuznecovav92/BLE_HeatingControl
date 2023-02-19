#pragma once

#include "hal/pin.h"

class Led {
public:
    enum class Polary : uint8_t {
        ActiveLow, /* LED Active polarity Low */
        ActiveHigh, /* LED Active polarity High */
    };

    Led(Pin::IOut &pin, Polary polary = Polary::ActiveHigh) : _pin(pin), _polary(polary) {}

    void On() {
        if (_polary == Polary::ActiveHigh) {
            _pin.Set();
        } else {
            _pin.Clear();
        }
    }

    void Off() {
        if (_polary == Polary::ActiveHigh) {
            _pin.Clear();
        } else {
            _pin.Set();
        }
    }

    void Toggle() {
        _pin.Toggle();
    }
private:
    Pin::IOut &_pin;
    Polary _polary;
};
