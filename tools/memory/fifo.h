#pragma once

#include <stdint.h>
#include <string.h>

namespace tools {

template<size_t size, class typeElement = uint8_t, class typeCounter = uint16_t, uint16_t startPosition = 0>
class Fifo {
public:
    typedef enum {
        Success,
        Overflow,
        Empty,
    } Result;

    Fifo() {
        Purge();
    }
    /**
     * \brief Получить количество элементов, которое может быть помещено в FIFO
     * \return Количество элементов
     */
    size_t Size() const {
        return size;
    }
    /**
     * \brief Проверить пустой ли буфер
     * \return true если буфер пустой
     */
    bool IsEmpty() const {
        return Count() == 0;
    }
    /**
     * \brief Проверить заполнен ли буфер
     * \return true если буфер заполнен
     */
    bool IsFull() const {
        return Count() == size;
    }
    /**
     * \brief Получить текущее количество элементов, хранящихся в FIFO
     * \return Текущее количество элементов, хранящихся в FIFO
     */
    size_t Count() const {
        return _count;
    }
    /**
     * \brief Получить текущее количество свободных элементов в FIFO
     * \return Текущее количество свободных элементов в FIFO
     */
    size_t Free() const {
        return Size() - Count();
    }
    /**
     * \brief Очистить буфер
     */
    void Purge() {
        _count = 0;
        _startIndex = _endIndex = startPosition;
    }
    /**
     * \brief Добавить элемент в конец FIFO
     * \param element Ссылка на элемент, который требуется сохранить
     * \return результат выполнения операции
     */
    Result PushBack(const typeElement& element) {
        if (IsFull()) return Overflow;
        _buffer[_endIndex] = element;
        if (++_endIndex == size) _endIndex = 0;
        ++_count;
        return Success;
    }
    /**
     * \brief Добавить элемент в конец FIFO
     * \param element Ссылка на элемент, который требуется сохранить
     * \return результат выполнения операции
     */
    Result PushBack(typeElement&& element) {
        if (IsFull())
            return Overflow;
        _buffer[_endIndex] = std::move(element);
        if (++_endIndex == size)
            _endIndex = 0;
        ++_count;
        return Success;
    }
    /**
     * \brief Взять элемент из начала FIFO
     * \param element Ссылка на элемент, через который возвращаются данные
     * \return Результат выполнения операции
     */
    Result TakeFront(typeElement& element) {
        if (IsEmpty()) return Empty;
        element = _buffer[_startIndex];
        if (_startIndex == size - 1) _startIndex = 0;
        else ++_startIndex;
        --_count;
        return Success;
    }
    /**
     * \brief Добавить элемент в начало FIFO
     * \param element Ссылка на элемент, который требуется сохранить
     * \return Результат выполнения операции
     */
    Result PushFront(const typeElement& element) {
        if (IsFull()) return Overflow;
        if (Count()) {
            if (_startIndex == 0) _startIndex = Size() - 1;
            else --_startIndex;
        }
        _buffer[_startIndex] = element;
        ++_count;
        return Success;
    }
protected:
    typeElement _buffer[size];
    typeCounter _startIndex;
    typeCounter _endIndex;
    typeCounter _count;
    /**
     * \brief Получить размер памяти в байтах, занимаемой помещенными в FIFO элементами
     * \return Размер памяти в байтах, занимаемой помещенными в FIFO элементами
     */
    typeCounter SizeBytes() const {
        return Count() * sizeof(typeElement);
    }
};

}
