#pragma once

#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
	#include "uartdrv.h"
#ifdef __cplusplus
}
#endif
#include "interfaces/i_data_exchange.h"
#include "tools/memory/buffer_types.h"
#include "tools/queue/queue_types.h"
#include "os/os_critical_section.h"
#include "os/os_mutex.h"
#include "tools/types.h"
#include "os/os_timer.h"
#include "tools/memory/array.h"

class Uart : public IDataExchange {
public:
	using typeTransmiteCallback = void (&)(struct UARTDRV_HandleData *handle,
										   Ecode_t transferStatus,
										   uint8_t *data,
										   UARTDRV_Count_t transferCount);
	/**
	 * @brief Construct a new Uart object
	 * @param irqNumber Номер прерывания для модуля Uart
	 * @param transmiteCallback Callback, который вызывается по окончании передачи
	 */
	Uart(const IRQn irqNumber,
		 typeTransmiteCallback transmiteCallback) : _irqNumber(irqNumber),
													_transmiteCallback(transmiteCallback)
#ifdef OS_TIMER_ENABLED
													,_baudRateSetPostponeRequestTimer(this,
																					 BaudRatePostponeTimerCallback,
																					 1_s,
																					 os::Timer::Type::OneShot)
#endif
	{
		_queuePusher = nullptr;
#ifdef OS_TIMER_ENABLED
		_baudRateDesired = 0;
#endif
	}

	/**
	 * @brief Выполнить инициализацию
	 * @param config Конфигурация аппаратной части модуля UART
	 * @return Result Результат выполнения операции
	 */
	Result Init(const UARTDRV_InitUart_t& config);

	/**
	 * @brief Установить скорость интерфейса
	 * @param value Желаемое значение
	 */
	void BaudRateSet(size_t value) override;

	/**
	 * @brief Обработчик аппаратного прерывания
	 */
	void RxInterruptHandler();

	/**
	 * @brief Отправить данные
	 * @param buffer Буффер, в котором находятся данные для отправки 
	 * @return Результат выполнения отперации
	 */
	Result WriteThreadSafety(tools::typeUniqueBuffer buffer) override;

	/**
	 * \brief UARTDRV transfer completion callback function. Called when a
	 * transfer is complete. An application should check the transferStatus and
	 * itemsTransferred values.
	 * \param handle The UARTDRV device handle used to start the transfer.
	 * \param transferStatus Completion status of the transfer operation.
	 * \param data A pointer to the transfer data buffer.
	 * \param transferCount A number of bytes transferred.
	 */
	void TransmiteCallback(Uart &uart,
						   struct UARTDRV_HandleData *handle,
						   Ecode_t transferStatus,
						   uint8_t *data,
						   UARTDRV_Count_t transferCount);

	/**
	 * \brief Проинициализировать нотификатор
	 * \param notifyOfRxDataReady Ссылка на нотификатор
	 */
	void QueuePusherInit(tools::typeQueuePusher &queuePusher) override {
		_queuePusher = &queuePusher;
	}

	/**
	 * @brief Выполнить установку скорости интерфейса с задержкой
	 * @param value Желаемое значение скорости
	 * @param timeout Задержка в мс
	 */
#ifdef OS_TIMER_ENABLED
	void BaudRateSetPostpone(uint32_t value, ms_t timeout) override;
#endif
private:
	using typeBufferTxQueue = tools::ArrayOfUniqueBuffer<4>;
	typeBufferTxQueue _bufferTxQueue; /* Очередь из буферов, откуда DMA берет данные */
	tools::typeUniqueBufferHardInit _bufferRx = nullptr; /* Текущий приемный буфер, куда сохраняет данные DMA */
	UARTDRV_HandleData_t _handle;
	const IRQn _irqNumber;
	typeTransmiteCallback _transmiteCallback; /* Указатель на callback, который вызывается по завершении передачи */
	tools::typeQueuePusher* _queuePusher;
	os::Mutex _mutex;
#ifdef OS_TIMER_ENABLED
	uint32_t _baudRateDesired;
	os::Timer _baudRateSetPostponeRequestTimer;
	/**
	 * @brief Вызывается после истечения таймаута запроса отложенного изменения скорости
	 */
	static void BaudRatePostponeTimerCallback(void *object);
#endif
};
