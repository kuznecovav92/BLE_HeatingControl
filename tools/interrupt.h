#pragma once

#include <cstddef>

namespace tools {

class Interrupt {
public:
    static Interrupt& Instance() {
        static Interrupt instance;
        return instance;
    }
    void IsrEnter() { ++_counter; }
    void IsrExit() { --_counter; }
    bool IsIsr() const { return _counter != 0; }
private:
    Interrupt() {}
    size_t _counter = 0;
};

#define ISR_HANDLER(IRQ_SRC, FUNC)               \
    extern "C" void IRQ_SRC##_IRQHandler()       \
    {                                            \
        OSIntEnter();                            \
        tools::Interrupt::Instance().IsrEnter(); \
        FUNC();                                  \
        tools::Interrupt::Instance().IsrExit();  \
        OSIntExit();                             \
    }

}
