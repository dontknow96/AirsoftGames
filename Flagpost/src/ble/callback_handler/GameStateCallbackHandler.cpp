#include "GameStateCallbackHandler.h"

	// 0-7  leftTeamPoints
	// 8-15 rightTeamPoints
	// 16   heldByTeam
void GameStateCallbackHandler::onRead(BLECharacteristic* pCharacteristic){
	uint8_t readData[17];

	
	// 0-7  leftTeamPoints
	writeUint64ToUint8Array(readData+0, &data->leftTeamPoints);
	
	// 8-15 rightTeamPoints
	writeUint64ToUint8Array(readData+8, &data->rightTeamPoints);

	// 16   heldByTeam
	readData[15] = (u_int8_t)(data->heldByTeam);
	

	pCharacteristic->setValue(readData,17);
}

void GameStateCallbackHandler::onWrite(BLECharacteristic* pCharacteristic){
	uint8_t* values = pCharacteristic->getData();

	u_int64_t leftTeamPoints = 0;
	u_int64_t rightTeamPoints = 0;
	char heldByTeam = 0;


	// 0-7  leftTeamPoints
	writeUint8ArrayToUint64(&leftTeamPoints, values+0);

	// 8-15 rightTeamPoints
	writeUint8ArrayToUint64(&rightTeamPoints, values+0);

	// 16   heldByTeam
	heldByTeam = values[16];


	data->leftTeamPoints = leftTeamPoints;
	data->rightTeamPoints = rightTeamPoints;
	data->heldByTeam = heldByTeam;
}

GameStateCallbackHandler::GameStateCallbackHandler(Data* data, GameController* controller){
	this->data = data;
	this->controller = controller;
}