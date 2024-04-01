#include "VoltageCallbackHandler.h"

VoltageCallbackHandler::VoltageCallbackHandler(Data* data){
	this->data = data;
}

void VoltageCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[2];
	
	readData[0] = (uint8_t)this->data->voltage;
	readData[1] = (uint8_t)(this->data->voltage*100)%100;
	

	pCharacteristic->setValue(readData,2);
}

void VoltageCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
}