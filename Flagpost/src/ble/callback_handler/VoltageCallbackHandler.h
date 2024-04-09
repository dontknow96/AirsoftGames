#pragma once

#include <data.h>
#include "helper.h"

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include <string>
#include "Arduino.h"

class VoltageCallbackHandler: public BLECharacteristicCallbacks
{
private:
	Data* data;
public:
	virtual void onRead(BLECharacteristic* pCharacteristic);

    VoltageCallbackHandler(Data* data);
};
