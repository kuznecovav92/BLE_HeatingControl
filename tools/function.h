#pragma once

namespace tools
{
template <typename TParameter>
class Function {
public:
    Function() : _function(nullptr) { }

    Function(void (*function)(TParameter))
        : _function(function) { }

    void operator ()(TParameter data) const {
        if (_function != nullptr) (*_function)(data);
    }

private:
    void (*_function)(TParameter);
};

template <>
class Function<void> {
public:
    Function() : _function(nullptr) { }

    Function(void (*function)())
        : _function(function) { }


    void operator ()() const {
        if(_function != nullptr) (*_function)();
    }

private:
    void (*_function)();
};
}
