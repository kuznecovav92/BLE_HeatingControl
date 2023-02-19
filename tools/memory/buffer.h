#pragma once

#include <stdint.h>
#include <stddef.h>
#include "fifo.h"

namespace tools {

/**
 * @brief Описывает буфер, в который можно записывать данные не зацикливаясь(т.е. это не круговой буфер)
 * @tparam size Количество элементов типа typeCounter
 * @tparam typeCounter Тип счетчика элементов
 */
template<size_t size, class typeCounter = uint16_t>
class Buffer : public Fifo<size - 3, uint8_t, typeCounter, 20> {
public:
    using typeElement = uint8_t; /* Имеет смысл только для байтого FIFO */
    using typeFifo = Fifo<size - 3, typeElement, typeCounter, 20>;
    Buffer() : typeFifo() {}

public:
    typedef enum {
        Success,
        Overflow,
        Empty,
        ErrorFatal,
        Nullptr,
        ExitAbroad,
    } Result;
    /**
     * \brief Поместить массив данных в конец уже имеющихся в буфере данных
     * \param data Указатель на массив с данными
     * \param count Количество байт данных
     * \return Результат выполнения операции
     */
    Result PushBack(typeElement const *const data, size_t count) {
        if (data == nullptr) return Nullptr;
        if ((typeFifo::Size() - typeFifo::Count()) < count)
            return Overflow;
        if (count <= (typeFifo::Size() - typeFifo::_endIndex)) {
            /* В конце хватает места */
            memcpy(typeFifo::_buffer + typeFifo::_endIndex, data, count);
            typeFifo::_endIndex += count;
            typeFifo::_count += count;
        } else {
            /* Сместить уже имеющиеся данные в буфере. При возможности  сместить на середину,
             * чтобы оставить место для добавления данных как в начало так и в конец
             */
            typeCounter newStartIndex = (typeFifo::Size() - typeFifo::Count() - count) / 2;
            memmove(typeFifo::_buffer + newStartIndex,
                    typeFifo::_buffer + typeFifo::_startIndex,
                    typeFifo::Count());
            typeFifo::_startIndex = newStartIndex;
            typeFifo::_endIndex = newStartIndex + typeFifo::_count;
            memcpy(typeFifo::_buffer + typeFifo::_endIndex, data, count);
            typeFifo::_count += count;
            typeFifo::_endIndex += count;
        }
        return Success;
    }
    /**
     * \brief Поместить массив данных в начало уже имеющихся в буфере данных
     * \param data Указатель на массив с данными
     * \param count Количество байт данных
     * \return Результат выполнения операции
     */
    Result PushFront(typeElement const *const data, size_t count) {
        if (data == nullptr) return Nullptr;
        if ((typeFifo::Size() - typeFifo::Count()) < count)
            return Overflow;
        if (count <= typeFifo::_startIndex) {
            /* В начале хватает места */
            typeFifo::_startIndex -= count;
            memcpy(typeFifo::_buffer + typeFifo::_startIndex, data, count);
            typeFifo::_count += count;
        } else {
            /* Сместить уже имеющиеся данные в буфере. При возможности  сместить на середину,
             * чтобы оставить место для добавления данных как в начало так и в конец
             */
            typeCounter newStartIndex = (typeFifo::Size() - typeFifo::Count() - count) / 2;
            memmove(typeFifo::_buffer + newStartIndex + count,
                    typeFifo::_buffer + typeFifo::_startIndex,
                    typeFifo::Count());
            typeFifo::_startIndex = newStartIndex;
            memcpy(typeFifo::_buffer + newStartIndex, data, count);
            typeFifo::_count += count;
            typeFifo::_endIndex = newStartIndex + typeFifo::_count;
        }
        return Success;
    }
    /**
     * \brief Поместить данные в конец уже имеющихся в буфере данных
     * \tparam typeData Тип данных, которые будут добавляться в буфер
     * \param data Ссылка объект с данными
     * \return Результат выполнения операции
     */
    template<typename typeData>
    Result PushBack(const typeData& data) {
        return PushBack((typeElement*)&data, sizeof(typeData));
    }
    /**
     * \brief Поместить данные в начало уже имеющихся в буфере данных
     * \tparam typeData Тип данных, которые будут добавляться в буфер
     * \param data Ссылка объект с данными
     * \return Результат выполнения операции
     */
    template<typename typeData>
    Result PushFront(const typeData& data) {
        return PushFront((typeElement*)&data, sizeof(typeData));
    }
    /**
     * \brief Получить данные из конца буфера
     * \param data Указатель на данные
     * \param count Количество данных
     * \return Результат выполнения операции
     */
    Result TakeBack(typeElement *data, size_t count) {
        if (data == nullptr) return Nullptr;
        if (typeFifo::SizeBytes() < count)
            return Empty;
        typeFifo::_endIndex -= count;
        memcpy(data, typeFifo::_buffer + typeFifo::_endIndex, count);
        typeFifo::_count -= count;
        return Success;
    }
    /**
     * \brief Взять данные из фактического конца буфера
     * \tparam typeData Тип данных, которые будут извлекаться из буфера
     * \param data Ссылка на объект, в который будет выполняться извлечение данных
     * \return Результат выполнения операции
     */
    template<typename typeData>
    Result TakeBack(typeData& data) {
        return TakeBack((typeElement*)&data, sizeof(typeData));
    }
    /**
     * \brief Взять массив данных из фактического начала буфера
     * \param data Указатель на массив, в который требуется поместить данные
     * \param count Количество байт данных
     * \return Результат выполнения операции
     */
    Result TakeFront(typeElement *data, size_t count) {
        if (data == nullptr) return Nullptr;
        if (typeFifo::Count() < count) return Empty;
        memcpy(data, typeFifo::_buffer + typeFifo::_startIndex, count);
        typeFifo::_startIndex += count;
        typeFifo::_count -= count;
        return Success;
    }
    /**
     * \brief Взять данные из фактического начала буфера
     * \tparam typeData Тип данных, которые будут извлекаться из буфера
     * \param data Ссылка на объект, в который будет выполняться извлечение данных
     * \return Результат выполнения операции
     */
    template<typename typeData>
    Result TakeFront(typeData& data) {
        return TakeFront((typeElement*)&data, sizeof(typeData));
    }
	/**
     * \brief Взять данные из фактического начала буфера
     * \tparam typeData Тип данных, которые будут извлекаться из буфера
     * \return Объект, содержащий извлеченые данные
     */
    template<typename typeData>
    typeData TakeFront() {
        typeData data = 0;
        TakeFront((typeElement*)&data, sizeof(typeData));
        return data;
    }
    /**
     * \brief Получить указатель на массив с данными буфера
     * \return Указатель на массив с данными буфера
     */
    typeElement* PointerDataGet() {
        return &typeFifo::_buffer[typeFifo::_startIndex];
    }
    /**
     * \brief Поместить данные по индексу к имеющимся уже данным, которые будут не удаляться,
     * а как бы раздвигаться
     * \tparam typeData Тип данных, которые будут добавляться в буфер
     * \param index Индекс, с которого будут начинаться data(считая что данные всегда начинаются с нудевого индекса)
     * \param data Ссылка объект с данными
     * \return Результат выполнения операции
     */
    template<typename typeData>
    Result Push(typeCounter index, const typeData& data) {
        if (index > (typeFifo::Count() - 1)) return ExitAbroad;
        if((typeFifo::Size() - typeFifo::Count()) < sizeof(typeData))
            return Overflow;
        if (sizeof(typeData) <= typeFifo::_startIndex) {
            /* В начале хватает места */
            memmove(typeFifo::_buffer + typeFifo::_startIndex - sizeof(typeData),
                    typeFifo::_buffer + typeFifo::_startIndex,
                    index);
            memcpy(typeFifo::_buffer + typeFifo::_startIndex + index - sizeof(typeData),
                   &data,
                   sizeof(typeData));
            typeFifo::_startIndex -= sizeof(typeData);
            typeFifo::_count += sizeof(typeData);
        } else if (sizeof(typeData) <= (typeFifo::Size() - typeFifo::_endIndex)) {
            /* В конце хватает места */
            index += typeFifo::_startIndex;
            memmove(typeFifo::_buffer + index + sizeof(typeData),
                    typeFifo::_buffer + index,
                    typeFifo::_endIndex - index);
            memcpy(typeFifo::_buffer + index, &data, sizeof(typeData));
            typeFifo::_endIndex += sizeof(typeData);
            typeFifo::_count += sizeof(typeData);
        } else {
            /* Переместить весь буфер так как отдельно в начале или в конце места не хватает */
            typeCounter newStartIndex = (typeFifo::Size() - typeFifo::Count() - sizeof(typeData)) / 2;
            /* Переместить левую часть данных */
            memmove(typeFifo::_buffer + newStartIndex,
                    typeFifo::_buffer + typeFifo::_startIndex,
                    index);
            /* Переместить правую часть данных */
            memmove(typeFifo::_buffer + newStartIndex + index + sizeof(typeData),
                    typeFifo::_buffer + typeFifo::_startIndex + index,
                    typeFifo::_endIndex - typeFifo::_startIndex - index);
            typeFifo::_startIndex = newStartIndex;
            memcpy(typeFifo::_buffer + newStartIndex + index, &data, sizeof(typeData));
            typeFifo::_count += sizeof(typeData);
            typeFifo::_endIndex = newStartIndex + typeFifo::_count;
        }
        return Result::Success;
    }
    /**
     * \brief Удалить данные из фактического начала буфера
     * \param count Количество байт данных
     * \return Результат выполнения операции
     */
    Result DeleteFront(size_t count)  {
        if (typeFifo::Count() < count)
            return Empty;
        typeFifo::_startIndex += count;
        typeFifo::_count -= count;
        return Success;
    }

private:
    friend class Slip;
};

}
