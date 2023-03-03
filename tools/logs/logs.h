#pragma once

#ifdef __cplusplus
    extern "C" {
#endif
    #include "sl_component_catalog.h"
    #ifdef SL_CATALOG_APP_LOG_PRESENT
        #include "app_log.h"
    #endif
#ifdef __cplusplus
    }
#endif

enum class LogTypes {
    Crc = 0,
    Uart = 1,
    Memory = 0,
    Bluetooth = 1,
    BluetoothStack = 1,
    BluetoothConnection = 1,
};

// #undef APP_LOG_COLOR_BLACK
// #undef APP_LOG_COLOR_RED
// #undef APP_LOG_COLOR_GREEN
// #undef APP_LOG_COLOR_YELLOW
// #undef APP_LOG_COLOR_BLUE
// #undef APP_LOG_COLOR_MAGENTA
// #undef APP_LOG_COLOR_CYAN
// #undef APP_LOG_COLOR_WHITE
// #undef APP_LOG_COLOR_BRIGHT_BLACK
// #undef APP_LOG_COLOR_BRIGHT_RED
// #undef APP_LOG_COLOR_BRIGHT_GREEN
// #undef APP_LOG_COLOR_BRIGHT_YELLOW
// #undef APP_LOG_COLOR_BRIGHT_BLUE
// #undef APP_LOG_COLOR_BRIGHT_MAGENTA
// #undef APP_LOG_COLOR_BRIGHT_CYAN
// #undef APP_LOG_COLOR_BRIGHT_WHITE

// #undef APP_LOG_BACKGROUND_COLOR_NONE
// #undef APP_LOG_BACKGROUND_COLOR_BLACK
// #undef APP_LOG_BACKGROUND_COLOR_RED
// #undef APP_LOG_BACKGROUND_COLOR_GREEN
// #undef APP_LOG_BACKGROUND_COLOR_YELLOW
// #undef APP_LOG_BACKGROUND_COLOR_BLUE
// #undef APP_LOG_BACKGROUND_COLOR_MAGENTA
// #undef APP_LOG_BACKGROUND_COLOR_CYAN
// #undef APP_LOG_BACKGROUND_COLOR_WHITE
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_BLACK
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_RED
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_GREEN
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_YELLOW
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_BLUE
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_MAGENTA
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_CYAN
// #undef APP_LOG_BACKGROUND_COLOR_BRIGHT_WHITE

// #define APP_LOG_COLOR_BLACK "\\b"
// #define APP_LOG_COLOR_RED "\\R"
// #define APP_LOG_COLOR_GREEN "\\G"
// #define APP_LOG_COLOR_YELLOW "\\Y"
// #define APP_LOG_COLOR_BLUE "\\B"
// #define APP_LOG_COLOR_MAGENTA "\\t"
// #define APP_LOG_COLOR_CYAN "\\P"
// #define APP_LOG_COLOR_WHITE ""
// #define APP_LOG_COLOR_BRIGHT_BLACK ""
// #define APP_LOG_COLOR_BRIGHT_RED ""
// #define APP_LOG_COLOR_BRIGHT_GREEN ""
// #define APP_LOG_COLOR_BRIGHT_YELLOW ""
// #define APP_LOG_COLOR_BRIGHT_BLUE ""
// #define APP_LOG_COLOR_BRIGHT_MAGENTA ""
// #define APP_LOG_COLOR_BRIGHT_CYAN ""
// #define APP_LOG_COLOR_BRIGHT_WHITE ""

// #define APP_LOG_BACKGROUND_COLOR_NONE ""
// #define APP_LOG_BACKGROUND_COLOR_BLACK ""
// #define APP_LOG_BACKGROUND_COLOR_RED ""
// #define APP_LOG_BACKGROUND_COLOR_GREEN ""
// #define APP_LOG_BACKGROUND_COLOR_YELLOW ""
// #define APP_LOG_BACKGROUND_COLOR_BLUE ""
// #define APP_LOG_BACKGROUND_COLOR_MAGENTA ""
// #define APP_LOG_BACKGROUND_COLOR_CYAN ""
// #define APP_LOG_BACKGROUND_COLOR_WHITE ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_BLACK ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_RED ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_GREEN ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_YELLOW ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_BLUE ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_MAGENTA ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_CYAN ""
// #define APP_LOG_BACKGROUND_COLOR_BRIGHT_WHITE ""

#ifdef SL_CATALOG_APP_LOG_PRESENT

#define LogEnabled

#define Log(type, ...)                              \
    do {                                            \
        if (static_cast<bool>(type))                \
            app_log(__VA_ARGS__);                   \
    } while(0)

#define LogCR(type, ...)                            \
    do {                                            \
        if (static_cast<bool>(type)) {              \
            app_log(__VA_ARGS__);                   \
            app_log_nl();                           \
        }                                           \
    } while(0)

void LogDataBytes(const LogTypes type,
                  uint8_t const *data,
                  size_t count,
                  const uint8_t lineSize,
                  char const *const prefix,
                  char const *const color);
#else

#define Log(type, ...)
#define LogCR(type, ...)
#define LogDataBytes(a,b,c,d,e,f)

#endif
