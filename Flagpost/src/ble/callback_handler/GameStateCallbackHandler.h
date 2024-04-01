#pragma once

#include "GameController.h"
#include "helper.h"
#include <Data.h>

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>
#include "Arduino.h"

class GameStateCallbackHandler: public BLECharacteristicCallbacks{
private:
	Data* data = NULL;
	GameController* controller = NULL;

public:
	virtual void onRead(BLECharacteristic* pCharacteristic);
	virtual void onWrite(BLECharacteristic* pCharacteristic);

	GameStateCallbackHandler(Data* data, GameController* controller);
};
