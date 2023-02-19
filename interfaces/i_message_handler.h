#pragma once
#include "tools/memory/buffer_types.h"

class IMassageHandler {
public:
    /**
     * @brief Обработать кадр
     * @param inBuffer Ссылка на буфер, в котором хранится кадр
     * @return Умный указатель на буфер с декадированным кадром
     */
    virtual tools::typeUniqueBuffer MessageHandle(tools::typeUniqueBuffer inBuffer) = 0;
private:
//    ~IMassageHandler() {};
};
