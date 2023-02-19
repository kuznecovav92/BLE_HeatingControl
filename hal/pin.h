#pragma once

#include <stdint.h>
extern "C" {
    #include "em_gpio.h"
}
#include "interfaces/i_pin.h"

namespace Pin {

enum class Port {
    PortA = gpioPortA,
    PortB = gpioPortB,
    PortC = gpioPortC,
    PortD = gpioPortD
};

enum class Pull : uint8_t {
    Down,
    Up
};

enum class Mode : uint8_t {
    DisabledWithPullup,                       /* Input disabled. Pullup if DOUT is set. */
    InputFilter,                              /* Input enabled. Filter if DOUT is set. */
    InputPull,                                /* Input enabled. DOUT determines pull direction. */
    InputPullFilter,                          /* Input enabled with filter. DOUT determines pull direction. */
    PushPull,                                 /* Push-pull output. */
    PushPullAlternate,                        /* Push-pull using alternate control. */
    WiredOr,                                  /* Wired-or output*/
    WiredOrPullDown,                          /* Wired-or output with pull-down. */
    OpenDrainOutput,                          /* Open-drain output */
    OpenDrainOutputWithFilter,                /* Open-drain output with filter */
    OpenDrainOutputWithPullUp,                /* Open-drain output with pullup. */
    OpenDrainOutputWithPullUpFilter,          /* Open-drain output with filter and pullup. */
    OpenDrainOutputAlternate,                 /* Open-drain output using alternate control. */
    OpenDrainOutputAlternateWithFilter,       /* Open-drain output using alternate control with filter. */
    OpenDrainOutputAlternateWithPullUp,       /* Open-drain output using alternate control with pullup. */
    OpenDrainOutputAlternateWithPullUpFilter, /* Open-drain output using alternate control with filter and pullup. */
};

class Base {
public:
    Base(Port port,
         uint8_t pin) : _port(static_cast<GPIO_Port_TypeDef>(port)),
                        _pin(pin) {}
protected:
    Base() = delete;
    GPIO_Port_TypeDef _port;
    uint8_t _pin;
};

class In : public Base, public IIn {
public:
    In(Port port,
       uint8_t pin,
       Mode mode,
       Pull pull);
    Level StateGet() override;
private:
    In() = delete;
};

class Out : public In, public IOut {
public:
    Out(Port port,
        uint8_t pin,
        Mode mode,
        Pull pull) : In(port, pin, mode, pull) {}
    Level StateGet() override {
        return In::StateGet();
    }
    void Set() override;
    void Clear() override;
    void Toggle() override;
private:
    Out() = delete;
};

}
