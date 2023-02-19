#pragma once

#ifdef __cplusplus
extern "C" {
#endif
#include "em_core.h"
#ifdef __cplusplus
}
#endif
#include "tools/interrupt.h"

namespace os {
/**
 * \brief Размер критической сессии равен времени жизни объекта
 *
 * Пример 1:
 * \code
 * void foo() {
 *     int x = 0;
 *     x++;
 *     CriticalSection criticalSection; // Начало критической секции
 *     y = x;
 *     x+=2;
 * } // Завершение критической секции
 * \endcode
 * Пример 2:
 * \code
 * void foo() {
 *     int x = 0;
 *     x++;
 *     {
 *         CriticalSection criticalSection; // Начало критической секции
 *         y = x;
 *     } // Завершение критической секции
 *     x+=2;
 * }
 * \endcode
 */
class CriticalSection {
public:
	CriticalSection() {
		if (!tools::Interrupt::Instance().IsIsr())
			CORE_ENTER_CRITICAL();
	}
	~CriticalSection() {
		if (!tools::Interrupt::Instance().IsIsr())
			CORE_EXIT_CRITICAL();
	}
private:
	CORE_DECLARE_IRQ_STATE;
};

}
