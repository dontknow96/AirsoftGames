#pragma once

#include <data.h>
#include "callback_handler/VoltageCallbackHandler.h"
#include "callback_handler/AirsoftBLEServerCallbacks.h"
#include "callback_handler/TimeCallbackHandler.h"


#include "Arduino.h"
#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>

#define SERVICE_UUID        "c78d5074-2262-4412-bd9a-c1a3a7ecb113"

#define VOLTAGE_CHARACTERISTIC_UUID "ef2c75fa-f3a9-4b17-bc58-5a8fad810949"
#define VOLTAGE_DESCRIPTOR_UUID "6c35179f-037c-4a80-af62-be8b3af3dff5"

#define TIME_CHARACTERISTIC_UUID "8888e505-5baf-4532-b956-e8c7f4c80977"
#define TIME_DESCRIPTOR_UUID "fcf91bc2-01f2-4398-83cd-86b42fe1a112"

class AirsoftBLEService{
private:
    Data* data = NULL;

    BLEServer* pServer = NULL;
    BLEService *pService = NULL;
    AirsoftBLEServerCallbacks* airsoftBLEServerCallbacks = NULL;
    BLEAdvertising* pAdvertising = NULL;

    BLECharacteristic* pVoltageCharacteristic = NULL;
    BLEDescriptor *pVoltageDescr = NULL;
    VoltageCallbackHandler* voltageCallbackHandler = NULL;


    BLECharacteristic* pTimeCharacteristic = NULL;
    BLEDescriptor *pTimeDescr = NULL;
    TimeCallbackHandler* timeCallbackHandler = NULL;

public:
    AirsoftBLEService(std::string name, Data* data);

    void restartAdvertising();
};