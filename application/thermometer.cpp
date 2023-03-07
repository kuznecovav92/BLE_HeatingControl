#include "thermometer.h"

void Thermometer::TimerMesurementCallBack(void* object) {
	LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_MAGENTA"TimerCallBack");
    Thermometer &instance = *static_cast<Thermometer *>(object);
    instance.Step();
}

void Thermometer::TimerIndicationCallBack(void* object) {
	LogCR(LogTypes::BluetoothStack, APP_LOG_COLOR_MAGENTA"TimerCallBack");
    Thermometer &instance = *static_cast<Thermometer *>(object);
    instance.Indication();
}

void Thermometer::Step() {
    
}

void Indication() {
    
}
