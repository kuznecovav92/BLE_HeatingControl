#pragma once

#include <bits/unique_ptr.h>
#include "buffer_hard_init.h"
#include "tools/function.h"

namespace tools {

using typeBuffer = Buffer<256>;
using typeUniqueBuffer = std::unique_ptr<typeBuffer, Function<typeBuffer *>>;

using typeBufferHardInit = BufferHardInit<256>;
using typeUniqueBufferHardInit = std::unique_ptr<typeBufferHardInit, Function<typeBufferHardInit *>>;

}
