#pragma once
#include "interfaces/i_data_exchange.h"

class Ds18b20 {
public:
    Ds18b20(IDataExchange &iface) : _iface(iface) {

    }
private:
    IDataExchange &_iface;
};
