#include "SettingsCallbackHandler.h"

	// 0-1   batterymeasureInterval
	// 2-3   displaySetInterval
	// 4-11  unclaimTime
	// 12-19 claimTime
	// 20    teamNameLeft
	// 21  	 teamNameRight

void SettingsCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[22];

	
	// 0-1   batterymeasureInterval
	writeUint16ToUint8Array(readData+0, &data->batterymeasureInterval);

	// 2-3   displaySetInterval
	writeUint16ToUint8Array(readData+2, &data->displaySetInterval);

	// 4-11  unclaimTime
	writeUint64ToUint8Array(readData+4, &data->unclaimTime);

	// 12-19 claimTime
	writeUint64ToUint8Array(readData+12, &data->claimTime);

	// 20    teamNameLeft
	readData[20] = data->teamNameLeft;

	// 21  	 teamNameRight
	readData[21] = data->teamNameRight;
	

	pCharacteristic->setValue(readData,20);
}

void SettingsCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();

    u_int16_t batterymeasureInterval = 0;
    u_int16_t displaySetInterval = 0;
    u_int64_t unclaimTime = 0;
    u_int64_t claimTime = 0;
    char teamNameLeft = '\0';
    char teamNameRight = '\0';


	// 0-1   batterymeasureInterval
	writeUint8ArrayToUint16(&batterymeasureInterval, values+0);

	// 2-3   displaySetInterval
	writeUint8ArrayToUint16(&displaySetInterval, values+2);

	// 4-11  unclaimTime
	writeUint8ArrayToUint64(&unclaimTime, values+4);

	// 12-19 claimTime
	writeUint8ArrayToUint64(&unclaimTime, values+12);

	// 20    teamNameLeft
	teamNameLeft = values[20];

	// 21  	 teamNameRight
	teamNameRight = values[21];



	data->batterymeasureInterval = batterymeasureInterval;
	data->displaySetInterval = displaySetInterval;
	data->unclaimTime = unclaimTime;
	data->claimTime = claimTime;

	controller->renameTeam(data->teamNameLeft, teamNameLeft);
	controller->renameTeam(data->teamNameRight, teamNameRight);
}

SettingsCallbackHandler::SettingsCallbackHandler(Data* data, GameController* controller){
	this->data = data;
	this->controller = controller;
}