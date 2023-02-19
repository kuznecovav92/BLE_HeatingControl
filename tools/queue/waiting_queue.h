#pragma once
#include <stdint.h>
#include "os/os_counter_semaphore.h"
#include "tools/memory/fifo.h"
#include "os/os_critical_section.h"
#include "tools/function.h"

namespace tools {

template <class typeElement>
class IQueuePusher {
public:
    using typeUniquePtr = std::unique_ptr<typeElement, Function<typeElement *>>;
    enum class Result {
        Success,
        Error
    };

    /**
     * @brief Запушить обект уникального указателя
     * @param element Обект уникального указателя
     * @return Результат выполнения операции
     */
    virtual Result Push(typeUniquePtr &&element) = 0;
};

/**
 * @brief Класс описывает "ожидающую" очередь, в которой можно хранить разлиные типы данных.
 *  Если очередь заполнена, то при попытке записи будет выдана ошибка
 * @tparam typeElement Тип элемента очереди
 * @tparam typeCounter Тип счетчик очереди
 * @tparam size Максимальное колличество элементов в очереди
 */
template <class typeElement, class typeCounter, size_t size>
class WaitingQueue : public IQueuePusher<typeElement>,
                     private Fifo<size, std::unique_ptr<typeElement, Function<typeElement *>>, typeCounter> {
public:
	using typeQueuePusher = IQueuePusher<typeElement>;
    using typeFifo = Fifo<size, typename typeQueuePusher::typeUniquePtr, typeCounter>;
    WaitingQueue() : typeFifo() {}

    /**
     * @brief Поместить элемент в очередь 
     * @param element Ссылка на r-value объекта помещаемого объекта 
     * @return Результат выполнения операции
     */
    typename typeQueuePusher::Result Push(typename typeQueuePusher::typeUniquePtr&& element) override {
        {
            os::CriticalSection criticalSection;
            if (typeFifo::PushBack(std::move(element)) != typeFifo::Result::Success) {
                return typeQueuePusher::Result::Error;
            }
        }
        _semaphore.Post();
        return typeQueuePusher::Result::Success;
    }

    /**
     * @brief Взять элемент из очереди
     * @param timeout Время ожидания данных в очереди в милисекундах
     * @return Умный указатель на элемент очереди
     */
    typename typeQueuePusher::typeUniquePtr Take(ms_t timeout = ms_t(0)) {
        typename typeQueuePusher::typeUniquePtr element = nullptr;
        if (_semaphore.Pend(timeout) != os::CounterSemaphore::Result::Success) {
            return element;
        }
        os::CriticalSection criticalSection;
        if (typeFifo::IsEmpty())
            return element;
        element = std::move(typeFifo::_buffer[typeFifo::_startIndex]);
        if (typeFifo::_startIndex == size - 1)
        	typeFifo::_startIndex = 0;
        else
            ++typeFifo::_startIndex;

        --typeFifo::_count;
        return element;
    }

    /**
     * @brief Получить количество элементов, хранящихся в очереди
     * @return Количество элементов, хранящихся в очереди
     */
    size_t Count() const {
        return typeFifo::_count;
    }

private:
    os::CounterSemaphore _semaphore;
};
}
