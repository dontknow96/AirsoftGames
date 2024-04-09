#include "GameSettingsCallbackHandler.h"

	// 0-7  unclaimTime
	// 8-15 claimTime
	// 16    teamNameLeft
	// 17  	 teamNameRight

void GameSettingsCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[8];

	// 0-7  unclaimTime
	writeUint64ToUint8Array(readData+0, &data->unclaimTime);

	// 8-15 claimTime
	writeUint64ToUint8Array(readData+8, &data->claimTime);

	// 16    teamNameLeft
	readData[16] = data->teamNameLeft;

	// 17  	 teamNameRight
	readData[17] = data->teamNameRight;
	

	pCharacteristic->setValue(readData,20);
}

void GameSettingsCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();

    u_int64_t unclaimTime = 0;
    u_int64_t claimTime = 0;
    char teamNameLeft = '\0';
    char teamNameRight = '\0';

	// 0-7  unclaimTime
	writeUint8ArrayToUint64(&unclaimTime, values+0);

	// 8-15 claimTime
	writeUint8ArrayToUint64(&unclaimTime, values+8);

	// 16    teamNameLeft
	teamNameLeft = values[16];

	// 17  	 teamNameRight
	teamNameRight = values[17];


	data->unclaimTime = unclaimTime;
	data->claimTime = claimTime;

	controller->renameTeam(data->teamNameLeft, teamNameLeft);
	controller->renameTeam(data->teamNameRight, teamNameRight);
}

GameSettingsCallbackHandler::GameSettingsCallbackHandler(Data* data, GameController* controller){
	this->data = data;
	this->controller = controller;
}