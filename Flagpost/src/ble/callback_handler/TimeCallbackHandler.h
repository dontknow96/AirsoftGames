#pragma once

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>
#include "Arduino.h"

class TimeCallbackHandler: public BLECharacteristicCallbacks{
private:

public:
	virtual void onRead(BLECharacteristic* pCharacteristic);
	virtual void onWrite(BLECharacteristic* pCharacteristic);
};
