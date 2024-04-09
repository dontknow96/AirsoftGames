#pragma once

#include <data.h>
#include "callback_handler/VoltageCallbackHandler.h"
#include "callback_handler/AirsoftBLEServerCallbacks.h"
#include "callback_handler/TimeCallbackHandler.h"
#include "callback_handler/GameSettingsCallbackHandler.h"
#include "callback_handler/DeviceSettingsCallbackHandler.h"
#include "callback_handler/GameStateCallbackHandler.h"


#include "Arduino.h"
#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>

#define SERVICE_UUID        "c78d5074-2262-4412-bd9a-c1a3a7ecb113"

#define VOLTAGE_CHARACTERISTIC_UUID "ef2c75fa-f3a9-4b17-bc58-5a8fad810949"
#define TIME_CHARACTERISTIC_UUID "8888e505-5baf-4532-b956-e8c7f4c80977"
#define DEVICE_SETTINGS_CHARACTERISTIC_UUID "456187e9-0f31-4b57-a8d2-9ae271f469ed"
#define GAME_SETTINGS_CHARACTERISTIC_UUID "2a9faa1a-717c-417a-9c8b-4b117ad3a93f"
#define GAME_STATE_CHARACTERISTIC_UUID "b7b2c1ec-9ddc-4a59-923a-525a4ebb7379"

class AirsoftBLEService{
private:
    unsigned long lastBleAdvertisement = 0;
    Data* data = NULL;
    GameController* controller = NULL;

    BLEServer* pServer = NULL;
    BLEService *pService = NULL;
    AirsoftBLEServerCallbacks* airsoftBLEServerCallbacks = NULL;
    BLEAdvertising* pAdvertising = NULL;

    BLECharacteristic* pVoltageCharacteristic = NULL;
    VoltageCallbackHandler* voltageCallbackHandler = NULL;

    BLECharacteristic* pTimeCharacteristic = NULL;
    TimeCallbackHandler* timeCallbackHandler = NULL;

    BLECharacteristic* pGameSettingsCharacteristic = NULL;
    GameSettingsCallbackHandler* gameSettingsCallbackHandler = NULL;

    BLECharacteristic* pDeviceSettingsCharacteristic = NULL;
    DeviceSettingsCallbackHandler* deviceSettingsCallbackHandler = NULL;

    BLECharacteristic* pGameStateCharacteristic = NULL;
    GameStateCallbackHandler* gameStateCallbackHandler = NULL;

public:
    AirsoftBLEService(std::string name, Data* data, GameController* controller);

    void loop();
};