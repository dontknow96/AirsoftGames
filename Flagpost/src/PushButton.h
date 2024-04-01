#pragma once

#include "Arduino.h"

#define CHANGE_ACCEPT_INTERVAL 50
#define TIME_CHANGE_INTERVAL 1000*60*60*24

class PushButton
{
private:
    u_int8_t gpio;
    unsigned long lastUnacceptedChangeTime;
    bool acceptedState;
    bool unacceptedState;

    bool* data;

public:
    void loop();
    bool isPressed();
    PushButton(u_int8_t gpio, bool* data);
};
