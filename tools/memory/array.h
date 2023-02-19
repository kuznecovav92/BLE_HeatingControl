#pragma once
#include <stdint.h>
#include "os/os_critical_section.h"
#include "tools/logs/logs.h"

namespace tools {

template<class typeElement, size_t Size, typename typeCounter = uint8_t>
class Array {
public:
    enum class Result {
        Success,
        Overflow,
        Empty,
        ErrorFatal
    };
    Array() {
        _count = 0;
    }
    /**
     * @brief Поместить элемент в массив
     * @param element Ссылка на элемент
     * @return Результат выполнения операции
     */
    Result Push(const typeElement &element) {
        os::CriticalSection criticalSection;
        if(_count == Size)
            return Result::Overflow;
        
        /* Найти свободное место */
        int freeIndex = FreeFind(); 
        if(freeIndex >= Size)
            return Result::ErrorFatal;

        memcpy(&_array[freeIndex], &element, sizeof(typeElement));
        ++_count;
        return Result::Success;
    }
    /**
     * @brief Поместить элемент в массив
     * @param element rvalue ссылка на элемент
     * @return Результат выполнения операции
     */
    Result Push(typeElement &&element) {
        os::CriticalSection criticalSection;
        if (IsFull() == true)
            return Result::Overflow;

        /* Найти свободное место */
        const auto freeIndex = FreeFind();
        if (freeIndex >= static_cast<int>(Size)) {
            return Result::ErrorFatal;
        }
        _array[freeIndex] = std::move(element);
        ++_count;
        return Result::Success;
    }

    bool IsFull() const {
        return _count == Size;
    }
protected:
    typeCounter _count;
    typeElement _array[Size] = {nullptr};
    int FreeFind() {
        typeCounter i;
        for (i = 0; i < Size; i++) {
            if (_array[i] == nullptr)
                break;
        }
        return i;
    }
};

/**
 * @brief Класс описыват возможность работы с массивом умных указателей typeUniqueBuffer
 * @tparam typeCounter Тип счетчика
 * @tparam Size Размер массива
 */
template <size_t Size, typename typeCounter = uint8_t>
class ArrayOfUniqueBuffer : public Array<typeUniqueBuffer, Size, typeCounter> {
public:
    using typeArray = Array<typeUniqueBuffer, Size, typeCounter>;
    /**
     * @brief Попробовать взять из массива буффер, указатель на данные в котором совпадают с pointerData
     * @param pointerData Указатель, который должен быть найдет в имеющемся буфере
     * @return nullptr при ошибке, иначе объект typeUniqueBuffer
     */
    typeUniqueBuffer Take(uint8_t const * const pointerData) {
        os::CriticalSection criticalSection;
        typeUniqueBuffer element = nullptr;
       if (typeArray::_count == 0)
           return element;
        for (typeCounter i = 0; i < Size; i++) {
            if (typeArray::_array[i] != nullptr && typeArray::_array[i]->PointerDataGet() == pointerData) {
                element = std::move(typeArray::_array[i]);
                typeArray::_count--;
                break;
            }
        }
        return element;
    }
};
} 
