#pragma once
#include "hal/crc.h"
#include "tools/memory/buffer.h"

namespace tools {

class Crc {
public:
    using typeCrc = uint16_t;
    enum class Result {
        Success,
        ErrorCrc,
        ErrorFatal
    };
    /**
     * @brief Проверить валидность CRC. После выполнения функции из буфера будет удалена CRC
     * @tparam typeCounter Тип счетчика элементов
     * @tparam size Количество элементов типа typeCounter
     * @param buffer Ссылка на объект буфера
     * @return Результат выполнения операции
     */
    template <size_t size, class typeCounter>
    static Result Check(Buffer<size, typeCounter>& buffer) {
        typeCrc crcIn;
        const auto result = buffer.TakeBack(crcIn);
        if (result != Buffer<size, typeCounter>::Result::Success)
            return Result::ErrorFatal;
        if (Crc16::Get(buffer.PointerDataGet(), buffer.Count(), ~0) != crcIn)
            return Result::ErrorCrc;
        return Result::Success;
    }
    /**
     * @brief Расчитать CRC всех данных, находящихся в бефере
     * @tparam typeCounter Тип счетчика элементов
     * @tparam size Количество элементов типа typeCounter
     * @param buffer Ссылка на объект буфера
     * @return Результат выполнения операции
     */
    template <size_t size, class typeCounter>
    static typeCrc Get(const Buffer<size, typeCounter> &buffer) {
        return Crc16::Get(buffer.PointerDataGet(), buffer.Count(), ~0);
    }
    /**
     * @brief Расчитать CRC всех данных, находящихся в бефере и добавить
     * полученное значение в конец буфера
     * @tparam typeCounter Тип счетчика элементов
     * @tparam size Количество элементов типа typeCounter
     * @param buffer Ссылка на объект буфера
     * @return Результат выполнения операции
     */
    template <size_t size, class typeCounter>
    static Result Add(Buffer<size, typeCounter> &buffer) {
        typeCrc crc = Crc16::Get(buffer.PointerDataGet(), buffer.Count(), ~0);
        LogCR(LogTypes::Crc, " CRC = 0x%.4X", crc);
        if (buffer.PushBack(crc) != Buffer<size, typeCounter>::Success)
            return Result::ErrorFatal;
        return Result::Success;
    }
    /**
     * @brief Расчитать CRC всех данных, находящихся в бефере и добавить перевернутое
     * полученное значение в конец буфера
     * @tparam typeCounter Тип счетчика элементов
     * @tparam size Количество элементов типа typeCounter
     * @param buffer Ссылка на объект буфера
     * @return Результат выполнения операции
     */
    template <size_t size, class typeCounter>
    static Result AddSwap(Buffer<size, typeCounter> &buffer) {
        typeCrc crc = Crc16::Get(buffer.PointerDataGet(), buffer.Count(), ~0);
        crc = (crc >> 8) | (crc << 8);
        LogCR(LogTypes::Crc, " CRC = 0x%.4X", crc);
        if (buffer.PushBack(crc) != Buffer<size, typeCounter>::Success)
            return Result::ErrorFatal;
        return Result::Success;
    }
};

}
