#pragma once

#include <stdint.h>
#include <stddef.h>
#include "buffer.h"
#include "tools/logs/logs.h"

namespace tools
{

/**
 * @brief Описывает буфер, в который можно записывать данные не зацикливаясь(т.е. это не круговой буфер)
 * @tparam size Количество элементов типа typeCounter
 * @tparam typeCounter Тип счетчика элементов
 */
template <size_t size, class typeCounter = uint16_t>
class BufferHardInit : public Buffer<size, typeCounter> {
public:
    BufferHardInit() : typeBuffer() {}
    /**
     * @brief Вручную проинициализировать объект
     * @param count 
     */
    void HardInit(size_t count) {
        if ((typeBuffer::Count() + count) > typeBuffer::Size())
            return;
        typeBuffer::typeFifo::_count += count;
        typeBuffer::typeFifo::_endIndex += count;
    }

private:
    using typeBuffer = Buffer<size, typeCounter>;
};

}
