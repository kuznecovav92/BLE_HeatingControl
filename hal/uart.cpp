#include "uart.h"
#include "em_usart.h"
#include "tools/memory/memory.h"
#include "tools/queue/queue_types.h"
#include "tools/logs/logs.h"
#include "os/os_functions.h"
#include "sl_bt_api.h"

Uart::Result Uart::Init(const UARTDRV_InitUart_t& config) {
	LogCR(LogTypes::Uart, APP_LOG_COLOR_WHITE "Uart::Init : ");
	_bufferRx = tools::Memory::Allocate<tools::typeBufferHardInit>();
	if(_bufferRx == nullptr) {
		LogCR(LogTypes::Uart, APP_LOG_BACKGROUND_COLOR_RED"error buffer allocate");
		return Result::Error;
	}

	Ecode_t error = UARTDRV_InitUart(&_handle, &config);
	if (error != ECODE_EMDRV_UARTDRV_OK) {
	    LogCR(LogTypes::Uart, APP_LOG_BACKGROUND_COLOR_RED"UARTDRV_InitUart result = 0x%X", (unsigned int)error);
	    return Result::Error;
	}
	USART_Enable(config.port, usartDisable);
	config.port->TIMECMP1 = USART_TIMECMP1_TSTOP_RXACT | USART_TIMECMP1_TSTART_RXEOF | 200;
	USART_IntClear(config.port, USART_IF_TCMP1);
	NVIC_ClearPendingIRQ(_irqNumber);

	error = UARTDRV_Abort(&_handle, uartdrvAbortReceive);
	if (error != ECODE_EMDRV_UARTDRV_OK && error != ECODE_EMDRV_UARTDRV_IDLE) {
	    LogCR(LogTypes::Uart, APP_LOG_BACKGROUND_COLOR_RED"UARTDRV_Abort result = 0x%X", (unsigned int)error);
	    return Result::Error;
	}
	USART_IntEnable(config.port, USART_IEN_TCMP1);
	NVIC_EnableIRQ(_irqNumber);
	USART_Enable(config.port, usartEnable);
#ifdef OS_TIMER_ENABLED
	_baudRateDesired = config.baudRate;
#endif
	/* Запустить новую транзакцию */
	if (UARTDRV_Receive(&_handle,
						_bufferRx->PointerDataGet(),
						_bufferRx->Free(),
						NULL) != ECODE_EMDRV_UARTDRV_OK) {
	    LogCR(LogTypes::Uart, APP_LOG_BACKGROUND_COLOR_RED"UARTDRV_Receive result = 0x%X", (unsigned int)error);
	    return Result::Error;
	}
	return Result::Success;
}

void Uart::BaudRateSet(size_t value) {
	while (!(_handle.peripheral.uart->STATUS & UARTDRV_STATUS_TXC)) {
		os::SleepFor(1_ms);
	}
	os::CriticalSection criticalSection;
	USART_BaudrateAsyncSet(_handle.peripheral.uart, 0, value, usartOVS16);
}

void Uart::RxInterruptHandler() {
	if (USART_IntGet(_handle.peripheral.uart) & USART_IF_TCMP1) {
		USART_IntClear(_handle.peripheral.uart, USART_IF_TCMP1);

		/* Сохранить уже принятые данные */
		UARTDRV_Count_t itemsReceived;
		UARTDRV_Count_t itemsRemaining;
		uint8_t *buffer;
		UARTDRV_GetReceiveStatus(
			&_handle,
			&buffer,
			&itemsReceived,
			&itemsRemaining);
		if (buffer == NULL) {
			return;
		}
		/* По факту данные в массиве буфера уже лежат. Нужно только привести в
		 * соответствие остальные переменные */
		_bufferRx->HardInit(itemsReceived);
		UARTDRV_Abort(&_handle, uartdrvAbortReceive);
		/* Отдать кадр в задачу */
		if (_queuePusher != nullptr)
			_queuePusher->Push({_bufferRx.release(), &tools::Memory::Deallocate});

		if (_bufferRx == nullptr) {
			_bufferRx = tools::Memory::Allocate<tools::typeBufferHardInit>();

			if(_bufferRx == nullptr) {
				sl_bt_system_reset(sl_bt_system_boot_mode_normal);
			}
		}

		/* Запустить новую транзакцию */
		UARTDRV_Receive(&_handle,
						_bufferRx->PointerDataGet() + _bufferRx->Count(),
						_bufferRx->Free() - _bufferRx->Count(),
						NULL);
	}
}

void Uart::TransmiteCallback(Uart &uart,
							 struct UARTDRV_HandleData *handle,
							 Ecode_t transferStatus,
							 uint8_t *data,
							 UARTDRV_Count_t transferCount) {
  (void)handle;
  (void)transferStatus;
  (void)transferCount;
	tools::Interrupt::Instance().IsrEnter();
	uart._bufferTxQueue.Take(data);
	tools::Interrupt::Instance().IsrExit();
}

Uart::Result Uart::WriteThreadSafety(tools::typeUniqueBuffer buffer) {
	if(_mutex.Pend(100_ms) != os::Mutex::Result::Success)
		return Result::Busy;


	auto *ptr = buffer.get(); /* Life huck */
	if (_bufferTxQueue.Push(std::move(buffer)) != typeBufferTxQueue::typeArray::Result::Success) {
		_mutex.Post();
		return Result::Busy;
	}
	Ecode_t result = UARTDRV_Transmit(&_handle,
									  ptr->PointerDataGet(),
									  ptr->Count(),
									  _transmiteCallback);
	if (result != ECODE_EMDRV_UARTDRV_OK) {
		LogCR(LogTypes::Uart, APP_LOG_COLOR_RED" result = 0x%X", (unsigned int)result);
		_bufferTxQueue.Take(ptr->PointerDataGet());
		_mutex.Post();
		return Result::ErrorTransmit;
	}
	_mutex.Post();
	return Result::Success;
};

#ifdef OS_TIMER_ENABLED
void Uart::BaudRateSetPostpone(uint32_t value, ms_t timeout) {
	_baudRateDesired = value;
	_baudRateSetPostponeRequestTimer.TimeSet(timeout);
	_baudRateSetPostponeRequestTimer.Start();
}

void Uart::BaudRatePostponeTimerCallback(void *object) {
	app_assert(object, "Uart::BaudRatePostponeTimerCallback argument object is null");
	Uart &instance = *static_cast<Uart *>(object);
	instance.BaudRateSet(instance._baudRateDesired);
}
#endif
