#pragma once
#include "chrono"

using ms_t = std::chrono::duration<int32_t, std::milli>;
// constexpr auto kInfinityWait = ms_t(0);

constexpr ms_t operator "" _ms(unsigned long long val) {
	return ms_t(val);
}
constexpr ms_t operator "" _s(unsigned long long val) {
	return ms_t(1000*val);
}

class Array {
public:
    uint16_t _count;
    uint8_t* _data;
    // Array() : _data(nullptr) {
    //     _count = 0;
    // }
};

#pragma pack(push, 1)

typedef struct {
    uint8_t lenght;
    uint8_t *array;
} array_t;

#pragma pack(pop)
