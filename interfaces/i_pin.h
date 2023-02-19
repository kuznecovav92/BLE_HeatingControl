#pragma once

namespace Pin {

enum class Level {
    Low,
    High
};


class IIn {
public:
    virtual Level StateGet() = 0;
};

class IOut : public IIn {
public:
    virtual void Set() = 0;
    virtual void Clear() = 0;
    virtual void Toggle() = 0;
};

}