#pragma once
#include "led.h"
#include "os/os_timer.h"

/**
 * @brief Класс описывает возможность управления двумя светодиодами для индикации передачи данных
 * по интерфесу. Светодиоды будут мигать на заданный промежуток времени
 */
class LedBlinkTxRx {
public:
	LedBlinkTxRx(Led &ledTx,
				 Led &ledRx,
				 ms_t timeout) : _ledTx(ledTx),
								 _ledRx(ledRx),
								 _timer(this,
										TimerLedCallback,
										timeout,
										os::Timer::Type::OneShot) {
		_ledTx.Off();
		_ledRx.Off();
	}
	/**
	 * @brief Мигнуть светодиодом tx
	 */
	void BlinkTx() {
		_ledTx.On();
		_timer.Start();
	}
	/**
	 * @brief Мигнуть светодиодом rx
	 */
	void BlinkRx() {
		_ledRx.On();
		_timer.Start();
	}
private:
	Led &_ledTx;
	Led &_ledRx;
	os::Timer _timer;
    static void TimerLedCallback(void *object) {
		if (object == nullptr)
			return;
		auto instance = *reinterpret_cast<LedBlinkTxRx *>(object);
		instance._ledTx.Off();
		instance._ledRx.Off();
	}
};