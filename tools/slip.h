#pragma once

#include <stdint.h>
#include "tools/memory/buffer.h"

namespace tools {

class Slip {
public:
    typedef enum : uint8_t {
        EndByte = 0xC0,
        EscByte = 0xDB,
        SubstituteByteDC = 0xDC,
        SubstituteByteDD = 0xDD
    } ReservedBytes;
    enum class Result : uint8_t {
        Success,
        ErrorOverFlow,  /* Переполнение буфера данных */
        ErrorBoundary,  /* Ошибка границы кадра */
        ErrorConvert,   /* Ошибка при конвертировании */
        ErrorNullptr,   /* Нулевой указатель в параметрах */
    };
    /**
     * @brief Выполнить операцию Byte Stuffing, помещая данные во внешний буфер
     * @param pBufferIn Буфер с входными данными
     * @param сountIn Количество байт в буфере pBufferIn
     * @param pBufferOut Буфер, котором будет лежать результат операции
     * @param countOut Количество байт данных в буфере pBufferOut после выполнения операции
     * @param sizeBufferOut Размер буфера pBufferOut
     * @return Результат выполнения операции
     */
    static Result ByteStuffingToExternalBuffer(uint8_t* const pBufferIn,
                                               size_t countIn,
                                               uint8_t* pBufferOut,
                                               size_t& countOut,
                                               const size_t sizeBufferOut) {
        if (pBufferIn == nullptr || pBufferOut == nullptr) return Result::ErrorNullptr;

        size_t index = 0;
        for (uint16_t i = 0; i < countIn; i++) {
            switch (pBufferIn[i]) {
            case EscByte:
                if ((index+2) >= sizeBufferOut) return Result::ErrorOverFlow;
                pBufferOut[index++] = EscByte;
                pBufferOut[index++] = SubstituteByteDD;
                break;
            case EndByte:
                if ((index+2) >= sizeBufferOut) return Result::ErrorOverFlow;
                pBufferOut[index++] = EscByte;
                pBufferOut[index++] = SubstituteByteDC;
                break;
            default:
                if (index >= sizeBufferOut) return Result::ErrorOverFlow;
                pBufferOut[index++] = pBufferIn[i];
                break;
            }
        }
        countOut += index;
        return Result::Success;
    }
    /**
     * @brief Выполнить операцию Byte Stuffing, помещая данные во внешний буфер.
     * Перед данными будет установлен флаг границы(старта) Slip кадра
     * @param pBufferIn Буфер с входными данными
     * @param сountIn Количество байт в буфере pBufferIn
     * @param pBufferOut Буфер, котором будет лежать результат операции
     * @param countOut Количество байт данных в буфере pBufferOut после выполнения операции
     * @param sizeBufferOut Размер буфера pBufferOut
     * @return Результат выполнения операции
     */
    static Result ByteStuffingWithStart(uint8_t* const pBufferIn,
                                        size_t countIn,
                                        uint8_t* pBufferOut,
                                        size_t& countOut,
                                        const size_t sizeBufferOut) {
        if (pBufferIn == nullptr || pBufferOut == nullptr) return Result::ErrorNullptr;
        if (sizeBufferOut < 1) return Result::ErrorOverFlow;
        pBufferOut[0] = EndByte;
        countOut++;
        return ByteStuffingToExternalBuffer(
            pBufferIn, 
            countIn, 
            pBufferOut + 1, 
            countOut, 
            sizeBufferOut - 1);
    }
    /**
     * @brief Выполнить операцию Byte Stuffing, помещая данные во внешний буфер.
     * После данных Будет установлен флаг границы(конца) Slip кадра
     * @param pBufferIn Буфер с входными данными
     * @param сountIn Количество байт в буфере pBufferIn
     * @param pBufferOut Буфер, котором будет лежать результат операции
     * @param countOut Количество байт данных в буфере pBufferOut после выполнения операции
     * @param sizeBufferOut Размер буфера pBufferOut
     * @return Результат выполнения операции
     */
    static Result ByteStuffingWithEnd(uint8_t* const pBufferIn,
                                      size_t countIn,
                                      uint8_t* pBufferOut,
                                      size_t& countOut,
                                      const size_t sizeBufferOut) {
        size_t newSize = 0;
        Result result = ByteStuffingToExternalBuffer(
            pBufferIn, 
            countIn, 
            pBufferOut, 
            newSize,
            sizeBufferOut);
        if (result != Result::Success) return result;
        if ((sizeBufferOut - newSize) < 1) return Result::ErrorOverFlow;
        pBufferOut[newSize++] = EndByte;
        countOut += newSize;
        return Result::Success;
    }

