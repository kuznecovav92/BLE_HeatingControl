#pragma once

#include <stdint.h>
#include <stddef.h>

class Crc16 {
public:
	static void Init();
	/**
	 * @brief Получить контрольную сумму c полиномом 0x1021 и начальным значением
	 * для массива данных
	 * @param data Указатель на массив с данными
	 * @param count Количество байт данных
	 * @param initValue Начальное значение CRC
	 * @return Рассчитанное значение контрольной суммы
	 */
	static uint16_t Get(uint8_t const* data, size_t count, uint32_t initValue);

	/**
	 * @brief Получить контрольную сумму c полиномом 0x1021 для массива данных
	 * @param data Указатель на массив с данными
	 * @param count Количество байт данных
	 * @return Рассчитанное значение контрольной суммы
	 */
	static uint16_t Get(uint8_t const* data, size_t count) {
		return Get(data, count, ~0);
	}
};