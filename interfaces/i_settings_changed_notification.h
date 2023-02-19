#pragma once

class ISettingsChangedNotification {
public:
    /**
     * \brief Оповестить подписчика
     */
    virtual void SettingsChangedNotify() = 0;
};
