#pragma once

#include "waiting_queue.h"

using typeQueuePusher = tools::IQueuePusher<tools::typeBuffer>;
using typeWaitingQueue = tools::WaitingQueue<tools::typeBuffer, uint8_t, 10>;