    /**
     * @brief Выполнить операцию Byte Stuffing над данными в буфере
     * @param pBuffer буфер с входными данными
     * @param сount количество байт в буфере pBuffer
     * @param sizeBuffer размер буфера pBuffer
     * @return результат выполнения операции
     */
    static Result ByteStuffing(uint8_t* pBuffer, size_t& count, const size_t sizeBuffer) {
        if (pBuffer == nullptr) return Result::ErrorNullptr;

        size_t j;
        for (uint16_t i = 0; i < count; i++) {
            switch (pBuffer[i]) {
            case EscByte:
            case EndByte:
                if (count >= sizeBuffer) return Result::ErrorOverFlow;
                for (j = count; j > i; j--) pBuffer[j] = pBuffer[j - 1];
                pBuffer[i + 1] = (pBuffer[i] == EscByte) ? SubstituteByteDD : SubstituteByteDC;
                pBuffer[i] = EscByte;
                i++;
                count++;
                break;
            }
        }
        return Result::Success;
    }

    /**
     * @brief Выполнить операцию обратную Byte Stuffing-у над буфером.
     * Вначале будет выполнен поиск границы Slip кадра.
     * @param pBuffer Буфер с входными данными
     * @param sizeBuffer Размер буфера pBuffer, заполненного данными
     * @param countOriginal Размер кадра до преобразования. После возврата из функции
     * показывает на каком байте завершилось инвертирование данных
     * @param countRevert Размер кадра после преобразования
     * @return Результат выполнения операции
     */
    static Result ByteStuffingRevert(uint8_t* const pBuffer,
                                     const size_t sizeBuffer,
                                     size_t& countOriginal,
                                     size_t& countRevert) {
        if (pBuffer == nullptr) return Result::ErrorNullptr;

        bool startSlip = false; /* Индикатор границы Slip кадра */
        for (countOriginal = 0; countOriginal < sizeBuffer; countOriginal++) {
            /* Поиск начала кадра по EndByte */
            if(startSlip == false) {
                if(pBuffer[countOriginal] == EndByte) {
                    startSlip = true;
                    countRevert = 0;
                }
                continue; /* Пропустить этот байт */
            }
            /* Извлечь данные */
            if (pBuffer[countOriginal] == EscByte) {
                countOriginal++;
                if (countOriginal == sizeBuffer) {
                    /* Битый кадр. Не соблюдение байт стафинга !!! кадр заканчивается байтом 0xDB */
                    return Result::ErrorConvert;
                }
                if (pBuffer[countOriginal] == SubstituteByteDC) {
                    pBuffer[countRevert++] = EndByte;
                } else if (pBuffer[countOriginal] == SubstituteByteDD) {
                    pBuffer[countRevert++] = EscByte;
                } else {
                    /* Битый кадр. Не соблюдение байт стафинга !!! Незавершенная последовательность */
                    return Result::ErrorConvert;
                }
            } else if (((uint8_t*)pBuffer)[countOriginal] == EndByte) {
                /* Преобразование завершено */
                countOriginal++;
                return Result::Success;
            } else {
                pBuffer[countRevert++] = ((uint8_t*)pBuffer)[countOriginal];
            }
        }
        return Result::ErrorBoundary;
    }
    /**
     * @brief Выполнить операцию Byte Stuffing над данными в буфере с добавлением грнаиц Slip кадра
     * @param buffer ССылка на буфер с входными данными
     * @return Результат выполнения операции
     */
    template<size_t size, class typeCounter = uint16_t>
    static Result ByteStuffingWithStartEnd(Buffer<size, typeCounter>& buffer) {
        typedef Buffer<size, typeCounter> typeBuffer;
        typeCounter startIndex = buffer._startIndex;
        uint8_t temp;
        for (size_t i = 0; i < buffer.Count(); i++) {
            switch (buffer._buffer[buffer._startIndex + i]) {
            case EscByte:
            case EndByte: {
                temp = (buffer._buffer[buffer._startIndex + i] == EscByte)
                                   ? SubstituteByteDD
                                   : SubstituteByteDC;
                if (buffer.Count() == buffer.Size()) return Result::ErrorOverFlow;
                if (buffer.Count() == (i + 1)) {
                    if(buffer.template PushBack<uint8_t>(temp) != typeBuffer::Result::Success)
                        return Result::ErrorOverFlow;
                } else if (buffer.Push(i + 1, temp) != typeBuffer::Result::Success) {
                    return Result::ErrorOverFlow;
                }
                buffer._buffer[buffer._startIndex + i] = EscByte;
                /* Проверить смещение границ данных в буфере */
                if (startIndex != buffer._startIndex) {
                    i -= startIndex - buffer._startIndex;
                    startIndex = buffer._startIndex;
                }
                ++i;
                break;
            }
            }
        }
        temp = EndByte;
        if(buffer.PushFront(temp) != typeBuffer::Success)
            return Result::ErrorOverFlow;
        if(buffer.PushBack(temp) != typeBuffer::Result::Success)
            return Result::ErrorOverFlow;
        return Result::Success;
    }
    /**
     * @brief Выполнить операцию обратную Byte Stuffing-у над буфером.
     * Вначале будет выполнен поиск границы Slip кадра.
     * @param buffer ССылка на буфер с входными данными
     * @return Результат выполнения операции
     */
    template<size_t size, class typeCounter = uint16_t>
    static Result ByteStuffingRevert(Buffer<size, typeCounter>& buffer) {
        size_t countOriginal;
        size_t countRevert;
        const Result result = ByteStuffingRevert(buffer.PointerDataGet(),
                                                 buffer.Count(),
                                                 countOriginal,
                                                 countRevert);
        if (result != Slip::Result::Success) return result;
        buffer._count = countRevert;
        buffer._endIndex = countRevert + buffer._startIndex;
        return Result::Success;
    }

