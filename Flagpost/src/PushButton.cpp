#include "PushButton.h"

void PushButton::loop(){
    unsigned long time = millis();
    long long timeDiff = std::abs((long long)(time - this->lastUnacceptedChangeTime) );
    

    //did time change?
    if(timeDiff > TIME_CHANGE_INTERVAL){
        this->lastUnacceptedChangeTime = time;

        this->acceptedState = digitalRead(this->gpio);
        this->unacceptedState = this->acceptedState;

        if(data != NULL)
            *data = !this->acceptedState;

        return;
    }

    //check for change
    bool measurement = digitalRead(this->gpio);
    
    if(this->unacceptedState != measurement){
        this->unacceptedState = measurement;
        this->lastUnacceptedChangeTime = time;

        return;
    }

    if(this->unacceptedState != this->acceptedState && timeDiff >= CHANGE_ACCEPT_INTERVAL){
        this->lastUnacceptedChangeTime = time;

        this->acceptedState = measurement;
        if(data != NULL)
            *data = !measurement;
    }
}

bool PushButton::isPressed(){
    return !this->acceptedState;//return inverted because pullup
}

PushButton::PushButton(u_int8_t gpio, bool* data){
    this->gpio = gpio;
    this->data = data;

    pinMode(this->gpio, INPUT_PULLUP);

    this->lastUnacceptedChangeTime = millis();

    this->acceptedState = digitalRead(gpio);
    this->unacceptedState = this->acceptedState;

    
    if(data != NULL)
        *data = !this->acceptedState;
}