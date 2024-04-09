#include "DeviceSettingsCallbackHandler.h"

	// 0-1   batterymeasureInterval
	// 2-3   displaySetInterval
	// 4-5   bleAdvertisementInterval

void DeviceSettingsCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[6];

	
	// 0-1   batterymeasureInterval
	writeUint16ToUint8Array(readData+0, &data->batterymeasureInterval);

	// 2-3   displaySetInterval
	writeUint16ToUint8Array(readData+2, &data->displaySetInterval);

	// 4-5   bleAdvertisementInterval
	writeUint16ToUint8Array(readData+4, &data->bleAdvertisementInterval);
	

	pCharacteristic->setValue(readData,6);
}

void DeviceSettingsCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();

    u_int16_t batterymeasureInterval = 0;
    u_int16_t displaySetInterval = 0;
    u_int16_t bleAdvertisementInterval = 0;


	// 0-1   batterymeasureInterval
	writeUint8ArrayToUint16(&batterymeasureInterval, values+0);

	// 2-3   displaySetInterval
	writeUint8ArrayToUint16(&displaySetInterval, values+2);

	// 4-5   displaySetInterval
	writeUint8ArrayToUint16(&bleAdvertisementInterval, values+4);



	data->batterymeasureInterval = batterymeasureInterval;
	data->displaySetInterval = displaySetInterval;
	data->bleAdvertisementInterval = bleAdvertisementInterval;
}

DeviceSettingsCallbackHandler::DeviceSettingsCallbackHandler(Data* data){
	this->data = data;
}