    /**
     * @brief Выполнить операцию обратную Byte Stuffing-у над буфером с помещением результата
     * в другой буфер. Вначале будет выполнен поиск границы Slip кадра.
     * @param inBuffer Ссылка на буфер с входными данными
     * @param outBuffer Ссылка на буфер с результирующими данными
     * @return Результат выполнения операции
     */
    template <size_t size, class typeCounter = uint16_t>
    static Result ByteStuffingRevertToExternalBuffer(Buffer<size, typeCounter> &inBuffer,
                                                     Buffer<size, typeCounter> &outBuffer) {
        bool startSlip = false; /* Индикатор границы Slip кадра */
        uint8_t byte;
        while (inBuffer.Count()) {
            byte = inBuffer.template TakeFront<uint8_t>();
            /* Поиск начала кадра по EndByte */
            if(startSlip == false) {
                if(byte == EndByte) {
                    startSlip = true;
                }
                continue; /* Пропустить этот байт */
            }
            /* Извлечь данные */
            if (byte == EscByte) {
                if (inBuffer.IsEmpty()) {
                    /* Битый кадр. Не соблюдение байт стафинга !!! кадр заканчивается байтом 0xDB */
                    return Result::ErrorConvert;
                }
                byte = inBuffer.template TakeFront<uint8_t>();
                if (byte == SubstituteByteDC) {
                    outBuffer.template PushBack<uint8_t>(EndByte);
                } else if (byte == SubstituteByteDD) {
                    outBuffer.template PushBack<uint8_t>(EscByte);
                } else {
                    /* Битый кадр. Не соблюдение байт стафинга !!! Незавершенная последовательность */
                    return Result::ErrorConvert;
                }
            } else if (byte == EndByte) {
                /* Преобразование завершено */
                return Result::Success;
            } else {
                outBuffer.template PushBack<uint8_t>(inBuffer.template TakeFront<uint8_t>());
            }
        }
        return Result::ErrorBoundary;
    }
};

}
