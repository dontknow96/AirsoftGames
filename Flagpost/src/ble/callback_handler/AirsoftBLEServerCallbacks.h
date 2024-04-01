#pragma once

#include <data.h>

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>

class AirsoftBLEServerCallbacks: public BLEServerCallbacks{
private:
    Data* data = NULL;
    
public:
    AirsoftBLEServerCallbacks(Data* data);

    void onConnect(BLEServer* pServer);
    void onDisconnect(BLEServer* pServer);
};