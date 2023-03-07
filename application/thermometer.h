#pragma once
#include "os/os_timer.h"

class Thermometer {
public:
    Thermometer() : _timerMesurement(this,
                                     &TimerMesurementCallBack,
                                     1_s,
                                     os::Timer::Type::Periodic),
                    _timerIndication(this,
                                     &TimerIndicationCallBack,
                                     1_s,
                                     os::Timer::Type::Periodic) {
        _mesurementValue = 0;
        _timerMesurement.Start();
    }

private:
    os::Timer _timerMesurement; /* Таймер измерения показаний датчика и управления насосом */
    os::Timer _timerIndication; /* Таймер индикации измереннух значений */
    float _mesurementValue; /* Измеренное значение температуры */
    /**
     * @brief Callback, вызываемый для периодической индикации измеренных
     * значений подключенным Bluetooth устройствам
     * @param object Указатель на объект
     */
    static void TimerMesurementCallBack(void *object);
    /**
     * @brief Callback, вызываемый для периодической индикации измеренных
     * значений подключенным Bluetooth устройствам
     * @param object Указатель на объект
     */
    static void TimerIndicationCallBack(void *object);
    /**
     * @brief Шаг работы драйвера измеритетля
     */
    void Step();
    /**
     * @brief Индикация подписчику измеренного значения
     */
    void Indication();
};