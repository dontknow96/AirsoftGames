#include "VoltageCallbackHandler.h"

VoltageCallbackHandler::VoltageCallbackHandler(Data* data){
	this->data = data;
}

void VoltageCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[4];
	
	writeFloatToUint8Array(readData, &data->voltage);

	pCharacteristic->setValue(readData,2);
}